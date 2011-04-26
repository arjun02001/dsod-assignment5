using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThankYou : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("Login.aspx", false);
        }
        emailLabel.Text = Session["email"].ToString();

        string subject = "Purchase confirmation";
        string body = "Your purchase is on it's way";
        UtilityService utilityservice = new UtilityService();
        string status = utilityservice.SendEmail(Session["email"].ToString(), subject, body);
    }
}