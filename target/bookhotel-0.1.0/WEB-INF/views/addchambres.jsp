<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="apple-touch-icon" sizes="76x76" href="gerant/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="gerant/img/favicon.png" /> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Ajouter des chambres</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <!-- Bootstrap core CSS     -->
    <link href="gerant/css/bootstrap.min.css" rel="stylesheet" />
    <!--  Material Dashboard CSS    -->
    <link href="gerant/css/material-dashboard.css?v=1.2.0" rel="stylesheet" />
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="gerant/css/demo.css" rel="stylesheet" />
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
</head>

<body>
    <div class="wrapper">
        <div class="sidebar" data-color="purple" data-image="gerant/img/sidebar-1.jpg">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
            <div class="logo">
                <a href="#" class="simple-text">
                    Gérant d'hôtel
                </a>
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    
                    <li>
                        <a href="/updateHotel">
                            <i class="material-icons">location_city</i>
                            <p>Hôtel</p>
                        </a>
                    </li>
                    <li >
                        <a href="/createGerant">
                            <i class="material-icons">person</i>
                            <p>Nouveau Gérant</p>
                        </a>
                    </li>
                    <li class="active">
                        <a href="/chambres">
                            <i class="material-icons">hotel</i>
                            <p>Chambres</p>
                        </a>
                    </li>
                    <li>
                        <a href="/prix">
                            <i class="material-icons">monetization_on</i>
                            <p>Prix</p>
                        </a>
                    </li>
                    <li class="active-pro">
                        <a href="logout">
                            <i class="material-icons">backspace</i>
                            <p>Logout</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <nav class="navbar navbar-transparent navbar-absolute">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"> Chambres </a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="material-icons">person</i>
                                    <p class="hidden-lg hidden-md">Profile</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header" data-background-color="purple">
                                    <h4 class="title">Ajouter des nouveaux chambres</h4>
                                    <p class="category">Complétez les informations</p>
                                </div>
                                <div class="card-content">
                                    <form action="addChambres" method="POST" enctype="multipart/form-data">
                                    	<div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Nombre de chambres</label>
                                                    <input type="text" name="nombre" class="form-control" />
                                                </div>
                                            </div>
                                        </div>
                                    	<div class="row">
                                    		<div class="col-md-12">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Type</label>
                                                    <select name="type" class="form-control">
														<option value="1" >Simple</option>
														<option value="2" >Double</option>
														<option value="3" >Triple</option>
														<option value="4" >Familiale</option>
													</select>
                                                </div>
                                            </div>
                                    	</div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Taille</label>
                                                    <input type="text" name="taille" class="form-control" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-1">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Climatisée</label>
                                                    <input type="checkbox" name="climatisation" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Description</label>
                                                    <div class="form-group label-floating">
                                                        <label class="control-label"> </label>
                                                        <textarea name="description" class="form-control" rows="3"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="">
                                                    <label class="control-label">Image de la chambre</label>
                                                    <input type="file" name="image" >
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary pull-right">Ajouter</button>
                                        <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                     
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container-fluid">
                    <nav class="pull-left">
                        <ul>
                            <li>
                                <a href="#">
                                    Home
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Company
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Portfolio
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Blog
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <p class="copyright pull-right">
                        &copy;
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                        <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                    </p>
                </div>
            </footer>
        </div>
    </div>
</body>
<!--   Core JS Files   -->
<script src="gerant/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="gerant/js/bootstrap.min.js" type="text/javascript"></script>
<script src="gerant/js/material.min.js" type="text/javascript"></script>
<!--  Charts Plugin -->
<script src="gerant/js/chartist.min.js"></script>
<!--  Dynamic Elements plugin -->
<script src="gerant/js/arrive.min.js"></script>
<!--  PerfectScrollbar Library -->
<script src="gerant/js/perfect-scrollbar.jquery.min.js"></script>
<!--  Notifications Plugin    -->
<script src="gerant/js/bootstrap-notify.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Material Dashboard javascript methods -->
<script src="gerant/js/material-dashboard.js?v=1.2.0"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="gerant/js/demo.js"></script>
</html>