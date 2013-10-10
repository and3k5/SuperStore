<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="xmlsite.aspx.cs" Inherits="Pages_xmlsite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Xml ID="Xml1" runat="server" DocumentSource="~/book.xml" TransformSource="~/XSLTFile.xslt"></asp:Xml>
</asp:Content>

