<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻动态</title>
    <meta name="keywords" content />
    <meta name="description" content/>
    <meta content="telephone=no" name="format-detection" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta name="full-screen" content="yes">
    <link rel="stylesheet" href="css/cui.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/news.css" />
    <script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/lib.js"></script>
	<link rel="stylesheet" href="css/animate.css" />
	<link rel="stylesheet" href="css/flexslider.css" />
	<script type="text/javascript" src="js/flexslider.js"></script>
	<script type="text/javascript" src="js/banner.js"></script>
	<style type="text/css">
		video {
		    height: 10px;
		    margin: 10px;
		    float: none !important;
		}
		.ghydiv {
			overflow: hidden;
		    height: 160px;
		    text-overflow: ellipsis;
		}
	</style>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/images/page2.jpg');background-repeat: no-repeat;background-size: 100%;">
    
<jsp:include page="common/header.jsp"></jsp:include>    

<div class="news1">
	<div class="news2">
		<div class="news3">
            <h3>网站动态</h3>
            <h5>DYNAMIC <span>WEBSITE</span></h5>
        </div>
	</div>
	
	<c:forEach items="${page.data }" var="news">
		<div class="news4">
			<ul>
				<li>
					<div class="ghydiv">
						<a href="detail?newsId=${news.id }">
							<h2>${news.title }</h2>
							<p class="contentp">${news.content }</p>
							<p style="text-align:right;margin-right:10px;">发布时间:<fmt:formatDate value="${news.time}" pattern="yyyy-MM-dd hh:mm:ss" type="date" dateStyle="long" /></p>
						</a>
					</div>
				</li>	
			</ul>
		</div>
	</c:forEach>
</div>

<div class="page">
	<c:if test="${page.pageNow>1 }">
		<a href="list?pageSize=${page.pageSize }&pageNow=${page.pageNow-1}">上一页</a>
	</c:if>
	<c:if test="${page.pageNow<page.pageSum }">
		<a href="list?pageSize=${page.pageSize }&pageNow=${page.pageNow+1}" class="a2">下一页</a>
	</c:if>
</div>

<jsp:include page="common/footer.jsp"></jsp:include>

</body>
</html>