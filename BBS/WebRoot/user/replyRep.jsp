<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import="com.wang.models.*,com.wang.dao.impl.*"%>
<%

  request.setCharacterEncoding("UTF-8");
  Integer pid = Integer.parseInt(request.getParameter("pid"));
  
  String title = request.getParameter("title");
  String content = request.getParameter("content");
    new ReplyDAOImpl().saveReply(pid, title, content);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<body>

  <script language="JavaScript1.2" type="text/javascript">//  Place this in the 'head' section of your page.  
/*倒计时  */
function delayURL(url) {
  var delay= document.getElementById("time").innerText;
  if(delay>0){
    delay--;
    document.getElementById("time").innerText=delay;
  }else{
      top.location.href=url;
  }
  setTimeout("delayURL('"+url+"')", 1000);
    
}

//-->
/*application/javascript是服务器端处理js文件的mime类型，text/javascript是浏览器处理js的mime类型，后者兼容性更好  */
</script>
  <span id ="time">3 </span>秒钟后自动跳转,如果不跳转，点击以下连接
  <script type="text/javascript">
  delayURL("post_details.jsp?pid=<%=pid%>");
  </script>
  <!-- Place this in the 'body' section -->
  <a href="javascript:"
    onClick="top.location.href='post_details.jsp?pid=<%=pid%>'">点击</a>
</body>
</html>