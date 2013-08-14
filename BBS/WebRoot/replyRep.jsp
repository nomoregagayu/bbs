<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="com.wang.objects.*, com.wang.service.hibernate.*"%>
<%
	request.setCharacterEncoding("GB18030");
  Integer pid = Integer.parseInt(request.getParameter("pid"));
  String title = request.getParameter("title");
  String content = request.getParameter("content");
  ArticlesDBService.saveArticle(pid,title,content);
  
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<body>

	<script>
		document.write("提交成功");
	</script>
</body>
</html>