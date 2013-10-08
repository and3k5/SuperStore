<%@ Page Title="Privacy" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Privacy.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 102px;
        }
        .auto-style3 {
            width: 102px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 228px;
        }
        .auto-style6 {
            height: 23px;
            width: 228px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True" Width="208px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="error" ForeColor="#9900CC">No Username</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="207px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="#9900CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Not a valid email</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="#9900CC">No Email</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="CPR-Number:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" Width="207px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="#9900CC" ValidationExpression="\b[0-9]{6}-[0-9]{4}">Not valid Cpr-Number</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="#9900CC">No Cpr-Number given</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Text="Validate" />
            </td>
        </tr>
    </table>

</asp:Content>

