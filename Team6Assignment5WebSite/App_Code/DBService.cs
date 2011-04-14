using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.OleDb;
using System.IO;

/// <summary>
/// Summary description for DBService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class DBService : System.Web.Services.WebService {
    public DBService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod (Description = "Takes sql query and returns a data table containing the results")]
    public DataTable GetData(string sql)
    {
        //string path = Server.MapPath("App_Data/dsod-assignment5.accdb");
        string path = "\\\\webstrar.fulton.asu.edu\\website6\\page0\\page01\\dsod-assignment5.accdb";
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";");
        con.Open();
        OleDbDataAdapter da = new OleDbDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        con.Dispose();
        da.Dispose();
        return dt;
    }
    
    [WebMethod (Description = "Takes sql query and sets data")]
    public void SetData(string sql)
    {
        //string path = Server.MapPath("App_Data/dsod-assignment5.accdb");
        string path = "\\\\webstrar.fulton.asu.edu\\website6\\page0\\page01\\dsod-assignment5.accdb";
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";");
        con.Open();
        OleDbCommand command = new OleDbCommand(sql, con);
        command.ExecuteNonQuery();
        command.Dispose();
        con.Close();
        con.Dispose();
    }
}
