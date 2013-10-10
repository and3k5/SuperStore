<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SaleItemControl.ascx.cs" Inherits="SaleItemControl" ClassName="SaleItemControl" %>

<div class="saleItemControl_container" style="background-image:url(<%=image%>);">
    <div class="saleItemControl_upper"><%=vendor%> <%=product%></div>
    <div class="saleItemControl_space"></div>
    <div class="saleItemControl_lower">
        Mouse here for info<br /><br />
        <div class="saleItemControl_description">
            Description:<br />
            <%=description%>
            <br />
            <br />
            Price: <%=price %> DKK<br />
            <a href="#" onclick="
                $('#dialog<%=productid%>').dialog('open');
                return false;">See comments</a>
        </div>
    </div>
</div>
<div id="dialog<%=productid%>" style="overflow:hidden">
    <iframe id="dialogFrame<%=productid%>" class="sameItemControl_iframe" src="about:blank"></iframe>
</div>
<script type="text/javascript">
    $(function () {
        $('#dialog<%=productid%>').dialog({
            autoOpen: false,
            modal: true,
            height: 600,
            width: 600,
            show: {
                effect: "fade",
                duration: 500
            },
            hide: {
                effect: "fade",
                duration: 500
            },
            open: function (ev, ui) {
                $('#dialogFrame<%=productid%>').attr('src', '/SuperStore/Comments.aspx?pid=<%=productid %>');
            }
        });
    });
</script>
