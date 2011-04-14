using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Catalog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateAvailableBooks();
        }
    }

    private void PopulateAvailableBooks()
    {
        try
        {
            string sql = string.Format("select * from [book];");
        }
        catch (Exception)
        {
        }
    }
}