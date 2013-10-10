using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UploadImage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUploadSubmit_Click(object sender, EventArgs e)
    {
        HttpPostedFile file = Request.Files["inputfile"];
        //check file was submitted
        if (file != null && file.ContentLength > 0)
        {
            if (file.ContentType.ToUpper().Contains("IMAGE"))
            {
                string fname = Path.GetFileName(file.FileName);
                file.SaveAs(Server.MapPath(Path.Combine("~/img/", fname)));
                Button btn = (Button)sender;
               // btn.Attributes.Add("onclick", "closeDialog()");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Call my function", "closeDialog()", true);
            }
            else
            {
                Label2.Text = "Not an image!";
            }
        }
    }
}