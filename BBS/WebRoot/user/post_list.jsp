<%@ page language="java"  contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page
  import="java.sql.*,com.wang.models.*,com.wang.web.dto.*, java.util.*,  org.hibernate.cfg.*,com.wang.dao.impl.*,com.wang.struts.services.impl.*, com.wang.util.Configuration"%>
  <%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath(); // 拿到WebApplicaiton路径-BBS
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  Integer pagingNumber = 8;
  request.setCharacterEncoding("UTF-8");
  //page
  Page pageDetail = (Page)request.getAttribute("page");
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
<base href="<%=basePath%>"><!--WebRoot的相对路径  -->
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>嘎嘎鱼论坛</title>

<link rel="stylesheet" type="text/css" href="user/images/style.css"
  title="Integrated Styles">
<script language="JavaScript" type="text/javascript"
  src="user/images/global.js"></script>
<link type="text/css" rel="stylesheet" href="user/css/topmenu.css">
<link type="text/css" rel="stylesheet" href="user/css/logreg.css">
<script language="JavaScript" type="text/javascript"
  src="user/images/common.js"></script>
</head>
<body>
  <div style ="height:50px;width:100%;background-color:666666">
    <div class="RegButton" ><a href="javascript:" onClick="top.location.href='user/log_execute'">注册</a></div>
     <div class="LogButton" ><a href="javascript:" onClick="top.location.href='user/reg_execute'">登陆</a></div>
  </div>
  <!--topmenu开始  -->
    <div style="width:100%;height:100px;background-color:dark" > 
    <div id="navmaster">
  <ul>
    <li id="ctl01_liIndex" class="M1Common M1">
      <div style="padding-top:27px;"><a href="http://blog.junengliang.com/">网站首页</a></div>
    </li>
    <li id="ctl01_liQCenter" class="M2Common M2">
      <div style="padding-top:44px;"><a title="论坛首页" href="#">论坛首页</a><span class="bordCss bordBottomCssN"></span></div>
    </li>
    <li id="ctl01_liPrice" class="M3Common M3">
      <div style="padding-top:32px;"><a style="padding:9px 0 0px 21px;" href="#">预留</a></div>
    </li>
    <li id="ctl01_liUseCase" class="M4Common M4">
      <div style="padding-top:23px;"><a href="#">预留</a></div>
    </li>
    <li id="ctl01_liCustomer" class="M5Common M5">
      <div style="padding-top:37px;text-align:left;padding-left:14px;"><a style="" href="#">帮助</a></div>
    </li>
  </ul>
</div>

    
<!--下拉菜单2开始-->
<div id="divDown2" class="downMenu" pdleft="23" style="display:none;z-index:10999;position:absolute;">
  <ul>
    <li><a title="Java" href="#" style="border-top:1px solid #fff;">Java</a> </li>
    <li><a title="Linux" href="#">Linux</a> </li>
    <li><a title=".NET" href="#" target="_blank">.NET</a> </li>
    <li><a title="C++&C" href="#">C++&C</a> </li>
  </ul>
</div>
<!--下拉菜单2结束--> 
    </div>
 <!--topmenu结束  -->
    <div style="background-color:white">
      <table  >
        <tbody>
          <tr >
            <td class="jive-icon"><a
              href="http://bbs.chinajavaworld.com/post%21default.jspa?forumID=20"><img
                src="user/images/post-16x16.gif" alt="发表新主题" border="0" height="16"
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
      <!--分页  -->
    <table border="0" cellpadding="3" cellspacing="0" width="100%" style="background-color:white">
      <tbody>
        <tr valign="top">
          <td><span class="nobreak"> 总页数: <%=pageDetail.getTotalPage()%>
              - <span class="jive-paginator"> [ <a
                href=user/post_list?page.currentPage=<%=pageDetail.getPrePage() %>>上一页</a>
                | <%
            if (pageDetail.getTotalPage() < pagingNumber){
                        for(int i =1;i<=pageDetail.getTotalPage();i++){
            %> <a
                name="page[]"
                href="user/post_list?page.currentPage=<%=i%>"
                class=""><%=i%></a> <%
              }
            }else{
                   for(int i =0;i<pagingNumber;i++){
                 %> <a name="page[]"
                href="user/post_list?page.currentPage=<%=i%>"
                class=""><%=i%></a> <%
            }               
                 }
                 %> 
                 <a
                href=user/post_list?page.currentPage=<%=pageDetail.getNextPage()%>>下一页</a>
                ] </span> </span>
          </td>
        </tr>
      </tbody>
      <!--分页结束  -->
    </table>
    <!--帖子开始  -->
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
                          <img src="user/images/read-16x16.gif" alt="已读" border="0"
                            height="16" width="16">
                          <!-- div-->
                        </div></td>
                      <td nowrap="nowrap" width="1%">&nbsp; &nbsp;</td>
                      <td class="jive-thread-name" width="95%"><a
                        id="jive-thread-1"
                        href="user/reply_list?reply.postId=<%=posts.get(i).getId()%>"> <%--并且包括ID号--%><%=posts.get(i).getTitle()%></a>
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
                    <td class="jive-first" nowrap="nowrap" width="1%"><div class="jive-bullet"> <img src="user/images/read-16x16.gif" alt="已读" border="0" height="16" width="16">
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
    <!--帖子结束  -->
    <br> <br>
  
  <script>
    var obj = document.getElementsByName("page[]");
    obj[
  <%=pageDetail.getCurrentPage()-1%>
    ].className = "jive-current";
  </script>
