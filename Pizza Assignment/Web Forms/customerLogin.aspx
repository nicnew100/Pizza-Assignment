<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerLogin.aspx.cs" Inherits="Pizza_Assignment.customerLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Username (School ID)<asp:TextBox ID="usernameTB" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="passwordTB" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="MessageBox" runat="server" Visible="False"></asp:Label>
            <br />
            <asp:Button ID="logButt" runat="server" OnClick="logButt_Click" Text="Login" />
        </div>
    </form>
</body>
</html>
