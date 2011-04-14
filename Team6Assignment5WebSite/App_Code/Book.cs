using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Book
/// </summary>
public class Book
{
    public string title { get; set; }
    public string isbn { get; set; }
    public string price { get; set; }

	public Book(string title, string isbn, string price)
	{
        this.title = title;
        this.isbn = isbn;
        this.price = price;
	}

    public Book()
    {
    }
}