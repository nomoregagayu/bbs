<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<% //GB18030����GBK����GB2312 �������ַ����� ����
String path = request.getContextPath(); // �õ�WebApplicaiton·��-BBS
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <!--base��ǩ ��·��  -->
    <title>��һ��MyEclipse��JSP</title>
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
    This is my JSP page. <br>
    <a href ="aaa.html">aaa</a> <!--�൱�ڻ����� http://127.0.0.1:8080/TestMyEclipse/aaa.html-->
    <br>
  </body>
</html>
