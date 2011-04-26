using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DSODAssignment5ClassLibrary;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    string email = string.Empty, password = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        emailTextBox.Focus();
        errorLabel.Text = string.Empty;
        Session["email"] = null;
    }

    public void loginButton_Click(object sender, EventArgs e)
    {
        try
        {
            email = emailTextBox.Text.Trim();
            password = passwordTextBox.Text.Trim();
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                errorLabel.Text = "Please enter all fields";
                return;
            }
            if (!ValidateEmail.Validate(email))
            {
                errorLabel.Text = "Email not valid";
                return;
            }

            XMLService xmlservice = new XMLService();
            string hashedpassword = xmlservice.GetPassword(email);
            if (string.IsNullOrEmpty(hashedpassword))
            {
                errorLabel.Text = "No record found. Please register to continue";
                return;
            }
            UtilityService utilityservice = new UtilityService();
            if (!password.Equals(utilityservice.DecryptString(hashedpassword, email)))
            {
                errorLabel.Text = "Password does not match. Please try again";
                return;
            }

        }
        catch (Exception ex)
        {
            UtilityService utilityservice = new UtilityService();
            utilityservice.Log(ex.Message);
            return;
        }
        if (password.Equals("admin123") && email.Equals("admin123@asu.edu"))
        {
            Session["email"] = email;
            Response.Redirect("Admin.aspx", false);
        }
        else
        {
            Session["email"] = email;
            Response.Redirect("Catalog.aspx", false);
        }
    }
}