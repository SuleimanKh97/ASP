<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="day7.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>reg</title>
    <style>
        
    </style>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <h2>ٍSign up</h2>
            <asp:TextBox ID="txtEmail" runat="server" Placeholder="Enter Email"></asp:TextBox><br />
            <asp:TextBox ID="txtUsername" runat="server" Placeholder="Enter Username"></asp:TextBox><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Enter Password"></asp:TextBox><br />
            <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>
         <br /><br />


    </form>
    
      
</body>
</html>
