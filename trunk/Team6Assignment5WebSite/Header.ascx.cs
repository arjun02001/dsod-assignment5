using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Header : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["email"] != null)
            {
                emailLabel.Text = Session["email"].ToString();
            }
        }
        catch (Exception)
        {
        }
    }

    public void logoutButton_Click(object sender, EventArgs e)
    {
        try
        {
            Session.Abandon();
            FormsAuthentication.SignOut();
            Response.Redirect("./");
        }
        catch (Exception)
        {
        }
    }
}