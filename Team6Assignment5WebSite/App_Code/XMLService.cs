﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Xml;
using System.IO;

/// <summary>
/// Summary description for XMLService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class XMLService : System.Web.Services.WebService
{

    public XMLService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string GetPassword(string email)
    {
        XmlTextReader reader = null;
        try
        {
            string path = Server.MapPath("App_Data/User.xml");
            reader = new XmlTextReader(path);
            reader.WhitespaceHandling = WhitespaceHandling.None;
            while (reader.Read())
            {
                if (reader["email"] == email)
                {
                    return reader["password"];
                }
            }
        }
        catch (Exception)
        {
            return string.Empty;
        }
        finally
        {
            reader.Close();
        }
        return string.Empty;
    }

    [WebMethod]
    public bool AddUser(string email, string password)
    {
        try
        {
            string path = Server.MapPath("App_Data/User.xml");
            XmlDocument source = new XmlDocument();
            source.Load(path);
            XmlElement node = source.CreateElement("user");
            node.SetAttribute("email", email);
            node.SetAttribute("password", password);
            source.DocumentElement.AppendChild(node);
            source.Save(path);
        }
        catch (Exception ex)
        {
            UtilityService utilityservice = new UtilityService();
            utilityservice.Log(ex.Message);
            return false;
        }
        return true;
    }

    [WebMethod]
    public List<Book> GetBooks()
    {
        List<Book> books = new List<Book>();
        Book book = null;
        XmlTextReader reader = null;
        try
        {
            string path = Server.MapPath("App_Data/Book.xml");
            reader = new XmlTextReader(path);
            reader.WhitespaceHandling = WhitespaceHandling.None;
            while (reader.Read())
            {
                if (reader.AttributeCount == 3)
                {
                    book = new Book(reader["title"], reader["isbn"], "$" + reader["price"]);
                    books.Add(book);
                }
            }
        }
        catch (Exception)
        {
            return null;
        }
        finally
        {
            reader.Close();
        }
        return books;
    }

    [WebMethod]
    public int GetNumberOfUsers()
    {
        int returnCount = 0;
        XmlTextReader reader = null;
        try
        {
            string path = Server.MapPath("App_Data/User.xml");
            reader = new XmlTextReader(path);
            reader.WhitespaceHandling = WhitespaceHandling.None;
            while (reader.Read())
            {
                if (reader.HasAttributes)
                {
                    returnCount++;
                }
            }
        }
        catch (Exception)
        {
            return -1;
        }
        finally
        {
            reader.Close();
        }
        return (returnCount - 1);
    }
    [WebMethod]
    public bool addBooksToCatalog(Book userBook)
    {
        try
        {

            string path = Server.MapPath("App_Data/Book.xml");
            XmlDocument bookXML = new XmlDocument();
            bookXML.Load(path);
            XmlElement newBook = bookXML.CreateElement("book");
            newBook.SetAttribute("title", userBook.title);
            newBook.SetAttribute("isbn", userBook.isbn);
            newBook.SetAttribute("price", userBook.price);
            bookXML.DocumentElement.AppendChild(newBook);
            bookXML.Save(path);

            
        }
        catch(Exception ex)
        {
             UtilityService utilityservice = new UtilityService();
            utilityservice.Log(ex.Message);
            return false;
        }

        return true;

    }
    [WebMethod]
    public List<string> GetBookDetails(string bookName)
    {
        XmlTextReader readingBook = null;
        List<string> isbnAndPrice = new List<string>();
        //String element;
        try
        {
            string path = Server.MapPath("App_Data/Book.xml");
            readingBook = new XmlTextReader(path);
            readingBook.WhitespaceHandling = WhitespaceHandling.None;
            while (readingBook.Read())
            {
                if (readingBook["title"] == bookName)
                {
                     isbnAndPrice.Add(readingBook["isbn"]);
                     isbnAndPrice.Add(readingBook["price"]);
                }
            }
        }
        catch (Exception)
        {
            return null;
        }

        finally
        {
            readingBook.Close();
        }
        return isbnAndPrice;
    }
    public List<String> GetBookNames()
    {
        List<String> books = new List<String>();
        String book = null;
        XmlTextReader reader = null;
        try
        {
            string path = Server.MapPath("App_Data/Book.xml");
            reader = new XmlTextReader(path);
            reader.WhitespaceHandling = WhitespaceHandling.None;
            while (reader.Read())
            {
                if (reader.AttributeCount == 3)
                {
                    book = reader["title"];
                    books.Add(book);
                }
            }
        }
        catch (Exception)
        {
            return null;
        }
        finally
        {
            reader.Close();
        }
        return books;
    }
}
