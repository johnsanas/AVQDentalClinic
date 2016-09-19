<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Dashboard | AVQ Dental Clinic</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/theme_styles.css"/>
    <!--<link rel="stylesheet" type="text/css" href="css/font-awesome.css"/>-->
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script src="../js/jquery-3.1.0.min.js"></script>

</head>
<body>

    <div>
        <header class="navbar" id="header-navbar">
            <div class="container">
                <a href="index.html" id="logo" class="navbar-brand text-center">
                    
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
                                <span class="hidden-xs">Hello, <asp:Label ID="lblUserName" runat="server"></asp:Label></span> <b class="caret"></b>
                                </a>
                                    <ul class="dropdown-menu">
                                    <!--
                                    <li><a href="user-profile.html"><i class="fa fa-user"></i>Profile</a></li>
                                    <li><a href="#"><i class="fa fa-cog"></i>Settings</a></li>
                                    <li><a href="#"><i class="fa fa-envelope-o"></i>Messages</a></li>
                                    -->
                                    <li><a href="#"><i class="fa fa-power-off"></i>Logout</a></li>
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
                                <a href="index.html">
                                    <i class="fa fa-dashboard"></i>
                                    <span>Dashboard</span>
                                    <span class="label label-primary label-circle pull-right">10</span>
                                </a>
                            </li>

                            <li class="active">
                                <a href="#" class="dropdown-toggle">
                                    <i class="fa fa-table"></i>
                                    <span>Record Management</span>
                                <i class="fa fa-angle-right drop-icon"></i>
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
                                    <li class="active"><span>Record Management</span></li>
                                    </ol>
                                    <h1>Record Management</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>
</html>