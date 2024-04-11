<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MacFarct_InCLass20240409.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.ListBoxCssClass
{
    color:GhostWhite;
    background-color:DarkOliveGreen;
    font-family:Courier New;
    font-size:large;
    font-style:italic;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox OnSelectedIndexChanged="lbFruits_SelectedIndexChanged"  ID="lbFruits" runat="server" CssClass="ListBoxCssClass" Height="196px" Width="218px" AutoPostBack="True" DataSourceID="sqlDataSourceInClass20240409" DataTextField="LastName" DataValueField="NameID" >
                <asp:ListItem>Peach</asp:ListItem>
                <asp:ListItem>Plum</asp:ListItem>
                <asp:ListItem>Apple</asp:ListItem>
                <asp:ListItem>Guava</asp:ListItem>
                <asp:ListItem>Avocado</asp:ListItem>
            </asp:ListBox>
            <asp:SqlDataSource ID="sqlDataSourceInClass20240409" runat="server" ConnectionString="Data Source=lcb-sql.uccob.uc.edu\nicholdw;Initial Catalog=IS3050;Persist Security Info=True;User ID=IS3050Login;Trust Server Certificate=True" ProviderName="<%$ ConnectionStrings:ConnectingStringInClass20240409.ProviderName %>" SelectCommand="SELECT [NameID], [UserName], [LastName], [FirstName] FROM [tName]"></asp:SqlDataSource>
        </div>
        <asp:Label ID="lblChosenFruit" runat="server" Text="Select a Fruit"></asp:Label>
    </form>
</body>
</html>
