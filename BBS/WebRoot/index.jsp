<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% //GB18030大于GBK大于GB2312 包含的字符大于 字数
String path = request.getContextPath(); // 拿到WebApplicaiton路径-BBS
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <!--base标签 基路径  -->
  <title>Index</title>
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <!--
  <link rel="stylesheet" type="text/css" href="styles.css">
  -->
  </head>
  
  <body>
    index <br>
    <a href ="post.jsp">aaa</a> <!--相当于基连接 http://127.0.0.1:8080/TestMyEclipse/aaa.html-->
    <br>
  </body>
</html>