<!--下拉菜单  -->
<script type="text/javascript">
var navmaster = document.getElementById("navmaster");
var lis = navmaster.getElementsByTagName("li");
var hrefas = navmaster.getElementsByTagName("a");
for (var i = 0; i < lis.length; i++) {
  lis[i].index = i + 1;
  if (lis[i].className.toLowerCase().indexOf("hover") > -1) {
    hoverLi(lis[i]);lis[i].isHover = true;
  }
  lis[i].onmouseover = function () {
    hoverLi(this); sb_setmenunav('divDown' + this.index, true, this);
  }
  lis[i].onmouseout = function () {
    sb_setmenunav('divDown' + this.index, false, this); unHoverLi(this);
  }
  lis[i].onclick = function () {
    var href = this.getElementsByTagName("a")[0].href;
    if (href)
      window.location = href;
  }

}
function getSpanByClassName(ele, className) {
  var spans = ele.getElementsByTagName("span");
  for (var i = 0; i < spans.length; i++) {
    var cName = spans[i].className || "";
    if (cName.toLowerCase() == className.toLowerCase()) {
      return spans[i];
    }
  }
}
function hoverLi(obj) {
  // obj.style.background = 'url(/images/MasterNew/menu_hover_ico' + obj.index + '.png) top left'; obj.style.color = '#fff';
  obj.className = "M" + obj.index + "Common M" + obj.index + "Hover";
  var dda = obj.getElementsByTagName("a")[0];
  //if(!dda.prevColor && dda.style.color!="#ffffff")dda.prevColor = dda.style.color;
  dda.style.color = "#ffffff";
  var span = getSpanByClassName(obj, "bordCss bordBottomCssN") || obj.spanCursor;
  if (span) {
    span.className = "bordCss bordBottomCssNF";
    obj.spanCursor = span;
  }
}
function unHoverLi(obj) {
  if (!obj.isHover) {
    obj.className = "M" + obj.index + "Common M" + obj.index;
    var dda = obj.getElementsByTagName("a")[0];
    dda.style.color = "";
    if (obj.spanCursor) obj.spanCursor.className = "bordCss bordBottomCssN";
  }
}
function openwindowSup(url, name, iWidth, iHeight) {

  var url;                                 //转向网页的地址;
  var name;                           //网页名称，可为空;
  var iWidth;                          //弹出窗口的宽度;
  var iHeight;                        //弹出窗口的高度;
  var iTop = (window.screen.availHeight + 30 - iHeight) / 2;       //获得窗口的垂直位置;
  var iLeft = (window.screen.availWidth + 208 - iWidth) / 2;           //获得窗口的水平位置;
  var param = 'height=' + iHeight + ',width=' + iWidth + ',top=' + iTop + ',left=' + iLeft + ',border=no,toolbar=no,menubar=no,scrollbars=no,resizable=yes,location=no,status=no';
  var o = window.open(url, name, param);
  o.focus();
}

function getCoordsNav(el) {
  var box = el.getBoundingClientRect(),
  doc = el.ownerDocument,
  body = doc.body,
  html = doc.documentElement,
  clientTop = html.clientTop || body.clientTop || 0,
  clientLeft = html.clientLeft || body.clientLeft || 0,
  top = box.top + (self.pageYOffset || html.scrollTop || body.scrollTop) - clientTop,
  left = box.left + (self.pageXOffset || html.scrollLeft || body.scrollLeft) - clientLeft
  return { 'top': top, 'left': left };
};
function sb_setmenunav(name, vis, obj) {
  var d = document.getElementById(name); //要显示隐藏的div
  if (!d) return;
  var padLeft = parseInt(d.getAttribute("pdLeft") || 0);
  if (vis) {
    if (d.timeArray) {
      window.clearTimeout(d.timeArray);
      d.timeArray = 0;
    }
    d.style.display = "block";
    if (!d.onmouseover) {
      d.onmouseover = function () {
        sb_setmenunav(name, true);
      }
      d.onmouseout = function () {
        sb_setmenunav(name, false);
        unHoverLi(obj);
      }
    }
    if (obj) {
      var objp = obj;
      if (objp.parentNode.tagName.toLowerCase() == "li")
        objp = obj.parentNode;
      var xy = getCoordsNav(objp);
      var xias = xy.left;
      //alert(d.offsetWidth);
      var yias = xy.top + objp.offsetHeight;
      padLeft = padLeft || 0;
      d.style.left = xias + padLeft + "px";
      d.style.top = yias + "px"; //;
      
    }
  }
  if (obj && obj.tagName.toLowerCase() == "li") {
    d.needSaveClass = obj;
    d.prevClass = obj.className;

  }
  else if (d.needSaveClass) {
    hoverLi(d.needSaveClass);
  }
  if (!vis) {//延时隐藏，可以移动上去
    if (d.spanCursor) d.spanCursor.className = "bordCss bordBottomCssN";
    d.timeArray = window.setTimeout(function () {
      d.style.display = "none"; d.style.height = "";
    }, 100);
  }

}
</script>
<!--下拉菜单结束  -->
</body>
</html>
