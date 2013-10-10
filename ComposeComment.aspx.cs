using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class ComposeComment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // nam
        String pid=Request.QueryString["pid"];
        int pid_int;
        if (int.TryParse(pid, out pid_int))
        {
            string conStr = WebConfigurationManager.ConnectionStrings["DatabaseSuperStoreConnectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("INSERT INTO ItemComments (Name,Email,Title,Comment,Rating,FProductID) VALUES (@Name,@Email,@Title,@Comment,@Rating,@FProductID)", con);
            cmd.Parameters.AddWithValue("@Name", NameBox.Text);
            cmd.Parameters.AddWithValue("@Email", EmailBox.Text);
            cmd.Parameters.AddWithValue("@Title", TitleBox.Text);
            cmd.Parameters.AddWithValue("@Comment", CommentBox.Text);
            cmd.Parameters.AddWithValue("@Rating", System.Convert.ToInt32(RatingList.SelectedValue));
            cmd.Parameters.AddWithValue("@FProductID", pid_int);

            con.Open();
            if (con.State == ConnectionState.Open)
            {
                int result = cmd.ExecuteNonQuery();
                if (result == 1)
                {
                    submitTable.Visible = false;
                    resultMessage.Visible = true;
                    Label1.Text = "Comment posted successfully";
                    Label1.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    submitTable.Visible = false;
                    resultMessage.Visible = true;
                    Label1.Text = "There was an error posting the comment";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                submitTable.Visible = false;
                resultMessage.Visible = true;
                Label1.Text = "There was an error posting the comment";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            /*DropDownList1.DataSource = ds;
            DropDownList1.DataValueField = "ProductID";
            DropDownList1.DataTextField = "ModelName";
            DropDownList1.DataBind();*/
            con.Close();
        }
        else
        {
            submitTable.Visible = false;
            resultMessage.Visible = true;
            Label1.Text = "There was an error posting the comment";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
}