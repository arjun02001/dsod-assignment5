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

            string sql = string.Format("select * from [user] where email = '{0}'", email);
            DBService dbservice = new DBService();
            DataTable dt = dbservice.GetData(sql);
            if (dt.Rows.Count == 0)
            {
                errorLabel.Text = "No record found. Please register to continue";
                return;
            }
            string hashedpassword = dt.Rows[0][1].ToString();
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
            Server.Transfer("Admin.aspx", false);
        }
        else
        {
            Session["email"] = email;
            Server.Transfer("Catalog.aspx", false);
        }
    }
}