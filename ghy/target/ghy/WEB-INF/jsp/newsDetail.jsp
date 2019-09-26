<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${news.title }</title>
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
		    float: none !important;
		}
    </style>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/images/page4.jpg');background-repeat: no-repeat;background-size: 100%;">

<jsp:include page="common/header.jsp"></jsp:include>

<div class="news1">
    <div class="news2">
        <div class="news3">
            <h3>网站动态</h3>
            <h5>DYNAMIC <span>WEBSITE</span></h5>
        </div>
    </div>
</div>

<div class="newsdetail1">
    <div class="newsdetail2">
        <div class="title">${news.title }</div>
        <div class="time">发布时间:<fmt:formatDate value="${news.time}" pattern="yyyy-MM-dd hh:mm:ss" type="date" dateStyle="long" /></div>
        <div class="content">${news.content }</div>
    </div>
    <div class="page1">
    	<div style="width:49%;float:left">
	    	<p style="float:left">上一篇:</p>
				<c:if test="${not empty prvNews}"><a href="detail?newsId=${prvNews.id }">${prvNews.title }</a></c:if>
				<c:if test="${empty prvNews }"><a href="javascript:void(0)">没有了</a></c:if>
			
		</div>
    	<div style="width:49%;float:right">
		<p style="float:left">下一篇:</p>
        	<c:if test="${not empty nextNews }"><a href="detail?newsId=${nextNews.id }">${nextNews.title }</a></c:if>
			<c:if test="${empty nextNews }"><a href="javascript:void(0)">没有了</a></c:if>
        </div>
    </div>
</div>

<jsp:include page="common/footer.jsp"></jsp:include>

</body>
</html>
