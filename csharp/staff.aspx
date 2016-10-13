<%@ Page Language="C#" AutoEventWireup="true" CodeFile="staff.aspx.cs" Inherits="staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/theme_styles.css"/>
    <link rel="stylesheet" type="text/css" href="font-awesome-4.6.3/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css"/>

    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script src="../js/jquery-3.1.0.min.js"></script>
</head>
<body>
 <%--<div>--%>
        <header class="navbar" id="header-navbar">
            <div class="container">
                <a href="admin.aspx" id="logo" class="navbar-brand text-center">
                    AVQ Dental Clinic
                </a>
                <div class="clearfix">
                    <button class="navbar-toggle" data-target=".navbar-ex1-collapse" data-toggle="collapse" type="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="fa fa-bars"></span>
                    </button>
                    <div class="nav-no-collapse navbar-left pull-left hidden-sm hidden-xs">
                        <ul class="nav navbar-nav pull-left">
                            <li>
                                <a class="btn" id="make-small-nav">
                                <i class="fa fa-bars"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="nav-no-collapse pull-right" id="header-nav">
                        <ul class="nav navbar-nav pull-right">

                            <!--
                            <li class="mobile-search">
                            <a class="btn">
                            <i class="fa fa-search"></i>
                            </a>
                            <div class="drowdown-search">
                            <form role="search">
                            <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search...">
                            <i class="fa fa-search nav-search-icon"></i>
                            </div>
                            </form>
                            </div>
                            </li>
                            -->

                            <li class="dropdown profile-dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <!--<img src="img/samples/scarlet-159.png" alt=""/>-->
                                <span class="hidden-xs">Hello, <asp:Label ID="lblUserName" runat="server"></asp:Label></span><b class="caret"></b>
                                </a>
                                    <ul class="dropdown-menu">
                                    <!--
                                    <li><a href="user-profile.html"><i class="fa fa-user"></i>Profile</a></li>
                                    <li><a href="#"><i class="fa fa-cog"></i>Settings</a></li>
                                    <li><a href="#"><i class="fa fa-envelope-o"></i>Messages</a></li>
                                    -->
                                    <%--<li><a href="#"><i class="fa fa-power-off"></i>Logout</a></li>--%>
                                    <li><a href="index.aspx?logout=true"><i class="fa fa-power-off"></i>
                                        <asp:Label ID="lblLogout" runat="server" Text="Logout"></asp:Label></a></li>
                                    </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
    <div id="page-wrapper" class="container">
    <div class="row">
    <div id="nav-col">
        <section id="col-left" class="col-left-nano">
            <div id="col-left-inner" class="col-left-nano-content">

                <div class="collapse navbar-collapse navbar-ex1-collapse" id="sidebar-nav">
                    <ul class="nav nav-pills nav-stacked">
                        <li class="nav-header nav-header-first hidden-sm hidden-xs">
                            Navigation
                        </li>
                        <li>
                            <a href="dashboard.aspx">
                                <i class="fa fa-dashboard"></i>
                                <span>Dashboard</span>
                                <span class="label label-primary label-circle pull-right">10</span>
                            </a>
                        </li>

                        <li>
                            <a href="admin.aspx" class="dropdown-toggle">
                                <i class="fa fa-table"></i>
                                <span>Patients</span>
                            <i class="fa fa-angle-right drop-icon"></i>
                            </a>
                        </li>

                        <li class="active">
                            <a href="staff.aspx">

                            <span>Staff</span>
                            </a>
                        </li>

                        <li>
                            <a href="payments.aspx">

                            <span>Payments</span>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </section>

        <div id="nav-col-submenu"></div>
    </div>
    <div id="content-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-12">
                        <div id="content-header" class="clearfix">
                            <div class="pull-left">
                                <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li class="active"><span>Staff</span></li>
                                </ol>
                                <h1>Staff</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <form id="form1" runat="server">

                <%--MODAL--%>
                <div id="modal_addStaff" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span class="modal-title">ADD STAFF</span>
                            </div>
                            <div class="modal-body">
                                <table border="1">
                                    <tr>
                                        <td>Last Name</td>
                                        <td><asp:TextBox ID="add_txtLastName" runat="server"></asp:TextBox>
<%--                                        <asp:RequiredFieldValidator ID="req_add_txtFirstName" runat="server" ControlToValidate="add_txtFirstName" Text="First name is empty"></asp:RequiredFieldValidator>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>First Name</td>
                                        <td><asp:TextBox ID="add_txtFirstName" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Middle Name</td>
                                        <td><asp:TextBox ID="add_txtMiddleName" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Position</td>
                                        <td><asp:TextBox ID="add_txtPosition" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Username</td>
                                        <td><asp:TextBox ID="add_txtUserName" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Password</td>
                                        <td><asp:TextBox ID="add_txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="modal_btnAddStaff" runat="server" Text="Add Patient" class="btn btn-default" OnClick="modal_btnAddStaff_Click"/>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <%--END MODAL--%>
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#modal_addStaff">Add Staff</button>
                <br /><br />
                <asp:GridView class="table table-hover" ID="gvStaff" runat="server" AutoGenerateColumns ="false" CellPadding="5" OnRowEditing="gvStaff_RowEditing" OnRowCancelingEdit="gvStaff_RowCancelingEdit" OnRowUpdating="gvStaff_RowUpdating">
                      <Columns>
                        <asp:TemplateField HeaderText="Last Name">
                            <ItemTemplate>
                                <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("last_name") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:HiddenField ID="e_hdnStaffID" runat="server" Value='<%# Eval("id") %>'></asp:HiddenField>
                                <asp:TextBox ID="e_txtLastName" runat="server" Text='<%# Eval("last_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="First Name">
                            <ItemTemplate>
                                <asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("middle_name") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="e_txtFirstName" runat="server" Text='<%# Eval("middle_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="MiddleName">
                            <ItemTemplate>
                                <asp:Label ID="lblMiddleName" runat="server" Text='<%# Eval("middle_name") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="e_txtMiddleName" runat="server" Text='<%# Eval("middle_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText ="Position">
                            <ItemTemplate>
                                <asp:Label ID="lblPosition" runat="server" Text='<%# Eval("position") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="e_txtPosition" runat="server" Text='<%# Eval("position") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="btnEdit" runat="server" ToolTip="Edit" Text="Edit" CommandName="Edit"/>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" ToolTip ="Update" CommandName="Update"/>
                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" ToolTip="Cancel" CommandName="Cancel"/>
                            </EditItemTemplate>
                        </asp:TemplateField>
                      </Columns>
                </asp:GridView>
            </form>
        </div>
    </div>

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>