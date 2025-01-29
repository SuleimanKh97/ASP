<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editPageAdmin.aspx.cs" Inherits="day7.editPageAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>




            <h3>Edit Selected Book</h3>
            <div class="form-group">
                <label for="txtBookId">Book ID</label>
                <asp:TextBox ID="txtBookId" runat="server" CssClass="form-control" Enabled="false" />
            </div>
            <div class="form-group">
                <label for="txtBookName">Book Name</label>
                <asp:TextBox ID="txtBookName" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtBookKind">Book Kind</label>
                <asp:TextBox ID="txtBookKind" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtBookLevel">Book Level</label>
                <asp:TextBox ID="txtBookLevel" runat="server" CssClass="form-control" />
            </div>

            <asp:Button ID="bookEdit" runat="server" Text="Edit Book" OnClick="bookEdit_Click" /><br /><br /><br /><br />





            <asp:TextBox ID="searchTxt" runat="server" ></asp:TextBox><br /><br />
            <asp:Button ID="serarchBook" runat="server" Text="Search" OnClick="serarchBook_Click" /><br />
            
          
            <asp:TextBox ID="bookId" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="bookName" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="bookType" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="bookLevel" runat="server"></asp:TextBox><br />

            <br />

        </div>
    </form>
</body>
</html>
