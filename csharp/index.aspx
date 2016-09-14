<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AVQ Dental Clinic</title>
    <%--<link rel ="stylesheet" type ="text/css" href ="css/style.css" />--%>
</head>
<body>
<div class ="container">
    <form id="form1" runat="server">
        <%--<asp:Label ID="avq_dental" runat="server">AVQ<br/>Dental Clinic</asp:Label>--%>
        <span id ="avq_dental">AVQ</span>
        <span id ="avq_dental1">Dental Clinic</span>
        <div style ="clear:both"></div>
    <div class ="login">
        <asp:Label ID="txtLabel" runat="server">Login</asp:Label>
        <asp:TextBox ID="txtUserName" runat="server" ></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick ="Click"/>
    </div>
    </form>
</div>
</body>
</html>