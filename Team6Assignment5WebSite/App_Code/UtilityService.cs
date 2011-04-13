using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Net;
using Assignment3Service;

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
}
