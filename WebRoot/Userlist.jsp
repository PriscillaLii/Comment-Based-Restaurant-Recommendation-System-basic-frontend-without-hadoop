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
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
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
 <s:form action="SearchUser.action" method="post">
    BUPT一下<input name="key" type="text"> 
	<input value="搜索用户" type="submit"><br>
	</s:form>
  <table border="1">
  	<caption>用户列表</caption>
<s:iterator value="#request.userlist" id="f" status="status" >
<s:if test="#status.index % 4 == 0">
<tr>
</s:if>
<td>
<a href="usercom.action?username=<s:property value="#f"/>"><s:property value="#f"/></a>
</td>
<s:if test="#status.index % 4 == 3 || #status.last">
</tr>
</s:if>
</s:iterator> 
</table>
  </body>
</html>
