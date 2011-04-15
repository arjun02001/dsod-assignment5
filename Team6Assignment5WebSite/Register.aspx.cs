using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DSODAssignment5ClassLibrary;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    string email = string.Empty, password = string.Empty, confirmpassword = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        errorLabel.Text = string.Empty;
    }

    public void registerButton_Click(object sender, EventArgs e)
    {
        try
        {
            email = emailTextBox.Text.Trim();
            password = passwordTextBox.Text.Trim();
            confirmpassword = confirmPasswordTextBox.Text.Trim();
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmpassword))
            {
                errorLabel.Text = "Please enter all fields";
                return;
            }
            if (!ValidateEmail.Validate(email))
            {
                errorLabel.Text = "Email not valid";
                return;
            }
            if (password.Length < 6)
            {
                errorLabel.Text = "Password too short";
                return;
            }
            if (!password.Equals(confirmpassword))
            {
                errorLabel.Text = "Password and confirm password do not match";
                return;
            }
            XMLService xmlservice = new XMLService();
            string hashedpassword = xmlservice.GetPassword(email);
            if (!string.IsNullOrEmpty(hashedpassword))
            {
                errorLabel.Text = "Email already exists. Please choose a different email";
                return;
            }
            UtilityService utilityservice = new UtilityService();
            hashedpassword = utilityservice.EncryptString(password, email);
            if (!xmlservice.AddUser(email, hashedpassword))
            {
                errorLabel.Text = "An internal error occured, please try again";
                return;
            }
        }
        catch (Exception)
        {
        }
        Server.Transfer("Login.aspx", false);
    }
}