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
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Visible="False">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="EmailAdress" HeaderText="EmailAdress" SortExpression="EmailAdress" />
                    <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                    <asp:BoundField DataField="CustomerSurname" HeaderText="CustomerSurname" SortExpression="CustomerSurname" />
                    <asp:BoundField DataField="CustomerPhoneNumber" HeaderText="CustomerPhoneNumber" SortExpression="CustomerPhoneNumber" />
                </Columns>
                <SelectedRowStyle BackColor="#00FF99" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:databaseConnectionString2 %>" SelectCommand="SELECT * FROM [LoginTable]"></asp:SqlDataSource>
        </p>
        <p>
            Thank you
            <asp:Label ID="nameLbl" runat="server" OnPreRender="Page_Load"></asp:Label>
        &nbsp;for purchasing your pizza</p>
        <p>
            &nbsp;</p>
        <p>
            Customer Order : <asp:Label ID="lblOrderDetails" runat="server"></asp:Label>
        </p>
        <p>
            Total Amount : <asp:Label ID="lblTotal" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="confirmButton" runat="server" OnClick="confirmButton_Click" Text="Confirm Payment" />
        </p>
    </form>
</body>
</html>
