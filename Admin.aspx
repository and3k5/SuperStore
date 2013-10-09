<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    admin page is here<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="ProductVendor" HeaderText="ProductVendor" SortExpression="ProductVendor" />
            <asp:BoundField DataField="ModelName" HeaderText="ModelName" SortExpression="ModelName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:CheckBoxField DataField="OnSaleShow" HeaderText="OnSaleShow" SortExpression="OnSaleShow" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseSuperStoreConnectionString1 %>" DeleteCommand="DELETE FROM [SaleItems] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [SaleItems] ([Category], [ProductVendor], [ModelName], [Description], [Image], [Price], [OnSaleShow]) VALUES (@Category, @ProductVendor, @ModelName, @Description, @Image, @Price, @OnSaleShow)" ProviderName="<%$ ConnectionStrings:DatabaseSuperStoreConnectionString1.ProviderName %>" SelectCommand="SELECT [ProductID], [Category], [ProductVendor], [ModelName], [Description], [Image], [Price], [OnSaleShow] FROM [SaleItems]" UpdateCommand="UPDATE [SaleItems] SET [Category] = @Category, [ProductVendor] = @ProductVendor, [ModelName] = @ModelName, [Description] = @Description, [Image] = @Image, [Price] = @Price, [OnSaleShow] = @OnSaleShow WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Category" Type="Int32" />
            <asp:Parameter Name="ProductVendor" Type="String" />
            <asp:Parameter Name="ModelName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="OnSaleShow" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Category" Type="Int32" />
            <asp:Parameter Name="ProductVendor" Type="String" />
            <asp:Parameter Name="ModelName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="OnSaleShow" Type="Boolean" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Height="50px" Width="436px">
        <Fields>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="ProductVendor" HeaderText="ProductVendor" SortExpression="ProductVendor" />
            <asp:BoundField DataField="ModelName" HeaderText="ModelName" SortExpression="ModelName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:CheckBoxField DataField="OnSaleShow" HeaderText="OnSaleShow" SortExpression="OnSaleShow" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
&nbsp;
</asp:Content>

