<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>data</title>
<meta name="viewport" content="initial-scale=1.0,width=device-width" />
<link rel="stylesheet" href="css/style_gra.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/print.css" type="text/css" media="print" />
</head>
<body>


<div id="wrapper">

<!--SKILLS-->
<ul id="skills">
	<!--////////////////////////////////////////////////////////////////////////////////////-->
	<!--Notice the class names indicate the % of your skills. i.e. s70 = 70%, s40 = 40% etc. -->
	<!--////////////////////////////////////////////////////////////////////////////////////-->
	<li id="skill1" class="s36"/>
	 <s:form action="keycomment.action" method="post">
    关键词<input name="key" type="text"> 
	<input value="提交" type="submit"><br>
	</s:form>
	<a href="kpage.action?targetpage=<s:property value="#session.page-1"/>">上一页</a>
	<s:property value="#session.page+1"/>
	<a href="kpage.action?targetpage=<s:property value="#session.page+1"/>">下一页</a>
    <table width="800" border="0">
  		<caption>关键词 ：<span style="color: red"><s:property value="#session.keyword"/></span></caption>
  		<tr>
  			<th>用户</th><th>评分</th><th>评论<s:property value="#session.keycomment.size()"/></th>
  		</tr>
  		<s:iterator value="#session.keycomment" id="f" begin="#session.page*10" end="#session.page*10+9">
  			<tr>
  				<td aligin="center" width="200"><s:property value="#f.username"/></td>
  				<td aligin="center" width="400"><s:property value="#f.score"/></td>
  				<td aligin="center" width="1000"><s:property value="#f.content"/></td>
  				
  			</tr>
  		</s:iterator>
  	</table>
	
	</li>
</ul><!--end skills-->

<div class="clear"></div>

</div><!--end wrapper-->

<!--SCRIPTS-->
<script src="js/jquery.js"></script>
<script src="js/prettyPhoto.js"></script>
<script src="js/backPosition.js"></script>
<script src="js/custom.js"></script>

</body>
</html>