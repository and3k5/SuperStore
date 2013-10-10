using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Usergrid.Visible = false;
        //UserD.Visible = false;
        //Salegrid.Visible = false;
        //SaleD.Visible = false;
        //commentD.Visible = false;
        //Commentgrid.Visible = false;
        if (!IsPostBack)
        {
            
        }
    }
    protected void Userbtn_Click(object sender, EventArgs e)
    {
        Usergrid.Visible = true;
        UserD.Visible = true;
        Salegrid.Visible = false;
        SaleD.Visible = false;
        commentD.Visible = false;
        Commentgrid.Visible = false;
    }
    protected void Salebtn_Click(object sender, EventArgs e)
    {
        Usergrid.Visible = false;
        UserD.Visible = false;
        Salegrid.Visible = true;
        SaleD.Visible = true;
        commentD.Visible = false;
        Commentgrid.Visible = false;
    }
    protected void Commentbtn_Click(object sender, EventArgs e)
    {
        Usergrid.Visible = false;
        UserD.Visible = false;
        Salegrid.Visible = false;
        SaleD.Visible = false;
        commentD.Visible = true;
        Commentgrid.Visible = true;
    }
    private TextBox TextBox1;
    private DropDownList list;
    protected void dropdownImages_Load(object sender, EventArgs e)
    {
        list = (DropDownList)sender;
        list.Items.Clear();

        DirectoryInfo dir = new DirectoryInfo(Server.MapPath("~/img/"));
        FileInfo[] files = dir.GetFiles();
        list.Items.Add(new ListItem("None", ""));
        foreach (FileInfo file in files)
        {
            list.Items.Add(new ListItem(file.Name, file.Name));
        }
        list.Attributes.Add("onchange", "updateImageValueField()");
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        list.Items.Clear();

        DirectoryInfo dir = new DirectoryInfo(Server.MapPath("~/img/"));
        FileInfo[] files = dir.GetFiles();
        list.Items.Add(new ListItem("None", ""));
        foreach (FileInfo file in files)
        {
            list.Items.Add(new ListItem(file.Name, file.Name));
        }
    }
}