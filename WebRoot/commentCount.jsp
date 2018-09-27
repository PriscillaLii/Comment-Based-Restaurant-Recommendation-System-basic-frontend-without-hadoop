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
	<s:iterator value="#request.Commentlist" id="f" status="status">
	<li id="skill1" class="s<s:property value='#request.frequency[#status.index]'/>"><span><s:property value="#f.keyword"/>:<s:property value="#f.counter"/>   </span></li>
	</s:iterator>
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