<%@ Page Title="Computers" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<%@ Register TagPrefix="CP" TagName="TitleBar" Src="~/Pages/Technology/Usercontrol.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<CP:TitleBar Title="Computers" TextColor="red" Padding="10" runat="server" />

</asp:Content>

