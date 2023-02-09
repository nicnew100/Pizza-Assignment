<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pizza_Assignment.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style2 {
            margin-left: 206px;
        }
        .auto-style3 {
            margin-left: 180px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Pizza Order System</strong></div>
        <p>
            <strong>&nbsp;Pick Your Pizza</strong></p>
        <asp:RadioButton ID="pepperoniRadButton" runat="server" GroupName="Pizza" Text="Pepperoni" AutoPostBack="True" OnCheckedChanged="pepperoniRadButton_CheckedChanged" />
&nbsp;&nbsp;&nbsp; (£4.00)<br />
        <asp:RadioButton ID="margRadButton" runat="server" OnCheckedChanged="margRadButton_CheckedChanged" Text="Margherita" AutoPostBack="True" GroupName="Pizza" />
&nbsp;&nbsp; (£3.50)<asp:Image ID="pizzaImage" runat="server" Height="68px" ImageAlign="Middle" Width="130px" CssClass="auto-style3" />
        <br />
        <br />
        <br />
        <strong>Pick a drink (optional)</strong><br />
        <asp:RadioButton ID="cokeRadButton" runat="server" GroupName="drinks" Text="Coke" OnCheckedChanged="cokeRadButton_CheckedChanged" />
&nbsp;&nbsp;&nbsp; (£1.10)<asp:Image ID="pizzaImage0" runat="server" Height="76px" ImageAlign="Middle" style="text-align: center;" Width="128px" CssClass="auto-style2" />
        <br />
        <asp:RadioButton ID="fantaRadButton" runat="server" GroupName="drinks" Text="Fanta" OnCheckedChanged="fantaRadButton_CheckedChanged" />
&nbsp;&nbsp;&nbsp; (£1.10)<br />
        <br />
        <asp:RadioButton ID="liptonRadButton" runat="server" GroupName="drinks" Text="Lipton Ice Tea Peach" OnCheckedChanged="liptonRadButton_CheckedChanged" />
&nbsp;&nbsp; (£1.10)<br />
        <br />
        <br />
        <br />
        Total: <asp:Label ID="lblTotal" runat="server"></asp:Label>
        <br />
        <p>
        <asp:Button ID="confirmOrderButton" runat="server" Text="Confirm" OnClick="confirmOrderButton_Click" />
        </p>
        <p>
            <asp:Button ID="nextButton" runat="server" OnClick="nextButton_Click1" style="margin-right: 0px" Text="Next" Visible="False" />
        </p>
    </form>
</body>
</html>
