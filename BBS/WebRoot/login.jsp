<%@ page language="java"  contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- Meta -->
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<!-- End of Meta -->
		
		<!-- Page title -->
		<title>Wide Admin - Login</title>
		<!-- End of Page title -->
		
		<!-- Libraries -->
		<link type="text/css" href="login/css/login.css" rel="stylesheet" />	
		<link type="text/css" href="login/css/smoothness/jquery-ui-1.7.2.custom.html" rel="stylesheet" />	
		
		<script type="text/javascript" src="login/js/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="login/js/easyTooltip.js"></script>
		<script type="text/javascript" src="logon/js/jquery-ui-1.7.2.custom.min.js"></script>
		<!-- End of Libraries -->	
	</head>
	<body>
	<div id="container">
		<div class="logo">
			<a href="#"><img src="login/images/logo.png" alt="" /></a>
		</div>
		<div id="box">
			<form action="index.html" method="POST">
			<!-- <p> 标签定义段落 -->
			<p class="main">
				<label>Username: </label>
				<input name="username" /> 
				<label>Password: </label>
				<input type="password" name="password" >	
			</p>

			<p class="space">
			<!--<span> 标签被用来组合文档中的行内元素。  -->
				<span><input type="checkbox" />Remember me</span>
				<input type="submit" value="Login" class="login" />
			</p>
			</form>
		</div>
	</div>

	</body>
</html>