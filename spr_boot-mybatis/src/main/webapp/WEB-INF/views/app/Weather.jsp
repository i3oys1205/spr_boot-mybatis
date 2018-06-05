<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Weather</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="colorful.css" type="text/css">
<link rel="stylesheet" href="css/weather-icons.css" type="text/css">

</head>
<body>
	<div class="col-md-12 col-12 col-sm-12 col-lg-12 col-xl-12 ">
		<div class="card">
			<div class="card-header text-center bg-info">
				<div class="row">
					<div class="de-in col-md-6 col-6 col-sm-6 col-lg-6 col-xl-6">
						<i class="wicon fa-5x wi de-in"></i>
					</div>
					<div class="de-in col-md-6 col-6 col-sm-6 col-lg-6 col-xl-6 text-right">
						<h5 class="apparentTemperature m-0 de-in"></h5>
						<i class="wi fa-1x wi-celsius de-in"></i>
						<h6 class="summary m-0">
							</h5>
							<h6 class="timezon m-0">
								</h5>
					</div>
				</div>
			</div>
			<div class="card-body border py-1 text-info">
				<div class="row">
					<div class="col-md-4 col-4 col-sm-4 col-lg-4 col-xl-4">
						<i class="fa-2x wi wi-strong-wind d-block"></i><span class="windGust ft-size-13"></span>
					</div>
					<div class="col-md-4 col-4 col-sm-4 col-lg-4 col-xl-4">
						<i class="fa-2x wi wi-humidity d-block"></i><span class="precipProbability ft-size-13"></span>
					</div>
					<div class="col-md-4 col-4 col-sm-4 col-lg-4 col-xl-4">
						<i class="fa-2x wi wi-cloud d-block"></i><span class="visibility ft-size-13"></span>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="modal msg-modal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title msg-title"></h5>
					<button type="button" class="close" data-dismiss="modal">
						<span>×</span>
					</button>
				</div>
				<div class="modal-body">
					<p class="msg-contents"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
				</div>
			</div>
		</div>
	</div>

	<script src="assets/js/jquery-3.2.1.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/app/Weather.js"></script>
</body>
</html>
