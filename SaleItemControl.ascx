<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SaleItemControl.ascx.cs" Inherits="SaleItemControl" ClassName="SaleItemControl" %>
<style>
    .saleItemControl_container {
        border:2px solid black;
        border-radius:5px;
        width:200px;
        min-height:200px;
        background-size: 200px auto;
        background-repeat:no-repeat;
        font-size:12px;
    }
    .saleItemControl_image {
        width:200px;
    }
    .saleItemControl_upper {
        padding-top:7px;
        padding-bottom:3px;
        padding-left:5px;
        padding-right:5px;
        width:190px;
        height:25px;
        background-color:rgba(255,255,255,0.75);
        border-radius:5px;
    }
    .saleItemControl_space {
        height:130px;
        width:100%;
    }
    .saleItemControl_lower {
        padding:5px;
        width:190px;
        height:25px;
        background-color:rgba(255,255,255,0.75);
        border-radius:5px;
        transition:height 0.5s;
        transition-timing-function:ease-in-out;
    }
    .saleItemControl_lower:hover {
        height:175px;
    }
    .saleItemControl_description {
        pointer-events:none;
        opacity:0;
        height:0px;
        transition:height 0.25s ease-in-out, opacity 0.5s ease-in-out;
    }
    .saleItemControl_lower:hover .saleItemControl_description {
        opacity:1;
        height:150px;
    }
</style>

<div class="saleItemControl_container" style="background-image:url(<%=image%>);">
    <div class="saleItemControl_upper"><%=vendor%> <%=product%></div>
    <div class="saleItemControl_space"></div>
    <div class="saleItemControl_lower">
        Mouse here for info<br /><br />
        <div class="saleItemControl_description"-->Description:<br /><%=description%><br /><br />Price: <%=price %> DKK</div>
    </div>
    
</div>