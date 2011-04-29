using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DSODAssignment5ClassLibrary;
using System.Data;

public partial class ForgotPassword : System.Web.UI.Page
{
    string email = string.Empty;
    string password = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        emailTextBox.Focus();
        errorLabel.Text = string.Empty;
    }

    public void forgotPassword_Click(object sender, EventArgs e)
    {
        email = emailTextBox.Text.Trim();
        if (string.IsNullOrEmpty(email))
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
            errorLabel.Text = "Email does not exist. Please enter the correct email address";
            return;
        }
        UtilityService utilityservice = new UtilityService();
        password = utilityservice.DecryptString(hashedpassword, email);
        if (string.IsNullOrEmpty(password))
        {
            errorLabel.Text = "An internal error occured, please try again";
            return;
        }

        string subject = "Password Credentials";
        string body = "Your password is: "+password.ToString();
        //UtilityService utilityservice = new UtilityService();
        string status = utilityservice.SendEmail(email.ToString(), subject, body);
        Response.Redirect("Login.aspx", false);
    }
}