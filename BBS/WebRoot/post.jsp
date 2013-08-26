<%@ page language="java"  contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page
	import="java.sql.*,com.wang.models.*, java.util.*,  org.hibernate.cfg.*,com.wang.dao.impl.*, com.wang.service.impl.*, com.wang.util.Configuration"%>
<%
	Integer pagingNumber = 8;
	request.setCharacterEncoding("UTF-8");
	//currentpage
	Integer currentPage = 1;
	if(request.getParameter("pageNumber")==null || request.getParameter("pageNumber").trim().equals("")) {
	currentPage =1;
	}else{
	currentPage = Integer.parseInt(request.getParameter("pageNumber"));
	}
  //page
	Page pageDetail = new PageManagerImpl().getPage("Post", currentPage);
	//posts
	List<Post> posts = null;
	try {
		posts = (List<Post>) pageDetail.getArticle();
	} catch (Exception ex) {
		out.println(" Unchecked cast from List<post#1-of ? extends Article> to ");
		return;
	}
	%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Java|Java世界_中文论坛|ChinaJavaWorld技术论坛 : Java语言*初级版</title>

<link rel="stylesheet" type="text/css" href="images/style.css"
	title="Integrated Styles">
<script language="JavaScript" type="text/javascript"
	src="images/global.js"></script>
<link rel="alternate" type="application/rss+xml" title="RSS"
	href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?forumID=20">
<script language="JavaScript" type="text/javascript"
	src="images/common.js"></script>
