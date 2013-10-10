<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="xmlsite.aspx.cs" Inherits="Pages_xmlsite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Xml ID="Xml1" runat="server" DocumentSource="~/book.xml" TransformSource="~/XSLTFile.xslt"></asp:Xml>
    <br />
    Gridview<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
        </Columns>
    </asp:GridView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/xmlgridview.xml" TransformFile="~/XSLTFile2.xslt"></asp:XmlDataSource>
</asp:Content>

