<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆</title>
</head>
<body>
	<center>
		<form action="login" method="post">
			<table border="0" cellspacing="0">
				<tr align="center">
					<td>账号:</td>
					<td><input type="text" name="username"></td>
					<td></td>
				</tr>
				<tr align="center">
					<td>密码:</td>
					<td><input type="password" name="password"></td>
					<td></td>
				</tr>
				<tr align="center">
					<td> 验证码:</td>
					<td><input type="text" name="code"></td>
					<td><img alt="验证码" src="codeImage.jsp" onclick="changeCode(this)"></td>
				</tr>
				<tr align="center">
					<td><input type="checkbox" name="remeberMe"/>自动登陆</td>
					<td><input type="submit" value="登陆"></td>
					<td></td>
				</tr>
				<tr align="center">
					<td colspan="3"><p style="color: red">${errMsg }</p></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
<script type="text/javascript">
    function changeCode(o){
        o.src="codeImage.jsp?d="+new Date().getTime();
    }
</script>