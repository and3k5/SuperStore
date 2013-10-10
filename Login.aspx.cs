using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;


public partial class Login : System.Web.UI.Page
{
    private string strcon = WebConfigurationManager.ConnectionStrings["DatabaseSuperStoreConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    private static string genMd5(string input)
    {
        // MD5 part is copied from MSDN
        if (input == null)
        {
            input = "";
        }
        MD5 hasher = MD5.Create();
        byte[] data = hasher.ComputeHash(Encoding.Default.GetBytes(input));
        StringBuilder sBuilder = new StringBuilder();
        for (int i = 0; i < data.Length; i++)
        {
            sBuilder.Append(data[i].ToString("x2"));
        }
        return sBuilder.ToString();
    }
    private bool userlogin(string un, string pw)
    {
        string md5pw = genMd5(pw);
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand("SELECT UserName FROM Users WHERE UserName=@un AND UserPassword=@pw", con);
        cmd.Parameters.AddWithValue("@un",un);
        cmd.Parameters.AddWithValue("@pw", md5pw);
        con.Open();
        string result = Convert.ToString(cmd.ExecuteNonQuery());
        if (String.IsNullOrEmpty(result)) return false; return true;
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string un = Login1.UserName;
        string pw = Login1.Password;
        bool result = userlogin(un,pw);
        if (result)
        {
            e.Authenticated = true;
            Session["Username"] = un;
        }
        else 
        {
            e.Authenticated = false;
        }
    }
}