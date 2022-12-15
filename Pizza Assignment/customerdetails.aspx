<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerdetails.aspx.cs" Inherits="Pizza_Assignment.customerdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <strong>Customer Details</strong></p>
        <p>
            Name
            <asp:TextBox ID="nameTB" runat="server"></asp:TextBox>
        </p>
        <p>
            Surname<asp:TextBox ID="surnameTB" runat="server"></asp:TextBox>
        </p>
        <p>
            Phone Number<asp:TextBox ID="phonenumTB" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            Customer Order : <asp:Label ID="lblOrderDetails" runat="server"></asp:Label>
        </p>
        <p>
            Total Amount :
            <asp:Label ID="lblTotal" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="confirmButton" runat="server" OnClick="confirmButton_Click" Text="Confirm Payment" />
        </p>
    </form>
</body>
</html>
