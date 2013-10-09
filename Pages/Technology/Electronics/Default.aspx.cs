using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    private string conStr = WebConfigurationManager.ConnectionStrings["DatabaseSuperStoreConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(conStr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM SaleItems WHERE OnSaleShow = '0'", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();

    }
}