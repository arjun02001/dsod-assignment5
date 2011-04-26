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
        try
        {
            clear();
            if (!IsPostBack)
            {
                //list to fetch all books
                populateBooks();
            }
        }
        catch (Exception)
        {
        }
    }
    private void clear()
    {
        lblErrorMessage.Visible = false;
        lblBookISBN.Visible = false;
        lblBookName.Visible = false;
        lblBookPrice.Visible = false;
    }

    private void clearAll()
    {
        clear();
        txtAddBookISBN.Text = string.Empty;
        txtAddBookPrice.Text = string.Empty;
        txtAddBookTitle.Text = string.Empty;
    }

    private void populateBooks()
    {
        try
        {
            List<String> allBooks = new List<String>();
            XMLService populateList = new XMLService();
            allBooks = populateList.GetBookNames();
            ListOfNewBooks.DataSource = allBooks;
            ListOfNewBooks.DataBind();
        }
        catch (Exception)
        {
        }
    }
    protected void btnClick_AddBookToCatalog(object sender, EventArgs e)
    {
        //duplicate check
        try
        {
            if (txtAddBookTitle.Text == "" || txtAddBookISBN.Text == "" || txtAddBookPrice.Text == "")
            {
                //either of the text box is empty
                lblErrorMessage.Text = "Empty values not accepted. Please enter values in textbox";
            }
            else
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
            lblErrorMessage.Text = "Book added to catalog Successfully";
            lblErrorMessage.Visible = true;
            //clear
            clearAll();
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