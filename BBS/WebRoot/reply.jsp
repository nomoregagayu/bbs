<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	Integer pid = Integer.parseInt(request.getParameter("id"));
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>Java|Java����_������̳|ChinaJavaWorld������̳ :
	��ѧjava��һ���⣡��������ܰ�æһ�� ...</title>
<meta http-equiv="content-type" content="text/html; charset=GBK">
<link rel="stylesheet" type="text/css" href="images/style.css"
	title="Integrated Styles">
<script language="JavaScript" type="text/javascript"
	src="images/global.js"></script>
<link rel="alternate" type="application/rss+xml" title="RSS"
	href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
</head>
<body>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td width="140"><a
					href="http://bbs.chinajavaworld.com/index.jspa"><img
						src="images/header-left.gif"
						alt="Java|Java����_������̳|ChinaJavaWorld������̳" border="0"> </a></td>
				<td><img src="images/header-stretch.gif" alt="" border="0"
					height="57" width="100%"></td>
				<td width="1%"><img src="images/header-right.gif" alt=""
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
							<a href="http://bbs.chinajavaworld.com/index.jspa">��ҳ</a> &#187;
							<a
								href="http://bbs.chinajavaworld.com/forumindex.jspa?categoryID=1">ChinaJavaWorld������̳|Java����_������̳</a>
							&#187; <a
								href="http://bbs.chinajavaworld.com/category.jspa?categoryID=2">Java
								2 Platform, Standard Edition (J2SE)</a> &#187; <a
								href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20&amp;start=0">Java����*������</a>
						</p>
						<p class="jive-page-title">����: ��ѧjava��һ���⣡��������ܰ�æһ�� лл��</p></td>
					<td width="1%"><div class="jive-accountbox"></div></td>
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
								<!--��  -->
								<form action="replyRep.jsp" method="post">
									<!--form��������post����  -->
									<input type="hidden" name="pid" value="<%= pid%>"> ����: <input
										type="text" name="title"><br> ����:
									<textarea name="content" rows="10" cols="40"></textarea>
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
																	src="images/arrow-left-16x16.gif" alt="���ص������б�"
																	border="0" height="16" hspace="6" width="16"> </a>
															</td>
															<td><a
																href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20">���ص������б�</a>
															</td>
														</tr>
													</tbody>
												</table></td>
											<td nowrap="nowrap" width="1%">&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div></td>
					<td width="1%"></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
