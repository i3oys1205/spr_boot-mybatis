<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- PAGE settings -->
<link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
<title>Styleguide</title>
<meta name="author" content="Pingendo">
<!-- CSS dependencies -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="colorful.css" type="text/css">
</head>

<body style="background-image: url('/image/background/${background}'); background-size: auto;">
	<div class="py-5m-0">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-12 col-sm-12 col-lg-12 col-xl-12 text-center">
					<h1 class="js-hour big-title text-white de-in">02</h1>
					<h1 class="text-white de-in">&nbsp;:&nbsp;</h1>
					<h1 class="js-min big-title text-white de-in">30</h1>
					<h1 class="text-white de-in">&nbsp;:&nbsp;</h1>
					<h1 class="js-sec big-title text-white de-in">55</h1>
					<h1 class="text-white de-in">&nbsp;</h1>
					<h1 class="js-h24 text-white de-in">PM</h1>
				</div>
			</div>


		</div>
	</div>
	<div class="py-5">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-12 col-sm-12 col-lg-12 col-xl-12 ">
					<ul class="nav nav-pills mx-auto ul-center">
						<li class="nav-item">
							<a href="" class="nav-link dot active" data-toggle="pill" data-target="#view_1">&nbsp;</a>
						</li>
						<li class="nav-item">
							<a href="" class="nav-link" data-toggle="pill" data-target="#view_2">&nbsp;</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="" data-toggle="pill" data-target="#view_3">&nbsp;</a>
						</li>
					</ul>
					<div class="tab-content mt-2">
						<div class="tab-pane fade show active" id="view_1" role="tabpanel">
							<div class="row">
								<div class="col-md-4 text-center col-4 col-sm-4 col-lg-4 col-xl-4">
									<a class="app" href="#">
										<i class="fa fa-skyatlas fa-5x d-block text-info"></i>
										<div class="blockquote text-white">
											<p class="mb-0">Weather</p>
											<div class="blockquote-footer">Last Update 2018 05 31</div>
										</div>
									</a>
								</div>
								<div class="col-md-4 text-center col-4 col-sm-4 col-lg-4 col-xl-4">
									<a class="app" href="#">
										<i class="fa fa-android fa-5x d-block text-success"></i>
										<div class="blockquote text-white">
											<p class="mb-0">Android</p>
											<div class="blockquote-footer">Last Update 2018 05 28</div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-md-4 text-center col-4 col-sm-4 col-lg-4 col-xl-4"></div>
						</div>
						<div class="tab-pane fade" id="view_2" role="tabpanel"></div>
						<div class="tab-pane fade" id="view_3" role="tabpanel"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="app-panel de-none m-w100">
		<div class="col-md-12 col-12 col-sm-12 col-lg-12 col-xl-12">
			<div class="card">
				<div class="card-header text-center">
					<i class="hd-icon fa fa-skyatlas fa-2x text-info"></i><span class="hd-name">Weather</span> <i class="fa fa-window-close-o fa-2x fl-right pointer"></i>
				</div>
				<div class="card-body">
					<div class="lod loder"></div>
					<iframe id="app-contents" frameborder="0" height="100%" width="100%"></iframe>
				</div>
			</div>
		</div>
	</div>

	<c:forEach var="time" items="${nTime}">
		<input type="hidden" value="${time.year}">
		<input type="hidden" value="${time.month}">
		<input type="hidden" value="${time.day}">
		<input type="hidden" value="${time.hour}">
		<input type="hidden" value="${time.min}">
		<input type="hidden" value="${time.sec}">
	</c:forEach>

	<script src="assets/js/jquery-3.2.1.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>
