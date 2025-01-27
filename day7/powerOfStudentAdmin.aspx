<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="powerOfStudentAdmin.aspx.cs" Inherits="day7.powerOfStudentAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>صفحه الاداره</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Power Of Student</h2>
            <div class="containar">
                <div class="card">
                    <img src="" alt="pic" />
                    <p>this is a random text</p>
                    <asp:Button ID="addbook" runat="server" Text="Add a Book" OnClick="addbook_Click" />
                </div>
                <div class="card">
                    <img src="" alt="pic" />
                    <p>this is a random text</p>
                    <asp:Button ID="deletbook" runat="server" Text="delete book" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
