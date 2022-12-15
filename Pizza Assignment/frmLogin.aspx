<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="Pizza_Assignment.frmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p style="text-align: justify">
            UserName<asp:TextBox ID="userTB" runat="server" style="text-align: justify"></asp:TextBox>
        </p>
        <p style="text-align: justify">
            Surname<asp:TextBox ID="surnameTB" runat="server"></asp:TextBox>
        </p>
        <p style="text-align: justify">
            E-mail<asp:TextBox ID="emailTB" runat="server"></asp:TextBox>
        </p>
        <p style="text-align: justify">
            <asp:Button ID="okButt" runat="server" OnClick="okButt_Click" Text="Ok" />
        </p>
    </form>
</body>
</html>
