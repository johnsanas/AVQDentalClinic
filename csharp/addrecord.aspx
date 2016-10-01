<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addrecord.aspx.cs" Inherits="addrecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        ADD RECORD
        <asp:HiddenField ID ="hdnID" runat="server" />
        <asp:DropDownList ID="ddlServices" runat="server"></asp:DropDownList>
        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="Add Record" OnClick="btnSubmit_Click"/>
    </div>
    </form>
</body>
</html>