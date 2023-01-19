<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Pizza_Assignment.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Admin Id<asp:TextBox ID="idTB" runat="server"></asp:TextBox>
            <br />
            Password<asp:TextBox ID="passTB" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="okButt" runat="server" OnClick="okButt_Click" Text="Button" />
            <br />
            <asp:Label ID="MessageBox" runat="server" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
