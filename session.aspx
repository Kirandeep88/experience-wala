<%@ Page Language="C#" AutoEventWireup="true" CodeFile="session.aspx.cs" Inherits="session" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtusername" runat="server" />                   
        <asp:Button ID="btnsubmit" Text="submit" runat="server" OnClick="btnsubmit_Click" />
    </div>
    </form>
</body>
</html>
