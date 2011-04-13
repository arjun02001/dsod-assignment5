using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DSODAssignment5ClassLibrary;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("Login.aspx", false);
        }
        catch (Exception ex)
        {
        }
    }
}