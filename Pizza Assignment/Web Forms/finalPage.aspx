<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="finalPage.aspx.cs" Inherits="Pizza_Assignment.Web_Forms.finalPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 266px;
            height: 294px;
            float: left;
            margin-left: 34px;
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
            Your order number =
            <asp:Label ID="customerID" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Visible="False">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="CustomerTotal" HeaderText="CustomerTotal" SortExpression="CustomerTotal" />
                    <asp:BoundField DataField="OrderDetails" HeaderText="OrderDetails" SortExpression="OrderDetails" />
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:databaseConnectionString2 %>" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
            <br />
            Click here to order another pizza--------&gt;&nbsp;
            <asp:Button ID="butt" runat="server" OnClick="butt_Click" Text="Pizza Time!!!!" />
            <br />
            <br />
            <asp:Button ID="logOutButton" runat="server" OnClick="logOutButton_Click" Text="Log Out" />
        </div>
    </form>
    <p class="auto-style2">
        <img class="auto-style1" src="../Models/4-special-pizza-cartoon-clipart.jpg" /></p>
</body>
</html>
