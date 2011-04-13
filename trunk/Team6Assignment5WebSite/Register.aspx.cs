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
            if(string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmpassword))
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

            string sql = string.Format("select * from [user] where email = '{0}'", email);
            DBService dbservice = new DBService();
            DataTable dt = dbservice.GetData(sql);
            if (dt.Rows.Count > 0)
            {
                errorLabel.Text = "Email already exists. Please choose a different email";
                return;
            }

            UtilityService utilityservice = new UtilityService();
            string hashedPassword = utilityservice.EncryptString(password, email);
            sql = string.Format("insert into [user] values ('{0}', '{1}')", email, hashedPassword);
            dbservice.SetData(sql);

        }
        catch (Exception)
        {
        }
        Server.Transfer("Login.aspx", false);
    }
}