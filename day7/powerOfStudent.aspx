<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="powerOfStudent.aspx.cs" Inherits="day7.powerOfStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Power Of Student</h2>
            <div class="containar">
                <div class="card">
                    <img src="" alt="pic" />
                    <p>this is a random text</p>
                    <asp:Button ID="bookBtn" runat="server" Text="see the books" OnClick="bookBtn_Click" />
                </div>
                <div class="card">
                    <img src="" alt="pic" />
                    <p>this is a random text</p>
                    <asp:Button ID="meetBtn" runat="server" Text="see the Meet rooms" OnClick="meetBtn_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
