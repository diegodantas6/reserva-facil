<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Starter</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <asset:stylesheet src="bootstrap/bootstrap.min.css"/>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <asset:stylesheet src="dist/AdminLTE.min.css"/>
    
    <!-- daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">    

	<!-- Theme -->
    <asset:stylesheet src="dist/skins/skin-blue.min.css"/>
    <asset:stylesheet src="util.css"/>
      
    <!-- REQUIRED JS SCRIPTS -->

    <!-- jQuery 2.1.4 -->
    <asset:javascript src="plugins/jQuery/jQuery-2.1.4.min.js"/>
    <!-- Bootstrap 3.3.5 -->
    <asset:javascript src="javascripts/bootstrap.min.js"/>
    <!-- AdminLTE App -->
    <asset:javascript src="dist/app.min.js"/>
    <!-- date-range-picker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <asset:javascript src="plugins/daterangepicker/daterangepicker.js"/>
    <!-- DataTables -->
    <script src="plugins/datatables/jquery.dataTables.pt.min.js"></script>
    <script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
    
	<g:layoutHead/>

  </head>

  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <!-- Main Header -->
      <header class="main-header">

        <!-- Logo -->
        <a href="#" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>A</b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Admin</b>LTE</span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <li>
                <!-- Menu toggle button -->
                <g:link controller="logout">
                  <i class="fa fa-power-off"></i>
                </g:link>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

          <!-- Sidebar user panel (optional) -->
          <div class="user-panel">
            <div class="pull-left image">
                <!-- <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">-->
                <!-- <img src="images/user.jpg" class="img-circle" alt="User Image">-->
                <asset:image src="user.jpg" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
              <p>Diego Dantas</p>
              <!-- Status -->
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>

          <!-- Sidebar Menu -->
          <ul class="sidebar-menu">
            <li class="header">MENU</li>

            <li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i> <span>Cadastro</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="cliente"><i class="fa fa-circle-o"></i>Cliente</a></li>
                <li><a href="produto"><i class="fa fa-circle-o"></i>Produto</a></li>
                <li><a href="areaComum"><i class="fa fa-circle-o"></i>Area Comum</a></li>
              </ul>
            </li>  

            <li class="treeview">
              <a href="#">
                <i class="fa fa-users"></i> <span>Controle de Acesso</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i>Usuário</a></li>
                <li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i>Grupo de Usuário</a></li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Permissão<i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i>Usuário</a></li>
                      <li><a href="#"><i class="fa fa-circle-o"></i>Grupo de Usuário</a></li>
                  </ul>
                </li>

              </ul>
            </li>  
              
          </ul><!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
          
          <g:layoutBody/>
          
      </div><!-- /.content-wrapper -->

      <!-- Main Footer -->
      <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
          Anything you want
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2015 <a href="#">Company</a>.</strong> All rights reserved.
      </footer>

    </div><!-- ./wrapper -->

  </body>
</html>
