<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="refresh" content="2; url=home">
	<title>스프링테스트</title>
	<title>스프링테스트</title>
<link href="${resPath}/user/vendor/bootstrap/css/loading2.css" rel="stylesheet">

</head>
<body>
<div class="loader">
  <div class="loader__inner">
    <span class="loader__text">loading</span>
  </div>
</div>


</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lettering.js/0.7.0/jquery.lettering.min.js"></script>
<script>
$(document).ready(function() {
	$(".loading").lettering();
});
</script>
</html>