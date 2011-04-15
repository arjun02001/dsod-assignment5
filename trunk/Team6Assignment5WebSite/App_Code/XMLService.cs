using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Xml;

/// <summary>
/// Summary description for XMLService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class XMLService : System.Web.Services.WebService {

    public XMLService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string GetPassword(string email) 
    {
        try
        {
            string path = Server.MapPath("App_Data/User.xml");
            XmlTextReader reader = new XmlTextReader(path);
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
        }
        return string.Empty;
    }
    
}
