<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CommentItem.ascx.cs" Inherits="CommentItem" className="CommentItem" %>
<!--link href="StyleSheet.css" rel="stylesheet" /-->
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
<div class="commentItem_container">
    <table class="auto-style1">
        <tr>
            <td width="75px">Name:</td>
            <td><%=name%></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><%=title %></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><%=comment %></td>
        </tr>
        <tr>
            <td>Rating:</td>
            <td><%=rating %></td>
        </tr>
    </table>

</div>