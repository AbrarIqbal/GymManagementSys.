<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Practice.aspx.cs" Inherits="masterr.Admin.Practice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="List" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="user_name" DataValueField="user_name"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GYMConnectionString %>" SelectCommand="SELECT [user_name] FROM [Users] where role_id='3'"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
