<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="seeAllBook.aspx.cs" Inherits="day7.seeAllBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>معرض الكتب</title>
    <style>
        .bookt {
            width: 100%;
            border-collapse: collapse;
        }

            .bookt th {
                background-color: #f2f2f2;
            }

            .bookt td, .bookt th {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: center;
            }

            .bookt tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            .bookt tr:hover {
                background-color: #f1f1f1;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="bookTable" runat="server" CssClass="bookt">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Book ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Book Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Book Type</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Book Level</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell>1</asp:TableCell>
                    <asp:TableCell>Book1</asp:TableCell>
                    <asp:TableCell>Science</asp:TableCell>
                    <asp:TableCell>1</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
