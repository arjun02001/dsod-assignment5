using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Catalog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Server.Transfer("Login.aspx", false);
        }
        if (!IsPostBack)
        {
            PopulateAvailableBooks();
        }
        errorLabel.Text = string.Empty;
    }

    private void PopulateAvailableBooks()
    {
        try
        {
            XMLService xmlservice = new XMLService();
            List<Book> books = xmlservice.GetBooks();
            foreach (Book book in books)
            {
                availableBooksListBox.Items.Add(new ListItem(book.title + " | " + book.isbn + " | " + book.price));
            }
            availableBooksListBox.SelectedIndex = 0;
        }
        catch (Exception)
        {
        }
    }

    protected void addToCartButton_Click(object sender, EventArgs e)
    {
        Book book = null;
        try
        {
            string[] bookparts = availableBooksListBox.SelectedItem.Text.Split('|');
            book = new Book(bookparts[0], bookparts[1], bookparts[2]);
            yourCartListBox.Items.Add(new ListItem(book.title + " | " + book.isbn + " | " + book.price, book.isbn));
            yourCartListBox.SelectedIndex = 0;
        }
        catch (Exception)
        {
        }
    }

    protected void removeFromCartButton_Click(object sender, EventArgs e)
    {
        try
        {
            if (yourCartListBox.Items.Count == 0)
            {
                return;
            }
            yourCartListBox.Items.RemoveAt(yourCartListBox.SelectedIndex);
            if (yourCartListBox.Items.Count > 0)
            {
                yourCartListBox.SelectedIndex = 0;
            }
        }
        catch (Exception)
        {
        }
    }

    protected void proceedToCheckoutButton_Click(object sender, EventArgs e)
    {
        List<Book> books = new List<Book>();
        try
        {
            if (yourCartListBox.Items.Count == 0)
            {
                errorLabel.Text = "No items to checkout";
                return;
            }
            foreach (ListItem li in yourCartListBox.Items)
            {
                string[] bookparts = li.Text.Split('|');
                books.Add(new Book(bookparts[0], bookparts[1], bookparts[2]));
            }
            Session["booksincart"] = books;
        }
        catch (Exception)
        {
        }
        Server.Transfer("Checkout.aspx", false);
    }
}