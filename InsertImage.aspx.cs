using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Configuration;

public partial class InsertImage : System.Web.UI.Page
{
    private SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DatabaseSuperStoreConnectionString1"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT ProductID FROM SaleItems", con);
            con.Open();
            if (con.State == ConnectionState.Open)
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    ListBox1.Items.Clear();
                    while (reader.Read())
                    {
                        ListItem item = new ListItem(reader.GetInt32(0).ToString(), reader.GetInt32(0).ToString());
                        ListBox1.Items.Add(item);
                    }
                }
            }
            con.Close();
        }
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DatabaseSuperStoreConnectionString1"].ConnectionString);

        String query = String.Format("SELECT Image FROM SaleItems WHERE ProductID = '{0}'", ListBox1.SelectedValue);
        Label1.Text = query;
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        if (con.State == ConnectionState.Open)
        {
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    if (!reader.IsDBNull(0))
                    {
                        Image1.ImageUrl = String.Format("img/{0}", reader.GetString(0));
                    }
                    else
                    {
                        Image1.ImageUrl = String.Empty;
                    }
                }
            }
        }
        con.Close();
    }
}