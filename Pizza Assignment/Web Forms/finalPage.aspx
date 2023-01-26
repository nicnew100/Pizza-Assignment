<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="finalPage.aspx.cs" Inherits="Pizza_Assignment.Web_Forms.finalPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 394px;
            height: 447px;
            float: left;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Thank you for ordering you pizza.
            <br />
            Click here to order another pizza--------&gt;&nbsp;
            <asp:Button ID="butt" runat="server" OnClick="butt_Click" Text="Pizza Time!!!!" />
        </div>
    </form>
    <p class="auto-style2">
        <img class="auto-style1" src="../Models/4-special-pizza-cartoon-clipart.jpg" /></p>
</body>
</html>
