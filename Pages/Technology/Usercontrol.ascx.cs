using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Pages_Technology_Usercontrol : System.Web.UI.UserControl
{
    public string Title = null;
    public string TextColor = Color.Black.Name;
    public string BackColor = Color.Wheat.Name;
    public int Padding = 2;
    public string BorderColor = Color.Gray.Name;
    public int BorderWidth = 1;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Title == null || Title == "")
            Visible = false;
        else
        {

            OuterTable.BackColor   = Color.FromName(BorderColor);
            OuterTable.CellSpacing = BorderWidth;
            InnerTable.CellPadding = Padding;
            InnerTable.BackColor   = Color.FromName(BackColor);
                
            TitleLabel.Text        = Title;
            TitleLabel.ForeColor = Color.FromName(TextColor);
            TitleLabel.Font.Name = "Verdana";
            TitleLabel.Font.Bold = true;
            TitleLabel.Font.Size = FontUnit.Parse("13");
        }
    }
}