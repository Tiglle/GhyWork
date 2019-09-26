<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>登录</title>
	<meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
	<meta name="author" content="Vincent Garreau" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/css/style1.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css"/>
</head>
<body>

<form id="myform" action="login" method="post">
<div id="particles-js">
	<div class="login">
		<div style="width:100%;font-size:20px;color:red;text-align:center;margin:20px 0 -30px 0">${errMsg }</div>
		<div class="login-top">
			登录
		</div>
		<div class="login-center clearfix">
			<div class="login-center-img"><img src="${pageContext.request.contextPath}/images/name.png"/></div>
			<div class="login-center-input">
				<input type="text" name="username" value="" placeholder="请输入您的用户名" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'"/>
				<div class="login-center-input-text">用户名</div>
			</div>
		</div>
		<div class="login-center clearfix">
			<div class="login-center-img"><img src="${pageContext.request.contextPath}/images/password.png"/></div>
			<div class="login-center-input">
				<input type="password" name="password"value="" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
				<div class="login-center-input-text">密码</div>
			</div>
		</div>
		<div class="login-center clearfix">
			<div class="login-center-img"><img src="${pageContext.request.contextPath}/images/name.png"/></div>
			<div class="login-center-input" >
				<input type="text" name="code"  placeholder="请输入验证码" style="width:45%" onfocus="this.placeholder=''" onblur="this.placeholder='请输入验证码'"/><img alt="验证码" src="codeImage.jsp" onclick="changeCode(this)"></br>
				<div class="login-center-input-text">验证码</div>
			</div>
			<div style="margin:20px 0 0 20px;padding:20px 0 0 20px;clear:both;display:block"><input type="checkbox" name="remeberMe" style="width:20px;height:20px;"><span style="font-size:15px;line-height:18px;margin:-22px 0 0 40px;height:20px;display:block;">记住密码<span></div>
		</div>
		<div class="login-button" style="margin-top:-10px" onclick="sub()" >
			登陆
		</div>
	</div>
	<div class="sk-rotating-plane"></div>
</div>
</form>
<!-- scripts -->
<script src="${pageContext.request.contextPath}/js/particles.min.js"></script>
<script src="${pageContext.request.contextPath}/js/app.js"></script>
<script type="text/javascript">
	function sub(){
		var myform = document.getElementById("myform");
		myform.submit();
	}
</script>
</body>
</html>