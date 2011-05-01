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
        Session.Clear();
        Session.Abandon();
        FormsAuthentication.SignOut();
        Response.Write("<SCRIPT LANGUAGE=javascript>");
        Response.Write("{");
        Response.Write(" var Backlen=history.length;");
        Response.Write(" history.go(-Backlen);");
        //Response.Write(" window.location.href='Default.aspx'; ");
        Response.Write("}");
        Response.Write("</SCRIPT>");
        //Response.Redirect("Default.aspx", false);
    }
}