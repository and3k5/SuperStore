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


public partial class Comments : System.Web.UI.Page
{
    private string conStr = WebConfigurationManager.ConnectionStrings["DatabaseSuperStoreConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        String pid=Request.QueryString["pid"];
        int pid_int;
        if (int.TryParse(pid,out pid_int))
        {
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(String.Format("SELECT Name,Email,Title,Comment,Rating FROM ItemComments WHERE FProductID = {0}", pid_int), con);
            con.Open();

            if (con.State == ConnectionState.Open)
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        CommentItem item = (CommentItem)LoadControl("~/CommentItem.ascx");
                        item.name = reader.GetString(0);
                        item.title = reader.GetString(2);
                        item.comment = reader.GetString(3);
                        item.rating = reader.GetInt32(4);

                        commentsDiv.Controls.Add(item);
                    }
                }
            }
            else
            {
                commentsDiv.InnerHtml = "SQL connection is not open...";
            }
            con.Close();
        }
    }
}