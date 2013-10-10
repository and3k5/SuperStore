<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ComposeComment.aspx.cs" Inherits="ComposeComment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" runat="server" id="submitTable">
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="NameBox" runat="server" Width="202px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="EmailBox" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Title</td>
                <td>
                    <asp:TextBox ID="TitleBox" runat="server" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Comment</td>
                <td>
                    <asp:TextBox ID="CommentBox" runat="server" Height="121px" TextMode="MultiLine" Width="279px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Rating</td>
                <td>
                    <asp:RadioButtonList ID="RatingList" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:RadioButtonList>
&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Post" Width="276px" />
                </td>
            </tr>
        </table>
        <div runat="server" id="resultMessage" visible="false">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    
    </div>
    </form>
</body>
</html>
