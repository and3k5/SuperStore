<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SaleItemControl.ascx.cs" Inherits="SaleItemControl" ClassName="SaleItemControl" %>

<div class="saleItemControl_container" style="background-image:url(<%=image%>);">
    <div class="saleItemControl_upper"><%=vendor%> <%=product%></div>
    <div class="saleItemControl_space"></div>
    <div class="saleItemControl_lower">
        Mouse here for info<br /><br />
        <div class="saleItemControl_description"-->Description:<br /><%=description%><br /><br />Price: <%=price %> DKK</div>
    </div>
    
</div>