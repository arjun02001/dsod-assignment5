using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DSODAssignment5ClassLibrary;

public partial class Checkout : System.Web.UI.Page
{
    List<Book> books = new List<Book>();
    decimal totalamount;
    protected void Page_Load(object sender, EventArgs e)
    {
        errorLabel.Text = string.Empty;
        if (Session["email"] == null)
        {
            Response.Redirect("Login.aspx", false);
        }
        try
        {
            if (!IsPostBack)
            {
                if (Session["booksincart"] != null)
                {
                    books = (List<Book>)Session["booksincart"];
                    foreach (Book b in books)
                    {
                        yourCartListBox.Items.Add(new ListItem(b.title + " | " + b.isbn + " | " + b.price));
                        totalamount += Convert.ToDecimal(b.price.Split('$')[1]);
                    }
                    totalAmountTextBox.Text = totalamount.ToString();
                }
            }
        }
        catch (Exception ex)
        {
            UtilityService service = new UtilityService();
            service.Log(ex.Message);
        }
    }

    protected void creditCardTextBox_TextChanged(object sender, EventArgs e)
    {
        try
        {
            UtilityService utilityservice = new UtilityService();
            string status = utilityservice.ValidateCreditCardNumber(creditCardTextBox.Text.Trim());
            if (string.IsNullOrEmpty(status))
            {
                errorLabel.Text = "Invalid credit card number";
                return;
            }
        }
        catch (Exception ex)
        {
            UtilityService service = new UtilityService();
            service.Log(ex.Message);
        }
    }

    protected void zipTextBox_TextChanged(object sender, EventArgs e)
    {
        try
        {
            UtilityService utilityservice = new UtilityService();
            string status = utilityservice.GetInfoByZip(zipTextBox.Text.Trim());
            if (string.IsNullOrEmpty(status))
            {
                errorLabel.Text = "Invalid zip";
                return;
            }
            cityTextBox.Text = status.Split(',')[0];
            stateTextBox.Text = status.Split(',')[1];
        }
        catch (Exception ex)
        {
            UtilityService service = new UtilityService();
            service.Log(ex.Message);
        }
    }

    protected void confirmButton_Click(object sender, EventArgs e)
    {
        try
        {
            if (string.IsNullOrEmpty(nameTextBox.Text) || string.IsNullOrEmpty(creditCardTextBox.Text) || string.IsNullOrEmpty(expiryDateTextBox.Text) || 
                string.IsNullOrEmpty(zipTextBox.Text) || string.IsNullOrEmpty(cityTextBox.Text) || string.IsNullOrEmpty(stateTextBox.Text) || string.IsNullOrEmpty(phoneTextBox.Text))
            {
                errorLabel.Text = "Please enter all fields";
                return;
            }
            if (!ValidatePhone.Validate(phoneTextBox.Text))
            {
                errorLabel.Text = "Invalid phone";
                return;
            }
            UtilityService utilityservice = new UtilityService();
            if (string.IsNullOrEmpty(utilityservice.ValidateCreditCardNumber(creditCardTextBox.Text)))
            {
                errorLabel.Text = "Invalid credit card number";
                return;
            }
            if (!ValidateZip.Validate(zipTextBox.Text))
            {
                errorLabel.Text = "Invalid zip";
                return;
            }
            if (string.IsNullOrEmpty(utilityservice.GetInfoByZip(zipTextBox.Text)))
            {
                errorLabel.Text = "Invalid zip";
                return;
            }
            try
            {
                System.DateTime dt = Convert.ToDateTime(expiryDateTextBox.Text.Trim());
                if (dt <= System.DateTime.Now)
                {
                    errorLabel.Text = "Invalid date";
                    return;
                }
            }
            catch (Exception)
            {
                errorLabel.Text = "Invalid date";
                return;
            }
            Response.Redirect("ThankYou.aspx", false);
        }
        catch (Exception ex)
        {
            UtilityService service = new UtilityService();
            service.Log(ex.Message);
        }
    }
}