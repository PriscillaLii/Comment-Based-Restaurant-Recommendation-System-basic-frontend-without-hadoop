<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CommentNum.jsp' starting page</title>
    
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
    <table width="800" border="1">
  		<caption>所有餐馆评论词频统计</caption>
  		<tr>
  			<th>词汇</th><th>频数</th>
  		</tr>
  		<s:iterator value="#request.Commentlist" id="f">
  			<tr>
  				<td aligin="center" width="400"><s:property value="#f.keyword"/></td>
  				<td aligin="center" width="400"><s:property value="#f.counter"/></td>
  				
  			</tr>
  		</s:iterator>
  	</table>
  </body>
</html>
