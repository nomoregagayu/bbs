<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.wang.struts.services.UserManager, java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath(); // 拿到WebApplicaiton路径-BBS
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Map errorMsgs =null;
if(request.getAttribute("errors")!=null){
	errorMsgs = (Map)request.getAttribute("errors");
}
	%>
<!DOCTYPE html>
<html>
<head>
<!-- Meta -->
<base href="<%=basePath%>"><!--WebRoot的相对路径  -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- End of Meta -->

<!-- Page title -->
<title>Wide Admin - Login</title>
<!-- End of Page title -->

<!-- Libraries -->
<link type="text/css" href="user/login/css/login.css" rel="stylesheet" />
<link type="text/css"
	href="user/login/css/smoothness/jquery-ui-1.7.2.custom.html"
	rel="stylesheet" />

<script type="text/javascript" src="user/login/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="user/login/js/easyTooltip.js"></script>
<script type="text/javascript"
	src="user/login/js/jquery-ui-1.7.2.custom.min.js"></script>
<!-- End of Libraries -->
  <script>
  var error ="<%=errorMsgs.get("error")%>";
   if(error != "null"){
	   alert(error);
   }
	   
  </script>


</head>
<body>
<s:debug></s:debug>
	<div id="container">
		<div class="logo">
			<a href="#"><img src="user/login/images/logo.png" alt="" />
			</a>
		</div>
		<div id="box">
			<form  action="user/login_verify" method="POST">
				<!-- <p> 标签定义段落 -->
				<p class="main">
					<label>Username: </label> <input id="userName" name="user.name" />
					<label>Password: </label> <input id="password" type="password"
						name="user.password">
				</p>

				<p class="space">
					<!--<span> 标签被用来组合文档中的行内元素。  -->
					<span><input type="checkbox" />Remember me</span> <input
						type="submit" value="Login" class="login"
						 />
				</p>
			</form>


		</div>
	</div>
</body>
</html>