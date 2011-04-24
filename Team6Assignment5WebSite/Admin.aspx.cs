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
        lblBookISBN.Visible = false;
        lblBookName.Visible = false;
        lblBookPrice.Visible = false;

        //list to fetch all books
        List<String> allBooks = new List<String>();
        XMLService populateList = new XMLService();
        allBooks = populateList.GetBookNames();
        ListOfNewBooks.DataSource = allBooks;
        ListOfNewBooks.DataBind();
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
            List<string> bookDetails = new List<string>();
            string selectedBook = ListOfNewBooks.SelectedValue;
            XMLService getBookDetails = new XMLService();
            bookDetails = getBookDetails.GetBookDetails(selectedBook);
            lblBookName.Text = "Book Name : "+ selectedBook;
            lblBookISBN.Text = "Book ISBN : " + bookDetails[0];
            lblBookPrice.Text = "Book Price : " +bookDetails[1];
            lblBookName.Visible = true;
            lblBookPrice.Visible = true;
            lblBookISBN.Visible = true;
           
        }
        catch (Exception)
        {
            lblErrorMessage.Text = "An Internal Error has occured. Please try again";
        }
    }
}