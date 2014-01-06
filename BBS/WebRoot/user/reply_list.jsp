<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import="com.wang.models.*,com.wang.web.dto.*,java.util.*,com.wang.dao.impl.*, java.text.SimpleDateFormat,  com.opensymphony.xwork2.ActionContext"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath(); // 拿到WebApplicaiton路径-BBS
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Page pageDetail = (Page)request.getAttribute("page");
ActionContext context=ActionContext.getContext();  
Map  parameterMap=context.getParameters();  
String[] pid = (String[])parameterMap.get("reply.postId");
//replys
List<Reply> replys = null;
try {
	replys = (List<Reply>) pageDetail.getArticle();
} catch (Exception ex) {
  out.println(" Unchecked cast from List<post#1-of ? extends Article> to ");
  return;
}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<base href="<%=basePath%>">
<!-- dreamweaver 编译-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
<head>
<title>Untitled Document</title>
<link rel="stylesheet" type="text/css" href="user/images/style.css"
	title="Integrated Styles">
<script language="JavaScript" type="text/javascript"
	src="user/images/global.js"></script>
<link rel="alternate" type="application/rss+xml" title="RSS"
	href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td><img src="user/images/header-stretch.gif" alt="" border="0"
					height="57" width="100%">
				</td>
				<td width="1%"><img src="user/images/header-right.gif" alt=""
					border="0"></td>
			</tr>
		</tbody>
	</table>
	<br>
	<div id="jive-flatpage">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
				<tr valign="top">
					<td width="99%"><p class="jive-breadcrumbs">
							<a href="http://bbs.chinajavaworld.com/index.jspa">asdasdasd</a> &#187;
							<a
								href="http://bbs.chinajavaworld.com/forumindex.jspa?categoryID=1">ChinaJavaWorld</a>
							&#187; <a
								href="http://bbs.chinajavaworld.com/category.jspa?categoryID=2">Java
								2 Platform, Standard Edition (J2SE)</a> &#187; <a
								href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20&amp;start=0">laterrr</a>
						</p>
						<p class="jive-page-title">&nbsp<%=replys.get(0).getTitle() %></p>
					</td>
					<td width="1%"><div class="jive-accountbox"></div>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="jive-buttons">
			<table summary="Buttons" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td class="jive-icon"><a
							href="http://bbs.chinajavaworld.com/post%21reply.jspa?threadID=744236"><img
								src="user/images/reply-16x16.gif" alt="回复帖子" border="0" height="16"
								width="16"> </a>
						</td>
						<td class="jive-icon-label"><a id="jive-reply-thread"
							href="reply.jsp?pid=<%=pid[0]%>&title=<%=replys.get(0).getTitle() %>">回复帖子</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<br>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
				<tr valign="top">
					<td width="99%"><div id="jive-message-holder">
							<div class="jive-message-list">
								<div class="jive-table">
									<div class="jive-messagebox">
										<!--reply开始  -->
										<%
											for (int i = 0; i < replys.size(); i++) {
										%>
										<!--个人开始  -->
										<table summary="Message" border="0" cellpadding="0"
											cellspacing="0" width="100%">
											<tbody>
												<tr id="jive-message-780144" class="jive-odd" valign="top">
													<td class="jive-first" width="1%">
														<!-- reply table -->
														<table border="0" cellpadding="0" cellspacing="0"
															width="150">
															<tbody>
																<tr>
																	<td><table border="0" cellpadding="0"
																			cellspacing="0" width="100%">
																			<tbody>
																				<tr valign="top">
																					<td style="padding: 0px;" width="1%"><nobr>
																							<a
																								href="http://bbs.chinajavaworld.com/profile.jspa?userID=215489"
																								title="<%=replys.get(i).getUser().getName() %>"><%=replys.get(i).getUser().getName() %></a>
																						</nobr></td>
																				</tr>
																			</tbody>
																		</table> <img class="jive-avatar"
																		src="user/images/avatar-display.png" alt="" border="0">
																		<br> <br> <span class="jive-description">
																			发表: <%=replys.get(i).getUser().getPosted() %> <br> 等级: <%=replys.get(i).getUser().getCredit() %><br> 注册时间: <%= (replys.get(i).getUser().getRtime().getYear()+1900)+"/"+(replys.get(i).getUser().getRtime().getMonth()+1)+"/"+replys.get(i).getUser().getRtime().getDate() %> <br>
																			 </span></td>
																</tr>
															</tbody>
														</table> <!--个人结束--></td>
													<td class="jive-last" width="99%"><table border="0"
															cellpadding="0" cellspacing="0" width="100%">
															<tbody>
																<tr valign="top">
																	<td width="1%"></td>
																	<td width="91%"><span class="jive-subject"><%=replys.get(i).getTitle() %>
																			</span></td>
																	<td class="jive-rating-buttons" nowrap="nowrap"
																		width="1%"></td>
																	<td width="7%"><div class="jive-buttons">
																			<table border="0" cellpadding="0" cellspacing="0">
																				<tbody>
																					<tr align="right" >
																						<td width="200000">&nbsp;</td>
																						<td width="20" align="right" class="jive-icon"><a
																							href="http://bbs.chinajavaworld.com/post%21reply.jspa?messageID=780144"
																							title="回复"><img
																								src="user/images/reply-16x16.gif" alt="回复"
																								border="0" height="16" width="16"> </a></td>
																						<td width="80"  align="right" class="jive-icon-label"><a
																							href="user/reply_edit?reply.postId=<%=pid[0]%>&reply.title=<%=replys.get(i).getTitle() %>" title="回复"> 回复</a></td>
																				</tr>
																				
																				</tbody>
																			</table>
																		</div>
																	</td>
																</tr>
																<tr>
																<td width="1%" height="91"></td>
																	<td colspan="4"
																		style="border-top: 1px solid rgb(204, 204, 204);"><br>
																  <%=replys.get(i).getContent()%> <br> <br></td>
															  </tr>
																<tr>
																<td width="1%"></td>
																	<td colspan="4" style="font-size: 9pt;"><img
																		src="user/images/sigline.gif"><br> <font
																		color="#568ac2"><%=replys.get(i).getUser().getSign() %></font> <br>
																	</td>
																</tr>
																<tr>
																	
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>
										<%
											}
										%>
										<!--reply结束  -->
									</div>
								</div>
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
																	src="user/images/arrow-left-16x16.gif" alt="返回主页"
																	border="0" height="16" hspace="6" width="16"> </a></td>
															<td><a
																href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20">返回主页</a>
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
