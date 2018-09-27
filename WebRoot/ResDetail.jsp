<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
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
	<a href="page.action?targetpage=<s:property value="#session.page-1"/>">上一页</a>
	<s:property value="#session.page"/>
	<a href="page.action?targetpage=<s:property value="#session.page+1"/>">下一页</a>
	<input type="text" name="page" style="width:30px" id="page" value=""/>
    <a href="page.action?targetpage=" onclick="this.href=this.href+document.getElementById('page').value">跳转到此页</a>
    <table id="tb" width="800" border="0">
  		<caption><s:property value="#session.ResDetail.name"/></caption>
  		<tr>
  			<th>用户</th><th>评分</th><th>评论<s:property value="#session.ResDetail.comment.size()"/></th>
  		</tr>
  		<s:iterator  value="#session.ResDetail.comment" id="f" begin="#session.page*10-10" end="#session.page*10-1">
  			<tr>
  				<td aligin="center" width="200"><a href="usercom.action?username=<s:property value="#f.username"/>"><s:property value="#f.username"/></a></td>
  				<td aligin="center" width="400"><s:property value="#f.score"/></td>
  				<td aligin="center" width="1000"><s:property value="#f.content"/></td>
  				</td>
  			</tr>
  		</s:iterator>
  	</table>
  	
  	 <table width="800" border="1">
  		<caption><s:property value="#session.ResDetail.name"/>评论词频统计</caption>
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
  	 <img width="236"  height="326" src="picture/<s:property value='#session.ResDetail.name'/>.png" class="img-responsive" alt="">
  
  </body>
</html>
