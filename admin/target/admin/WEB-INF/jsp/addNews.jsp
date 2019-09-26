<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//Dspan HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dspan">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/lang/zh-cn/zh-cn.js"></script>
<title>添加新闻</title>
</head>
<body>
	<center>
		<form action="saveNews" method="post">
			<span>标题:</span>
			<span><textarea rows="2" cols="80" name="title"></textarea></span></br>
			<span>内容:</span>
			<span><textarea name="content" id="ed" style="height:400px;"></textarea></span>
			<span><input type="submit" value="确定"></span>
			<span><input type="reset" value="重置"></span></br>
			<span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="main">首页</a></span>
		</form>
	</center>
</body>
<script type="text/javascript">
	UE.getEditor('ed');
</script>
</html>