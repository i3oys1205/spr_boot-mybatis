<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="icon">
<title>API</title>
<meta name="author" content="Style">
<style type="text/css">
html, body {
	height: 100%;
	margin: 0;
}
iframe {
	display: block;
	border: none;
	width: 100%;
	height: 100vh;
}
.loader {
  position: absolute;
  left: 50%;
  top: 50%;
  z-index: 1;
  width: 150px;
  height: 150px;
  margin: -75px 0 0 -75px;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}
.de-none{
	display: none;
}
/* Safari */
@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>
<body>
	<div class="loader"></div>
	<iframe class="de-none" src="/index" onload="onFrameComplate(this)" frameborder="0" height="150%" width="150%"></iframe>
	<script src="assets/js/jquery-3.2.1.js"></script>
	<script>
		function onFrameComplate(){
			$('div').removeClass('loader');
			$('iframe').removeClass('de-none');
		}
	</script>
</body>
</html>