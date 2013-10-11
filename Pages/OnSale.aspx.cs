using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using ASP;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    private string conStr = WebConfigurationManager.ConnectionStrings["DatabaseSuperStoreConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(conStr); 
        SqlCommand cmd = new SqlCommand("SELECT ProductID,Category,ProductVendor,ModelName,Description,Image,Price FROM SaleItems WHERE OnSaleShow = '1'", con);
        /*SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();

        con.Open();
        adp.Fill(ds, "SaleItems");
        */
        con.Open();
        if (con.State == ConnectionState.Open)
        {
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    SaleItemControl item = (SaleItemControl)LoadControl("~/SaleItemControl.ascx");
                    item.vendor = reader.GetString(2);
                    item.product = reader.GetString(3);
                    item.description = reader.GetString(4);
                    item.price = reader.GetDouble(6);
                    item.productid = reader.GetInt32(0);
                    if (!reader.IsDBNull(5)) item.image = String.Format("../img/{0}",reader.GetString(5));
                    tilesDiv.Controls.Add(item);
                }
            }
        }
        else
        {
            tilesDiv.InnerHtml = "SQL connection is not open...";
        }
        /*DropDownList1.DataSource = ds;
        DropDownList1.DataValueField = "ProductID";
        DropDownList1.DataTextField = "ModelName";
        DropDownList1.DataBind();*/
        con.Close();
    }
}