using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMessage.Visible = false;
    }
    protected void btnClick_AddBookToCatalog(object sender, EventArgs e)
    {
        try
        {
            Book userBook = new Book(txtAddBookTitle.Text, txtAddBookISBN.Text, txtAddBookPrice.Text);
            XMLService addNewBook = new XMLService();
            if (!addNewBook.addBooksToCatalog(userBook))
            {
                //error happned
                lblErrorMessage.Text = "An internal error occured. Please try again";
                lblErrorMessage.Visible = true;
                return;
            }
            ListOfNewBooks.Items.Add(new ListItem(userBook.title));
        }
        catch (Exception)
        {

        }
    }

    protected void btnClick_ViewBookDetails(object sender, EventArgs e)
    {
        try
        {
           
        }
        catch (Exception)
        {
        }
    }
}