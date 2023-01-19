﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminHomePage.aspx.cs" Inherits="Pizza_Assignment.adminHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AdminID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="AdminID" HeaderText="AdminID" ReadOnly="True" SortExpression="AdminID" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="EmailAdress" HeaderText="EmailAdress" SortExpression="EmailAdress" />
                    <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                    <asp:BoundField DataField="CustomerSurname" HeaderText="CustomerSurname" SortExpression="CustomerSurname" />
                    <asp:BoundField DataField="CustomerPhoneNumber" HeaderText="CustomerPhoneNumber" SortExpression="CustomerPhoneNumber" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:databaseConnectionString2 %>" DeleteCommand="DELETE FROM [LoginTable] WHERE [ID] = @ID" InsertCommand="INSERT INTO [LoginTable] ([Username], [Password], [EmailAdress], [CustomerName], [CustomerSurname], [CustomerPhoneNumber]) VALUES (@Username, @Password, @EmailAdress, @CustomerName, @CustomerSurname, @CustomerPhoneNumber)" ProviderName="<%$ ConnectionStrings:databaseConnectionString2.ProviderName %>" SelectCommand="SELECT [ID], [Username], [Password], [EmailAdress], [CustomerName], [CustomerSurname], [CustomerPhoneNumber] FROM [LoginTable]" UpdateCommand="UPDATE [LoginTable] SET [Username] = @Username, [Password] = @Password, [EmailAdress] = @EmailAdress, [CustomerName] = @CustomerName, [CustomerSurname] = @CustomerSurname, [CustomerPhoneNumber] = @CustomerPhoneNumber WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="EmailAdress" Type="String" />
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="CustomerSurname" Type="String" />
                    <asp:Parameter Name="CustomerPhoneNumber" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="EmailAdress" Type="String" />
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="CustomerSurname" Type="String" />
                    <asp:Parameter Name="CustomerPhoneNumber" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="CustomerTotal" HeaderText="CustomerTotal" SortExpression="CustomerTotal" />
                    <asp:BoundField DataField="OrderDetails" HeaderText="OrderDetails" SortExpression="OrderDetails" />
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:databaseConnectionString2 %>" DeleteCommand="DELETE FROM [Order] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Order] ([CustomerTotal], [OrderDetails], [CustomerID]) VALUES (@CustomerTotal, @OrderDetails, @CustomerID)" ProviderName="<%$ ConnectionStrings:databaseConnectionString2.ProviderName %>" SelectCommand="SELECT [Id], [CustomerTotal], [OrderDetails], [CustomerID] FROM [Order]" UpdateCommand="UPDATE [Order] SET [CustomerTotal] = @CustomerTotal, [OrderDetails] = @OrderDetails, [CustomerID] = @CustomerID WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerTotal" Type="Decimal" />
                    <asp:Parameter Name="OrderDetails" Type="String" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerTotal" Type="Decimal" />
                    <asp:Parameter Name="OrderDetails" Type="String" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:databaseConnectionString2 %>" DeleteCommand="DELETE FROM [AdminLogin] WHERE [AdminID] = @AdminID" InsertCommand="INSERT INTO [AdminLogin] ([AdminID], [Password]) VALUES (@AdminID, @Password)" ProviderName="<%$ ConnectionStrings:databaseConnectionString2.ProviderName %>" SelectCommand="SELECT [AdminID], [Password] FROM [AdminLogin]" UpdateCommand="UPDATE [AdminLogin] SET [Password] = @Password WHERE [AdminID] = @AdminID">
                <DeleteParameters>
                    <asp:Parameter Name="AdminID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AdminID" Type="Int32" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="AdminID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="StaffID" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="StaffID" HeaderText="StaffID" ReadOnly="True" SortExpression="StaffID" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:databaseConnectionString2 %>" DeleteCommand="DELETE FROM [StaffLoginDB] WHERE [StaffID] = @StaffID" InsertCommand="INSERT INTO [StaffLoginDB] ([StaffID], [Password]) VALUES (@StaffID, @Password)" ProviderName="<%$ ConnectionStrings:databaseConnectionString2.ProviderName %>" SelectCommand="SELECT [StaffID], [Password] FROM [StaffLoginDB]" UpdateCommand="UPDATE [StaffLoginDB] SET [Password] = @Password WHERE [StaffID] = @StaffID">
                <DeleteParameters>
                    <asp:Parameter Name="StaffID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="StaffID" Type="Int32" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="StaffID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>