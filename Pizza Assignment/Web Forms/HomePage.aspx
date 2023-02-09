<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Pizza_Assignment.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body style="width: 965px">
    <form id="form1" runat="server">
        <div style="text-align: left; font-size: xx-large">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nescot Pizza Order<br />
            <br />
            <asp:Button ID="customerLoginTB" runat="server" style="font-size: xx-large" Text="Customer Login" OnClick="customerLoginTB_Click" Width="243px" />
&nbsp;&nbsp;<asp:Button ID="customerSignUpTB" runat="server" OnClick="customerSignUpTB_Click" style="font-size: xx-large" Text="Customer Sign Up" Width="274px" />
            &nbsp;&nbsp;<asp:Button ID="staffLoginTB" runat="server" style="font-size: xx-large" Text="Staff Login" OnClick="staffLoginTB_Click" />
            &nbsp;&nbsp;<asp:Button ID="adminButt" runat="server" CssClass="auto-style1" Height="56px" OnClick="adminButt_Click" Text="Admin" Width="157px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
