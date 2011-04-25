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
        label_Time.Text = "Right Now is : " + System.DateTime.Now.ToShortTimeString();
        if(Application["counter"] != null)
        {
            counterLabel.Text = "You are Visitor Number : "+ Application["counter"].ToString();
        }
    }
}