<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 使用shiro的jsp标签需要的 -->
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>系统管理</title>
	</head>
	<body>
	
	<div>
		<div style="float: left">
			<h3>
				<c:if test="${empty user }">
					<a href="login">请登录</a>
				</c:if>
				<c:if test="${not empty user }">欢迎您:${user.nickname }&nbsp;<a
						href="logout">退出登陆</a>
				</c:if>
			</h3>
		</div>
		<div style="float: right"><a href="clearShiroCache">清除shiro缓存</a></div>
	</div>
	<div style="clear: both;">	
		<center>
			<h1>系统管理</h1>
	
			<c:forEach items="${user.menus }" var="menu">
				<h2>
					<a href="${menu.url }">${menu.name }</a>
				</h2>
			</c:forEach>
	
		</center>
	</div>
	</body>
</html>