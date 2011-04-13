using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Net;
using Assignment3Service;
using System.Text.RegularExpressions;
using System.Net.Mail;

/// <summary>
/// Summary description for UtilityService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class UtilityService : System.Web.Services.WebService {

    public UtilityService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod(Description = "Returns the country to which the ip address belongs")]
    public string GetCountryFromIP(string ipaddress)
    {
        try
        {
            Assignment3Service.WebService service = new Assignment3Service.WebService();
            string country = service.GetCountryFromIP(ipaddress);
            if (country.ToLower().Contains("error") || country.ToLower().Contains("invalid"))
            {
                return string.Empty;
            }
            return country;
        }
        catch (Exception)
        {
            return string.Empty;
        }
    }

    [WebMethod(Description = "Returns the city and state corresponding to a given zip")]
    public string GetInfoByZip(string zip)
    {
        try
        {
            Assignment3Service.WebService service = new Assignment3Service.WebService();
            string citystate = service.GetInfoByZip(zip);
            if (citystate.ToLower().Contains("error"))
            {
                return string.Empty;
            }
            return citystate;
        }
        catch (Exception)
        {
            return string.Empty;
        }
    }

    [WebMethod(Description = "Encrypts the message using the passphrase")]
    public string EncryptString(string message, string passphrase)
    {
        try
        {
            Assignment3Service.WebService service = new Assignment3Service.WebService();
            string password = service.EncryptString(message, passphrase);
            if (passphrase.ToLower().Contains("error"))
            {
                return string.Empty;
            }
            return password;
        }
        catch (Exception)
        {
            return string.Empty;
        }
    }

    [WebMethod(Description = "Decrypts the message using the passphrase")]
    public string DecryptString(string encryptedmessage, string passphrase)
    {
        try
        {
            Assignment3Service.WebService service = new Assignment3Service.WebService();
            string password = service.DecryptString(encryptedmessage, passphrase);
            if (password.ToLower().Contains("error"))
            {
                return string.Empty;
            }
            return password;
        }
        catch (Exception)
        {
            return string.Empty;
        }
    }

    [WebMethod(Description = "Validates a credit card and returns the type of credit card")]
    public string ValidateCreditCardNumber(string cardnumber)
    {
        try
        {
            Assignment3Service.WebService service = new Assignment3Service.WebService();
            string status = service.ValidateCreditCardNumber(cardnumber);
            if (status.ToLower().Contains("invalid") || status.ToLower().Contains("unknown"))
            {
                return string.Empty;
            }
            return status;
        }
        catch (Exception)
        {
            return string.Empty;
        }
    }

    [WebMethod(Description = "Sends an email to the input email id from a default email id")]
    public string SendEmail(string email, string subject, string body)
    {
        try
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("replytoarjunmukherji@gmail.com");
            mail.To.Add(email);
            mail.Subject = subject;
            mail.Body = body;
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("replytoarjunmukherji@gmail.com", "anwashadhar");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);
            return "Success";
        }
        catch (Exception)
        {
            return "Failed";
        }
    }

    [WebMethod(Description = "Returns the current system time")]
    public string GetCurrentTime()
    {
        return String.Format("The current time is {0}.", DateTime.Now.ToString());
    }
}
