<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@page import="com.wang.models.*, java.util.*,  com.opensymphony.xwork2.ActionContext" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath(); // 拿到WebApplicaiton路径-BBS
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setContentType("text/html;charset=UTF-8"); 
request.setCharacterEncoding("UTF-8");
ActionContext context=ActionContext.getContext();  
Map parameterMap=context.getParameters(); 
String[] pid = (String[])parameterMap.get("reply.postId");
String[] title = (String[])parameterMap.get("reply.title");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Java|Java世界_中文论坛|ChinaJavaWorld技术论坛 :
  初学java遇一难题！！望大家能帮忙一下 ...</title>
<link rel="stylesheet" type="text/css" href="user/images/style.css"
  title="Integrated Styles">
<script language="JavaScript" type="text/javascript"
  src="user/images/global.js"></script>
<link rel="alternate" type="application/rss+xml" title="RSS"
  href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
  <!-- kindeditor  -->
  <link rel="stylesheet" href="user/kindeditor/themes/default/default.css" />
    <script charset="utf-8" src="user/kindeditor/kindeditor-min.js"></script>
    <script charset="utf-8" src="user/kindeditor/lang/zh_CN.js"></script>
    <script>
      var editor;
      KindEditor.ready(function(K) {
        editor = K.create('textarea[name="reply.content"]', {
          resizeType : 1,
          allowPreviewEmoticons : false,
          allowImageUpload : false,
          items : [
            'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
            'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
            'insertunorderedlist', '|', 'emoticons', 'image', 'link']
        });
      });
    </script>
    <!--kindeditor finish  -->
</head>
<body>
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr>
        <td width="140"><a
          href="http://bbs.chinajavaworld.com/index.jspa"><img
            src="user/images/header-left.gif"
            alt="Java|Java世界_中文论坛|ChinaJavaWorld技术论坛" border="0"> </a>
        </td>
        <td><img src="user/images/header-stretch.gif" alt="" border="0"
          height="57" width="100%">
        </td>
        <td width="1%"><img src="user/images/header-right.gif" alt=""
          border="0">
        </td>
      </tr>
    </tbody>
  </table>
  <br>
  <div id="jive-flatpage">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tbody>
        <tr valign="top">
          <td width="99%"><p class="jive-breadcrumbs">
              <a href="http://bbs.chinajavaworld.com/index.jspa">首页</a> &#187;
              <a
                href="http://bbs.chinajavaworld.com/forumindex.jspa?categoryID=1">ChinaJavaWorld技术论坛|Java世界_中文论坛</a>
              &#187; <a
                href="http://bbs.chinajavaworld.com/category.jspa?categoryID=2">Java
                2 Platform, Standard Edition (J2SE)</a> &#187; <a
                href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20&amp;start=0">Java语言*初级版</a>
            </p>
            <p class="jive-page-title"><%=new String(title[0].getBytes("8859_1")) %></p>
          </td>
          <td width="1%"><div class="jive-accountbox"></div>
          </td>
        </tr>
      </tbody>
    </table>
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tbody>
        <tr valign="top">
          <td width="99%"><div id="jive-message-holder">
              <div class="jive-message-box">
                <div class="jive=table">
                  <div class="jive-messagebox"></div>
                </div>
                <!--表单  -->
                <form action="user/reply_add" method="post">
                  <!--form基本都是post方法  -->
                  <input type="hidden" name="reply.postId" value="<%=pid[0]%>"> 标题:
                  <input type="text" name="reply.title"><br> 内容:
                  <textarea name="reply.content" style="width:700px;height:200px;visibility:hidden;"></textarea>
                  <br> <input type="submit" value="submit">
                </form>
              </div>
              <div class="jive-message-list-footer">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td nowrap="nowrap" width="1%"></td>
                      <td align="center" width="98%"><table border="0"
                          cellpadding="0" cellspacing="0">
                          <tbody>
                            <tr>
                              <td><a
                                href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20"><img
                                  src="user/images/arrow-left-16x16.gif" alt="返回到主题列表"
                                  border="0" height="16" hspace="6" width="16"> </a></td>
                              <td><a
                                href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20">返回到主题列表</a>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>
                      <td nowrap="nowrap" width="1%">&nbsp;</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </td>
          <td width="1%"></td>
        </tr>
      </tbody>
    </table>
  </div>
</body>
</html>
