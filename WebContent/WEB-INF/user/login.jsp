<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>  
  <base href="<%=basePath%>"> 
  <meta http-equiv="Content-Type" content="text/html; charset=GB18030">
    <title>后台登录</title>
  </head>
  <body>
  登录页面
  	<form:form action="user/login" modelAttribute="user" method="post">
	姓名：<form:input path="username" />
	密码：<form:password path="password" />
		<input type="submit" value="提交">
		<input type="reset" value="重置">
	</form:form>
	${errorMessage }<br>
	<a href="index.jsp">跳转到登录或注册页面</a>
  </body>
</html>