<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profileuser.aspx.cs" Inherits="day7.profileuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TextBox ID="searchTxt" runat="server"></asp:TextBox>
            <asp:Button ID="searchBtn" runat="server" Text="Search" OnClick="searchBtn_Click" /><br />
            <asp:TextBox ID="name" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="Email" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="Password" runat="server"></asp:TextBox><br /><br /><br /><br /><br /><br />






            <asp:Button ID="editBtn" runat="server" Text="Edit" OnClick="editBtn_Click" />






        </div>
    </form>
</body>
</html>
