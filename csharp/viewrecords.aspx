<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewrecords.aspx.cs" Inherits="viewrecords" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    VIEW RECORDS<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <div>
        <asp:GridView ID="gvRecords" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Service">
                    <ItemTemplate>
                        <asp:Label ID="lblService" runat="server" Text ='<%# Eval("service_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Dentist">
                    <ItemTemplate>
                        <asp:Label ID="lblDentist" runat="server" Text ='<%# Eval("staff_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Title">
                    <ItemTemplate>
                        <asp:Label ID="lblTitle" runat="server" Text ='<%# Eval("title") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="lblDescription" runat="server" Text ='<%# Eval("description") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Date and Time">
                    <ItemTemplate>
                        <asp:Label ID="lblDateandTime" runat="server" Text ='<%# Eval("date_time") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
