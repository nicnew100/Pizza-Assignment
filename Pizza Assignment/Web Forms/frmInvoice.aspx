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
                    <asp:BoundField DataField="CustomerTotal" HeaderText="CustomerTotal" SortExpression="CustomerTotal" />
                    <asp:BoundField DataField="OrderDetails" HeaderText="OrderDetails" SortExpression="OrderDetails" />
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:databaseConnectionString2 %>" DeleteCommand="DELETE FROM [Order] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Order] ([CustomerTotal], [OrderDetails], [CustomerID]) VALUES (@CustomerTotal, @OrderDetails, @CustomerID)" ProviderName="<%$ ConnectionStrings:databaseConnectionString2.ProviderName %>" SelectCommand="SELECT [Id], [CustomerTotal], [OrderDetails], [CustomerID] FROM [Order]" UpdateCommand="UPDATE [Order] SET [CustomerTotal] = @CustomerTotal, [OrderDetails] = @OrderDetails, [CustomerID] = @CustomerID WHERE [Id] = @Id">
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
            <asp:Button ID="Button1" runat="server" Text="Button" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Button" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="Button" />
&nbsp;<asp:Button ID="Button4" runat="server" Text="Button" />
            <br />
        </div>
    </form>
</body>
</html>
