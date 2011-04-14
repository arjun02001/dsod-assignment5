using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Checkout : System.Web.UI.Page
{
    List<Book> books = new List<Book>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["BooksInCart"] != null)
            {
                books = (List<Book>)Session["BooksInCart"];
                foreach (Book b in books)
                {
                    yourCartListBox.Items.Add(new ListItem(b.title + " | " + b.isbn + " | " + b.price));
                }
            }
        }
    }
}