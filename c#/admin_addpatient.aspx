<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_addpatient.aspx.cs" Inherits="admin_addpatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Patient</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        ADD PATIENT<br />
        <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label><br />
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br />

        <asp:Label ID="lblMiddleName" runat="server" Text="Middle Name"></asp:Label><br />
        <asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox><br />

        <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label><br />
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br />

        <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label><br />
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox><br />

        <asp:Label ID="lblContactNo" runat="server" Text="Contact Number"></asp:Label><br />
        <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox><br />

        <asp:Label ID="lblBirthday" runat="server" Text="Birthday"></asp:Label><br />
        <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox><br />

        <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label><br />
        <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox><br />

        <asp:Label ID="lblOccupation" runat="server" Text="Occupation"></asp:Label><br />
        <asp:TextBox ID="txtOccupation" runat="server"></asp:TextBox><br />

        <asp:Button ID="btnAdd" runat="server" Text="Add Patient" OnClick="AddPatient"/><br />
    </div>
    </form>
</body>
</html>
