<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="<%=path %>/css/login.css" rel="stylesheet">

</head>

<body>

<div id="title">
  古典文学网站后台管理系统
  </div>
	<form action="<%=path %>/user/alogin.action" method="post">
		<input type="text" placeholder="用户名" name="aname"/><br /> 
		<input type="password" placeholder="密码"  name="apwd"/><br /> 
			
			<%-- <div id="message">${message }</div> --%>
			<input type="submit" value="登    录" class="btn" />
	</form>
</body>
</html>