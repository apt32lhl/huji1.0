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
<title>Insert title here</title>
</head>
<body>
修改密码
	<form:form action="user/updatePassw" method="post" modelAttribute="user" name="updateForm" >
	姓名：
	<form:input id="username" path="username"/>	
	密码：
	<form:password id="password" path="password"/>
	确认密码：
	<form:password id="repassword" path="repassword"/>
	<input type="submit" value="确认修改">
	<input type="reset" value="重置">
	</form:form>
	<a href="index.jsp">跳转到登录或注册页面</a>
</body>
</html>