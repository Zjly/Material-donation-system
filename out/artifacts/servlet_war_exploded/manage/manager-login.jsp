<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>后台登录</title> 
<link href="../css/login.css" type="text/css" rel="stylesheet">
</head> 
<body> 

<div class="login">
    <div class="message">管理员-登录</div>
    <div id="darkbannerwrap"></div>

<%--	bookServlet?action=loginPage--%>
    <form method="post" action="managerServlet">
		<input name="action" value="showCheck" type="hidden">
		<input name="username" placeholder="用户名" required="" type="text">
		<hr class="hr15">
		<input name="password" placeholder="密码" required="" type="password">
		<hr class="hr15">
		<input value="登录" style="width:100%;" type="submit">
		<hr class="hr20">
		<!-- 帮助 <a onClick="alert('请联系管理员')">忘记密码</a> -->
	</form>

</div>

</body>
</html>