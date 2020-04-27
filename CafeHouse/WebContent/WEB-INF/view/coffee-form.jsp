<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Cafe House Admin Panel</title>

<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/jquery-ui/jquery-ui.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/jquery-ui/jquery-ui.theme.min.css">
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
			</ul>


			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
			
			<li class="nav-item dropdown">
  
        <a class="nav-link" href="reservation-list">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">${reservationCount}</span>
        </a>

      </li>
			
				<!-- Messages Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-user"></i>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media align-items-center">
								<img
									src="${pageContext.request.contextPath}/dist/img/user1-128x128.jpg"
									alt="User Avatar" class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">Brad Diesel</h3>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-user"></i>
							Your Profile
						</a>
						<div class="dropdown-divider"></div>
						<a href="login.html" class="dropdown-item"> <i
							class="fas fa-sign-out-alt"></i> Log Out
						</a>
					</div></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="../" class="brand-link"> <img
				src="${pageContext.request.contextPath}/dist/img/AdminLTELogo.png"
				alt="Cubes School Logo" class="brand-image img-circle elevation-3"
				style="opacity: .8"> <span
				class="brand-text font-weight-light">Cafe House</span>
			</a>

			<div class="sidebar">
				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon far fa-plus-square"></i>
								<p>
									Categories <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="category-list"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Categories list</p>
								</a></li>
								<li class="nav-item"><a href="category-form"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Add Category</p>
								</a></li>
							</ul></li>
						
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon far fa-plus-square"></i>
								<p>
									Coffee <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="coffee-list"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Coffee list</p>
								</a></li>
								<li class="nav-item"><a href="coffee-form"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Add Coffee</p>
								</a></li>
							</ul></li>
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon far fa-plus-square"></i>
								<p>
									Contacts <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="contact-list"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Contacts list</p>
								</a></li>
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Add New Coffee Product</h1>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							
									

									 <form:form role="form" action="coffee-save" modelAttribute="coffee">
              
              							<form:hidden path="id"/>
              
						                <div class="card-body">
						                  <div class="form-group">
						                    <label>Name</label>
						                    <form:input path="name" class="form-control" placeholder="Enter name"/>
						                    <form:errors path="name" cssClass="text-danger" />
						                  </div>
						                 
						                  <div class="form-group">
						                    <label>Description</label>
						                    <form:input path="description" class="form-control" placeholder="Enter description"/>
						                    <form:errors path="description" cssClass="text-danger" />
						                  </div>
						                  
						                  <div class="form-group">
					                        <label>Coffee Category</label>
					                    <form:select path="category.id" itemLabel="name" itemValue="id" items="${categoryList}" class="form-control" />
					                      </div>
						                  
						                  <div class="form-group">
						                    <label>Image</label>
						                    <form:input path="image" class="form-control" placeholder="Enter image"/>
						                    <form:errors path="image" cssClass="text-danger" />
						                  </div>
						                  
						                  <div class="form-group">
						                    <label>Price</label>
						                    <form:input path="price" class="form-control" placeholder="Enter price"/>
						                    <form:errors path="price" cssClass="text-danger" />
						                  </div>
						                  
						                  
						                  <div class="custom-control custom-checkbox">
						                  <form:checkbox class="custom-control-input" id="customCheckbox1" path="showOnTodaySpecial" />
						                  <label for="customCheckbox1" class="custom-control-label">Show on Today Special</label>
						                  </div>
						                  
						                  <div class="custom-control custom-checkbox">
						                  <form:checkbox class="custom-control-input" id="customCheckbox2" path="showOnMenuPage" />
						                  <label for="customCheckbox2" class="custom-control-label">Show on menu page</label>
						                  </div>
						                  
						                  
						                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Save</button>
                </div>
              </form:form>
										
									
								
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->


		</div>
		<!-- /.content-wrapper -->



		<!-- Main Footer -->
		<footer class="main-footer">
			<!-- To the right -->
			<div class="float-right d-none d-sm-inline">Java</div>
			<!-- Default to the left -->
			<strong>Copyright &copy; 2020 <a href="#">Emir Totić</a>.
			</strong> All rights reserved.
		</footer>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jquery-ui/jquery-ui.min.js"></script>
</body>
</html>


             