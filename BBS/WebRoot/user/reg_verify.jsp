<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import="com.wang.models.*,com.wang.web.dto.*,com.wang.dao.impl.*,java.util.*,  com.opensymphony.xwork2.ActionContext" %>
<%
String path = request.getContextPath(); // 拿到WebApplicaiton路径-BBS
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("UTF-8");
Page pageDetail = (Page)request.getAttribute("page");
ActionContext context=ActionContext.getContext();  
Map  parameterMap=context.getParameters();  
String[] pid = (String[])parameterMap.get("reply.postId");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<base href="<%=basePath%>">
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
  地址已发送到邮箱。<span id ="time">3 </span>秒钟后自动跳转,如果不跳转，点击以下连接
  <script type="text/javascript">
  delayURL("user/post_list");
  </script>
  <!-- Place this in the 'body' section -->
  <a href="javascript:"
    onClick="top.location.href='user/post_list'">点我点我点我</a>
</body>
</html>