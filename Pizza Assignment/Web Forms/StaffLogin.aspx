<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="Pizza_Assignment.StaffLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Staff ID
            <asp:TextBox ID="idTB" runat="server"></asp:TextBox>
            <br />
            Password<asp:TextBox ID="passwordTB" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="MessageBox" runat="server"></asp:Label>
            <br />
            <asp:Button ID="okButton" runat="server" OnClick="okButton_Click" Text="Ok" />
        </div>
    </form>
</body>
</html>
