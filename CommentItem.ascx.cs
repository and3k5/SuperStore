using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CommentItem : System.Web.UI.UserControl
{
    public string name = "";
    public string comment = "";
    public int rating = -1;
    public string title = "";
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}