</head>
<body>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td width="140"><a
					href="http://bbs.chinajavaworld.com/index.jspa"><img
						src="images/header-left.gif"
						alt="Java|Java世界_中文论坛|ChinaJavaWorld技术论坛" border="0"> </a></td>
				<td><img src="images/header-stretch.gif" alt="" border="0"
					height="57" width="100%"></td>
				<td width="1%"><div style="background-image:url(images/header-right.gif);height:57px;width:200px"></a><a href="javascript:" onClick="top.location.href='login.jsp'" style="font-size:14px"><U>登录</U></a><a onClick="" style="font-size:14px"><U> 注册</U></a><a onClick="" style="font-size:14px"><U> 登出</U></a>  </div> </td>
			</tr>
		</tbody>
	</table>
	<br>
	<div id="jive-forumpage">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
				<tr valign="top">
					<td width="98%"><p class="jive-breadcrumbs">嘎嘎鱼</p>
						<p class="jive-description">探讨Java语言基础知识,基本语法等 大家一起交流
							共同提高！谢绝任何形式的广告</p>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="jive-buttons">
			<table summary="Buttons" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td class="jive-icon"><a
							href="http://bbs.chinajavaworld.com/post%21default.jspa?forumID=20"><img
								src="images/post-16x16.gif" alt="发表新主题" border="0" height="16"
								width="16"> </a></td>
						<td class="jive-icon-label"><a id="jive-post-thread"
							href="http://bbs.chinajavaworld.com/post%21default.jspa?forumID=20">发表新主题</a>
							<a
							href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20&amp;isBest=1"></a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<br>
		<table border="0" cellpadding="3" cellspacing="0" width="100%">
			<tbody>
				<tr valign="top">
					<!--分页  -->
					<td><span class="nobreak"> 总页数: <%=pageDetail.getTotalPage()%>
							- <span class="jive-paginator"> [ <a
								href=post.jsp?pageNumber=<%=pageDetail.getPrePage() %>>上一页</a>
								| <%
						if (pageDetail.getTotalPage() < pagingNumber){
											  for(int i =1;i<=pageDetail.getTotalPage();i++){
				  	%> <a
								name="page[]"
								href="post.jsp?pageNumber=<%=i%>"
								class=""><%=i%></a> <%
 	            }
 						}else{
                   for(int i =0;i<pagingNumber;i++){
                 %> <a name="page[]"
								href="post.jsp?pageNumber=<%=i%>"
								class=""><%=i%></a> <%
          	}								
 						     }
                 %> 
                 <a
								href=post.jsp?pageNumber=<%=pageDetail.getNextPage() %>>下一页</a>
								] </span> </span>
					</td>
				</tr>
			</tbody>
		</table>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
				<tr valign="top">
					<td width="99%"><div class="jive-thread-list">
							<div class="jive-table">
								<table summary="List of threads" cellpadding="0" cellspacing="0"
									width="100%">
									<thead>
										<tr>
											<th class="jive-first" colspan="3">主题</th>
											<th class="jive-author"><nobr> 作者 &nbsp; </nobr>
											</th>
											<th class="jive-view-count"><nobr> 浏览 &nbsp; </nobr>
											</th>
											<th class="jive-msg-count" nowrap="nowrap">回复</th>
											<th class="jive-last" nowrap="nowrap">最新帖子</th>
										</tr>
									</thead>
									<tbody>
										<%
											for (int i = 0; i < posts.size(); i++) {
										%>
										<tr class="jive-even">
											<td class="jive-first" nowrap="nowrap" width="1%"><div
													class="jive-bullet">
													<img src="images/read-16x16.gif" alt="已读" border="0"
														height="16" width="16">
													<!-- div-->
												</div></td>
											<td nowrap="nowrap" width="1%">&nbsp; &nbsp;</td>
											<td class="jive-thread-name" width="95%"><a
												id="jive-thread-1"
												href="post_details.jsp?pid=<%=posts.get(i).getId()%>"> <%--并且包括ID号--%><%=posts.get(i).getTitle()%></a>
											</td>
											<td class="jive-author" nowrap="nowrap" width="1%"><span
												class=""> <a
													href="http://bbs.chinajavaworld.com/profile.jspa?userID=226030">gagayu</a>
											</span></td>
											<td class="jive-view-count" width="1%"><%=posts.get(i).getViewCount()%></td>
											<td class="jive-msg-count" width="1%">112323</td>
											<td class="jive-last" nowrap="nowrap" width="1%"><div
													class="jive-last-post">
													<%=posts.get(i).getPdate()%>
													<br> by: <a
														href="http://bbs.chinajavaworld.com/thread.jspa?messageID=780182#780182"
														title="jingjiangjun" style="">jingjiangjun &#187;</a>
												</div></td>
										</tr>
										<!--   <tr class="jive-odd">
                    <td class="jive-first" nowrap="nowrap" width="1%"><div class="jive-bullet"> <img src="images/read-16x16.gif" alt="已读" border="0" height="16" width="16">
                        div
                      </div></td>
                    <td nowrap="nowrap" width="1%">&nbsp;
                      &nbsp;</td>
                    <td class="jive-thread-name" width="95%"><a id="jive-thread-2" href="http://bbs.chinajavaworld.com/thread.jspa?threadID=744234&amp;tstart=25">请 兄弟们指点下那里 错误，，，</a></td>
                    <td class="jive-author" nowrap="nowrap" width="1%"><span class=""> <a href="http://bbs.chinajavaworld.com/profile.jspa?userID=226028">403783154</a> </span></td>
                    <td class="jive-view-count" width="1%"> 52</td>
                    <td class="jive-msg-count" width="1%"> 2</td>
                    <td class="jive-last" nowrap="nowrap" width="1%"><div class="jive-last-post"> 2007-9-13 上午8:40 <br>
                        by: <a href="http://bbs.chinajavaworld.com/thread.jspa?messageID=780172#780172" title="downing114" style="">downing114 &#187;</a> </div></td>
                  </tr>
 -->
										<%
											}
										%>
									</tbody>
								</table>
							</div>
						</div>
						<div class="jive-legend"></div></td>
				</tr>
			</tbody>
		</table>
		<br> <br>
	</div>
	<script>
		var obj = document.getElementsByName("page[]");
		obj[
	<%=currentPage-1%>
		].className = "jive-current";
	</script>
</body>
</html>
