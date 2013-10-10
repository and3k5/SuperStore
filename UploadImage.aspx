<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadImage.aspx.cs" Inherits="UploadImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="uploadImageForm" runat="server" enctype="multipart/form-data">
    <div>
            <asp:Label ID="Label1" runat="server" Text="Select an image to add to server"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
            <input type="file" id="inputfile" name="inputfile" />
            <asp:Button runat="server" ID="btnUploadSubmit" Text="Upload to server" OnClick="btnUploadSubmit_Click" />
            <script type="text/javascript">
                function closeDialog() {
                    window.close();
                }
            </script>
    </div>
    </form>
</body>
</html>
