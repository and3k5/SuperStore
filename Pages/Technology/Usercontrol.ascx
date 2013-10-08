<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Usercontrol.ascx.cs" Inherits="Pages_Technology_Usercontrol" %>

<asp:table id="OuterTable" BackColor=#c0c0c0c BorderWidth=0 cellPadding=0 
           cellSpacing=1 width='100%' Runat="server">
<asp:tableRow><asp:tableCell width="100%">

<asp:table id="InnerTable" BackColor=#cccccc BorderWidth=0 cellPadding=0 
           cellSpacing=1 width="100%" Runat="server">
<asp:tableRow><asp:tablecell HorizontalAlign=Center>

<asp:Label ID="TitleLabel" Runat="server" />

</asp:tablecell></asp:tableRow>
</asp:table>

</asp:tablecell></asp:tableRow>
</asp:table>