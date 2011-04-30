using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Footer : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            cpy.Text = "Copyright &copy; " + System.DateTime.Now.Year + ", AAR Inc. All Rights Reserved";
            XMLService service = new XMLService();
            int numusers = service.GetNumberOfUsers();
            if (numusers != -1)
            {
                totalUsersLabel.Text = "Total number of registered users: " + numusers;
            }
        }
        catch (Exception)
        {
        }
    }
}