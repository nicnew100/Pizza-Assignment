<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmInvoice.aspx.cs" Inherits="Pizza_Assignment.frmInvoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Orders<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                    <asp:BoundField DataField="CustomerSurname" HeaderText="CustomerSurname" SortExpression="CustomerSurname" />
                    <asp:BoundField DataField="CustomerPhoneNumber" HeaderText="CustomerPhoneNumber" SortExpression="CustomerPhoneNumber" />
                    <asp:BoundField DataField="CustomerTotal" HeaderText="CustomerTotal" SortExpression="CustomerTotal" />
                    <asp:BoundField DataField="OrderDetails" HeaderText="OrderDetails" SortExpression="OrderDetails" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:databaseConnectionString1 %>" DeleteCommand="DELETE FROM [Order] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Order] ([CustomerName], [CustomerSurname], [CustomerPhoneNumber], [CustomerTotal], [OrderDetails]) VALUES (@CustomerName, @CustomerSurname, @CustomerPhoneNumber, @CustomerTotal, @OrderDetails)" ProviderName="<%$ ConnectionStrings:databaseConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [CustomerName], [CustomerSurname], [CustomerPhoneNumber], [CustomerTotal], [OrderDetails] FROM [Order]" UpdateCommand="UPDATE [Order] SET [CustomerName] = @CustomerName, [CustomerSurname] = @CustomerSurname, [CustomerPhoneNumber] = @CustomerPhoneNumber, [CustomerTotal] = @CustomerTotal, [OrderDetails] = @OrderDetails WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="CustomerSurname" Type="String" />
                    <asp:Parameter Name="CustomerPhoneNumber" Type="String" />
                    <asp:Parameter Name="CustomerTotal" Type="Decimal" />
                    <asp:Parameter Name="OrderDetails" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="CustomerSurname" Type="String" />
                    <asp:Parameter Name="CustomerPhoneNumber" Type="String" />
                    <asp:Parameter Name="CustomerTotal" Type="Decimal" />
                    <asp:Parameter Name="OrderDetails" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
