<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.wang.objects.*, com.wang.service.hibernate.*"%>
<%
	request.setCharacterEncoding("UTF-8");
  Integer pid = Integer.parseInt(request.getParameter("pid"));
  String title = request.getParameter("title");
  String content = request.getParameter("content");
  ReplyDBService.saveReply(pid,title,content);
  
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<body>

	<script>
		document.write("提交成功");
	</script>
</body>
</html>