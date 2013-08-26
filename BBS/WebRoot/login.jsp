<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.wang.services.UserManager"%>
<%
	String url = null;
	if (request.getParameter("url") == null
			|| request.getParameter("url").trim() == "") {
		url = "post.jsp";
	} else {
		url = request.getParameter("url");
	}
	if(request.getParameter("username")!=null && request.getParameter("password")!=null){
	
	}
%>
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
<link type="text/css"
	href="login/css/smoothness/jquery-ui-1.7.2.custom.html"
	rel="stylesheet" />

<script type="text/javascript" src="login/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="login/js/easyTooltip.js"></script>
<script type="text/javascript"
	src="logon/js/jquery-ui-1.7.2.custom.min.js"></script>
<!-- End of Libraries -->

  <script>
  function getUrlVars()
{
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for(var i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}
      //得到里面value值
      if(getUrlVars()["err"] =="fail"){
       alert("incorrect name or password");
       }
       else if (getUrlVars()["err"] == "noNameOrPassword"){
       alert("enter password or name");
       }
        </script>
</head>
<body>
	<div id="container">
		<div class="logo">
			<a href="#"><img src="login/images/logo.png" alt="" />
			</a>
		</div>
		<div id="box">
			<form  action="servlet/Login" method="POST">
				<!-- <p> 标签定义段落 -->
				<p class="main">
					<label>Username: </label> <input id="userName" name="userName" />
					<label>Password: </label> <input id="password" type="password"
						name="password">
				</p>

				<p class="space">
					<!--<span> 标签被用来组合文档中的行内元素。  -->
					<span><input type="checkbox" />Remember me</span> <input
						type="submit" value="Login" class="login"
						onClick="login()" />
				</p>
			</form>


		</div>
	</div>

</body>
</html>