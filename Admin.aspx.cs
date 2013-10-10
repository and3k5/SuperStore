using System;
using System.Collections.Generic;
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
}