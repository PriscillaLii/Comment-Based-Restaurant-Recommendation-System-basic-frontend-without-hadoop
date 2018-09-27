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
    <table id="tb" width="800" border="0">
  		<caption><s:property value="#request.clist.get(0).username"/></caption>
  		<tr>
  			<th>被评论的餐馆</th><th>评分</th><th>评论<s:property value="#request.clist.size()"/></th>
  		</tr>
  		<s:iterator  value="#request.clist" id="f" status="status">
  			<tr>
  				<td aligin="center" width="400"><a href="Resdetail.action?ResId=<s:property value="#request.alist[#status.index].id"/>"><s:property value="#request.alist[#status.index].name"/></a></td>
  				<td aligin="center" width="400"><s:property value="#f.score"/></td>
  				<td aligin="center" width="1000"><s:property value="#f.content"/></td>
  				</td>
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