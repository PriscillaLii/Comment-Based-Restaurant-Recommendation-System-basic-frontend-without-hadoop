<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  登陆成功！<br>
	<a href="alluser.action">显示所有用户</a><br>		
	发表文章回复：<br>
	<s:form action="Warticle.action" method="post">
    文章名称<input name="a.name" type="text"> <br>
    作者<input name="a.author" type="text"> <br>
    评论<input name="a.comment" type="text"> <br>
	<input value="提交" type="submit"><br>
	</s:form>	  	
  </body>
</html>
