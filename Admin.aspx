<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    admin page is here<br />
<asp:Button ID="Userbtn" runat="server" OnClick="Userbtn_Click" Text="Users" />
<asp:Button ID="Salebtn" runat="server" OnClick="Salebtn_Click" Text="Sale Items" />
<asp:Button ID="Commentbtn" runat="server" OnClick="Commentbtn_Click" Text="Comments" />
    &nbsp;
    <asp:GridView ID="Usergrid" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." Visible="false">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
            <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
            <asp:BoundField DataField="Roles" HeaderText="Roles" SortExpression="Roles" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseSuperStoreConnectionString1 %>" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [Users] ([UserName], [UserPassword], [UserEmail], [Roles]) VALUES (@UserName, @UserPassword, @UserEmail, @Roles)" ProviderName="<%$ ConnectionStrings:DatabaseSuperStoreConnectionString1.ProviderName %>" SelectCommand="SELECT [UserID], [UserName], [UserPassword], [UserEmail], [Roles] FROM [Users]" UpdateCommand="UPDATE [Users] SET [UserName] = @UserName, [UserPassword] = @UserPassword, [UserEmail] = @UserEmail, [Roles] = @Roles WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="Roles" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="Roles" Type="String" />
            <asp:Parameter Name="UserID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    &nbsp;
    <asp:DetailsView Visible="false" ID="UserD" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="UserID" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
            <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
            <asp:BoundField DataField="Roles" HeaderText="Roles" SortExpression="Roles" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    &nbsp;
    <asp:GridView Visible="false" ID="Salegrid" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
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
    &nbsp;
    <asp:DetailsView Visible="false" ID="SaleD" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Height="50px" Width="436px">
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
    <asp:GridView Visible="false" ID="Commentgrid" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CommentId" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CommentId" HeaderText="CommentId" ReadOnly="True" SortExpression="CommentId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
            <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
            <asp:BoundField DataField="FProductID" HeaderText="FProductID" SortExpression="FProductID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseSuperStoreConnectionString1 %>" DeleteCommand="DELETE FROM [ItemComments] WHERE [CommentId] = @CommentId" InsertCommand="INSERT INTO [ItemComments] ([Name], [Email], [Title], [Comment], [Rating], [FProductID]) VALUES (@Name, @Email, @Title, @Comment, @Rating, @FProductID)" ProviderName="<%$ ConnectionStrings:DatabaseSuperStoreConnectionString1.ProviderName %>" SelectCommand="SELECT [CommentId], [Name], [Email], [Title], [Comment], [Rating], [FProductID] FROM [ItemComments]" UpdateCommand="UPDATE [ItemComments] SET [Name] = @Name, [Email] = @Email, [Title] = @Title, [Comment] = @Comment, [Rating] = @Rating, [FProductID] = @FProductID WHERE [CommentId] = @CommentId">
        <DeleteParameters>
            <asp:Parameter Name="CommentId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Comment" Type="String" />
            <asp:Parameter Name="Rating" Type="Int32" />
            <asp:Parameter Name="FProductID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Comment" Type="String" />
            <asp:Parameter Name="Rating" Type="Int32" />
            <asp:Parameter Name="FProductID" Type="Int32" />
            <asp:Parameter Name="CommentId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;
    <asp:DetailsView Visible="false" ID="commentD" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="CommentId" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="CommentId" HeaderText="CommentId" InsertVisible="False" ReadOnly="True" SortExpression="CommentId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
            <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
            <asp:BoundField DataField="FProductID" HeaderText="FProductID" SortExpression="FProductID" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

