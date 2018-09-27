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
  <s:form action="SearchRes.action" method="post">
    BUPT一下<input name="key" type="text"> 
	<input value="搜索餐厅" type="submit"><br>
	</s:form>
    <table width="800" border="1">
  		<caption>餐馆列表</caption>
  		<tr>
  			<th>餐馆名称</th><th>评分</th><th>地址</th><th>查看详情</th>
  		</tr>
  		<s:iterator value="#request.Reslist" id="f">
  			<tr>
  				<td aligin="center" width="400"><s:property value="#f.name"/></td>
  				<td aligin="center" width="400"><s:property value="#f.score"/></td>
  				<td aligin="center" width="1000"><s:property value="#f.intro"/></td>
  				<td aligin="center" width="200">
  					<a href="Resdetail.action?ResId=<s:property value="#f.id"/>" 
				 >查看详情</a>
  				</td>
  			</tr>
  		</s:iterator>
  	</table>
  </body>
</html>
