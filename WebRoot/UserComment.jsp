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
    
    <title>My JSP 'Reslist.jsp' starting page</title>
    
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
  	
  
  </body>
</html>
