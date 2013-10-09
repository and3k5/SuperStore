using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// usage for this
// <%@ Register TagPrefix="ss" TagName="saleItem" Src="~/SaleItemControl.ascx" %>
// <ss:saleItem runat="server" image="data"></ss:saleItem>

public partial class SaleItemControl : System.Web.UI.UserControl
{
    public string image = "";
    public string vendor = "Google";
    public string product = "Glasses";
    public string description = "Lorem Ipsum blablablablablablablabla lang text hej hej hej 1234";
    public double price = 3333.33;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}