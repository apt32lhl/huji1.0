<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%  
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
	<h2>用户信息:</h2>
	<c:if test="${users.size()==0 }">
		您还没有客户。
	</c:if>
	<c:if test="${users.size()!=0 }">
		
			<table border="1">
				
				<tr>
					<td>用户名：${user.username }</td>
					<td>密码：${user.password }</td>
					
				</tr>
			</table>
	</c:if>
	<a href="card/start">系统主页面</a>
</body>
</html>