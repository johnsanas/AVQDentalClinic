<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Dashboard | AVQ Dental Clinic</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/theme_styles.css"/>
    <!--<link rel="stylesheet" type="text/css" href="css/font-awesome.css"/>-->
    <link rel="stylesheet" type="text/css" href="../css/style.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
                                <a href="adminhome.php">
                                    <i class="fa fa-dashboard"></i>
                                    <span>Dashboard</span>
                                </a>
                            </li>

                            <li>
                                <a href="index.html">
                                    <i class="fa fa-dashboard"></i>
                                    <span>Doctor</span>
                                </a>
                            </li>

                            <li>
                                <a href="index.html">
                                    <i class="fa fa-dashboard"></i>
                                    <span>Staff</span>
                                </a>
                            </li>

                            <li class="active">
                                <a href="#">
                                    <i class="fa fa-dashboard"></i>
                                    <span>Patient</span>
                                </a>
                            </li>

                            <li>
                                <a href="index.html">
                                    <i class="fa fa-dashboard"></i>
                                    <span>Activity</span>
                                </a>
                            </li>

                            <li>
                                <a href="index.html">
                                    <i class="fa fa-dashboard"></i>
                                    <span>Category</span>
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
                                    <li class="active"><span>Patient</span></li>
                                    </ol>
                                    <h1>Patient</h1>
                                </div>
                            </div>

                            <div class="col-lg-12">

                                <form class="form-inline">
                                    <div class="form-group">
                                          <select class="form-control dropDown" id="sel1">
                                            <option>10</option>
                                            <option>20</option>
                                            <option>30</option>
                                          </select>
                                          <label for="sel1">10 per page</label>
                                      
                                        <label for="search">Email address:</label>
                                        <input type="text" class="form-control search-left" id="search text-right" placeholder="search">
                                        <button type="button" class="btn btn-primary text-right" data-toggle="modal" data-target="#modalAddPatient">Add Patient</button>
                                   
                                    </div>
                                </form><br>
                                  <div class="table table-hover">          
                                      <table class="table table-hover table-responsive">
                                        <thead>
                                          <tr>
                                            <th>ID Number</th>
                                            <th>Name</th>
                                            <th>Address</th>
                                            <th>Age</th>
                                            <th>More</th>   
                                            <th>Action</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr>
                                            <td>1</td>
                                            <td>Anna</td>
                                            <td>Pitt</td>
                                            <td>35</td>
                                            <td><button type="button" class="btn btn-link">More Details</button></td>
                                            <td>
                                                <button type="button" class="btn btn-primary">Edit</button>
                                                <button type="button" class="btn btn-danger">Delete</button>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td>1</td>
                                            <td>Anna</td>
                                            <td>Pitt</td>
                                            <td>35</td>
                                            <td>New York</td>
                                            <td>USA</td>
                                          </tr>
                                        </tbody>
                                      </table>
                                  </div>
                                <span class="text-left" style="text-align:left;">Showing 1 to 5 of 534 patients</span>
                                  <div class="text-center">

                                       <ul class="pagination">
                                          <li class="active"><a href="#">1</a></li>
                                          <li><a href="#">2</a></li>
                                          <li><a href="#">3</a></li>
                                          <li><a href="#">4</a></li>
                                          <li><a href="#">5</a></li>
                                        </ul>
                                   </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

      <!-- Modal -->
      <div class="modal fade" id="modalAddPatient" role="dialog">
        <div class="modal-dialog modal-sm">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Patient Registration</h4>
            </div>
            <div class="modal-body">
                 <form>
                  <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name">
                  </div>

                  <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="address">
                  </div>

                  <div class="form-group">
                    <label for="telephone">Telephone</label>
                    <input type="number" class="form-control" id="telephone">
                  </div>

                  <div class="form-group">
                    <label for="birthday">Birthday</label>
                    <input type="datetime" class="form-control" id="birthday">
                  </div>

                  <div class="form-group">
                    <label for="occupation">Occupation</label>
                    <input type="text" class="form-control" id="occupation">
                  </div>

                  <div class="form-group">
                    <label for="status">Status</label>
                    <input type="text" class="form-control" id="status">
                  </div>

                   <div class="form-group">
                      <label for="complain">Compalain</label>
                      <textarea class="form-control" rows="5" id="complain"></textarea>
                    </div>

                  <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" id="pwd">
                  </div>
                  <div class="checkbox">
                    <label><input type="checkbox"> Remember me</label>
                  </div>
                  <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modalSuccess">Submit</button>
                </form>
            </div>
          </div>
        </div>
      </div>

    <div class="modal" id="modalSuccess" role="dialog">
        <div class="modal-dialog modal-sm">
          <div class="modal-content">
            <div class="modal-body">
              <p>Successfully Created Account!</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>
</body>
</html>