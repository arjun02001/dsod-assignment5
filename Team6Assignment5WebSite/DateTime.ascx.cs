using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DateTime : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Calendar.SelectedDate = System.DateTime.Now.Date;
        label_Time.Text = "Current time : " + System.DateTime.Now.ToShortTimeString();
        UtilityService service = new UtilityService();
        string count = service.GetVisitorCount();
        if (!string.IsNullOrEmpty(count))
        {
            counterLabel.Text = "You are Visitor Number : " + Application["counter"].ToString();
        }
        //if(Application["counter"] != null)
        //{
        //    counterLabel.Text = "You are Visitor Number : "+ Application["counter"].ToString();
        //}
    }
}