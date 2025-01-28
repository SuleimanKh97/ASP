<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addbook.aspx.cs" Inherits="day7.addbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>add book</h2>
            <asp:TextBox ID="txtBookName" runat="server" Placeholder="Enter Book Name"></asp:TextBox><br />
            <asp:TextBox ID="txtBookType" runat="server" Placeholder="Enter Book Type"></asp:TextBox><br />
            <asp:TextBox ID="txtBookLevel" runat="server" Placeholder="Enter Book Level"></asp:TextBox><br />
            <asp:TextBox ID="txtBookid" runat="server" Placeholder="Enter Book ID"></asp:TextBox><br />
            <asp:Button ID="btnAddBook" runat="server" Text="Add Book" OnClick="btnAddBook_Click" />

            <br />
            <br />
            <asp:Label ID="lblmsg" runat="server" Visible="false"></asp:Label>


        </div>
    </form>
</body>
</html>
