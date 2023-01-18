<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserAdmin.aspx.cs" Inherits="Pizza_Assignment.UserAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="155px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="334px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="EmailAdress" HeaderText="EmailAdress" SortExpression="EmailAdress" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:databaseConnectionString2 %>" DeleteCommand="DELETE FROM [LoginTable] WHERE [ID] = @ID" InsertCommand="INSERT INTO [LoginTable] ([Username], [Password], [EmailAdress]) VALUES (@Username, @Password, @EmailAdress)" ProviderName="<%$ ConnectionStrings:databaseConnectionString2.ProviderName %>" SelectCommand="SELECT [ID], [Username], [Password], [EmailAdress] FROM [LoginTable]" UpdateCommand="UPDATE [LoginTable] SET [Username] = @Username, [Password] = @Password, [EmailAdress] = @EmailAdress WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="EmailAdress" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="EmailAdress" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
