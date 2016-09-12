<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        ADMIN
        <asp:Button ID="btnAddPatient" runat="server" Text="Add Patient" onClick ="Click_AddPatient"/>
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick ="Click_btnLogout" />
    </div>

        <asp:GridView ID="gvPatient" runat="server" AutoGenerateColumns ="false" CellPadding="5" OnRowEditing ="gvPatient_RowEditing" OnRowCancelingEdit="gvPatient_RowCancellingEdit" OnRowUpdating="gvPatient_RowUpdating" OnRowDataBound="gvPatient_RowDataBound">
            <Columns>
                <asp:TemplateField HeaderText ="First Name">
                    <ItemTemplate>
                        <asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("first_name") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="e_lblPatientID" runat ="server" Text ='<%# Eval("id") %>' Visible="false"/>
                        <asp:TextBox ID ="e_txtFirstName" runat ="server" Text = '<%# Eval("first_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText ="Middle Name">
                     <ItemTemplate>
                        <asp:Label ID="lblMiddleName" runat ="server" Text='<%# Eval("middle_name") %>'></asp:Label>
                     </ItemTemplate>
                     <EditItemTemplate>
                        <asp:TextBox ID ="e_txtMiddleName" runat ="server" Text ='<%# Eval("middle_name") %>'></asp:TextBox>
                     </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText ="Last Name">
                     <ItemTemplate>
                        <asp:Label ID="lblLastName" runat ="server" Text='<%# Eval("last_name") %>'></asp:Label>
                     </ItemTemplate>
                     <EditItemTemplate>
                        <asp:TextBox ID ="e_txtLastName" runat="server" Text ='<%# Eval("last_name") %>'></asp:TextBox>
                     </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText ="Address">
                     <ItemTemplate>
                        <asp:Label ID="lblAddress" runat ="server" Text ='<%# Eval("address") %>'></asp:Label>
                     </ItemTemplate>
                     <EditItemTemplate>
                        <asp:TextBox ID="e_txtAddress" runat ="server" Text='<%# Eval("address") %>'></asp:TextBox>
                     </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText ="Contact Number">
                    <ItemTemplate>
                        <asp:Label ID="lblContactNo" runat ="server" Text='<%# Eval("contact_number") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID ="e_txtContactNo" runat ="server" Text='<%# Eval("contact_number") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <%--<asp:TemplateField Headertext ="Birthday">
                    <ItemTemplate>
                        <asp:Label ID="lblBirthday" runat="server" Text='<%# Eval("birthday") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID ="e_txtBirthday" runat ="server" text='<%# Eval("birthday") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>--%>

                <asp:TemplateField HeaderText ="Status">
                    <ItemTemplate>
                        <asp:Label ID="lblStatus" runat="server" Text ='<%# Eval("status") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="e_txtStatus" runat="server" Text='<%# Eval("status") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText ="Occupation">
                    <ItemTemplate>
                        <asp:Label ID="lblOccupation" runat ="server" Text='<%# Eval("occupation") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox id="e_txtOccupation" runat="server" Text='<%# Eval("occupation") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnEdit" runat ="server" ToolTip ="Edit Details" Text ='Edit' CommandName="Edit"/>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="btnUpdate" runat="server" ToolTip="Update" Text="Update" CommandName ="Update"/>
                        <asp:Button ID="btnCancel" runat ="server" ToolTip="Cancel" Text='Cancel' CommandName="Cancel"/>
                    </EditItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>

    </form>
</body>
</html>
<%--may bug sa edit mode kung saan pagkaenter magllogout na ung system
RESOLVED! - lagay sa pinakauna ung button na gusto mangyari
--%>