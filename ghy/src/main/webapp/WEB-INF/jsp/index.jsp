<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>深圳丝足|美丝秀深圳丝足|美腿美足|深圳上门服务|深圳丝袜按摩|深圳最好的丝足会所|深圳sm会所|深圳按摩|深圳上门服务</title>
    <meta name="keywords" content="美丝秀深圳丝足|深圳丝跟经典|深圳丝足|美腿美足|深圳上门服务|深圳丝袜按摩|深圳最好的丝足会所|深圳sm会所|深圳按摩|深圳上门服务" />
    <meta name="description" content="美丝秀深圳丝足,提供最专业最贴心的的丝足按摩,丝足上门服务,这里有修长白皙的美腿,性感无暇的脚裸,以及亭亭玉立,阿诺多姿的丝足技师,提供丝足spa、技师全身精油按摩、推拿等养生保健！" />
    <meta name="description" content="美丝秀开,花开彼岸，相念相惜却不得相见。" />
    <meta content="telephone=no" name="format-detection" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta name="full-screen" content="yes">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cui.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
   <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/less.css" /> --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css" />
</head>
<body>

<jsp:include page="common/header.jsp"></jsp:include>

<div class="c"></div><div id="bd">
<div id="banner">
    <div class="banner-bg"></div>
    <div class="flexslider">
        <ul class="slides">
            <li class="s1">
                <img src="${pageContext.request.contextPath}/images/banner1.jpg">
                <div class="ban-txt">
                    <h5 data-animate="fadeInDown" class="animated">release of pressure.</h5>
                    <h2 data-animate="fadeInRight" class="animated">压力的释放</h2>
                    <h3 data-animate="fadeInUp" class="animated">繁华的都市，紧凑的生活节奏，让我来为你释放压力，放飞心情</h3>
                </div>
            </li>
            <li class="s2">
                <img src="${pageContext.request.contextPath}/images/banner2.jpg">
                <div class="ban-txt">
                    <h2 data-animate="fadeInRight" class="animated">Intimate service.</h2>
                    <h3 data-animate="fadeInDown" class="animated">多样的项目</h3>
                    <h4 data-animate="fadeInUp" class="animated">丝足spa、技师顾客全身精油推挤按摩、湿滑丝足按摩、您的要求、就是我努力的方向</h4>
                    <!-- <h6 data-animate="fadeInUp" class="animated">www.tiglle.com</h6> -->
                </div>
            </li>
            <li class="s3">
                <img src="${pageContext.request.contextPath}/images/banner3.jpg">
                <div class="ban-txt">
                    <h2 data-animate="fadeInDown" class="animated">The other side blooms, flowers open the other shore, xiangxi but not to see each other.</h2>
                    <h3 data-animate="fadeInRight" class="animated">多样的项目</h3>
                    <h4 data-animate="fadeInUp" class="animated">各色丝袜、原味品足、黑森林寻宝、撕扯、舔咬性感贴身衣物，制服诱惑...</h4>
                </div>
            </li>
        </ul>
    </div>
</div>
<!-- end #banner -->
<div class="row1 fix">
    <div class="wp">
        <div class="tit-i">
            <h3>网站动态</h3>
            <h5>DYNAMIC <span>WEBSITE</span></h5>
        </div>
        <ul class="ul-icon-i">
        	<c:forEach items="${page.data }" var="news">
	            <li class="li1">
	                <div class="pad">
	                    <a href="list?pageSize=3&pageNow=1" target="_blank">
	                        <!-- <span></span> -->
	                        <h3>${news.title }</h3>
	                        <em></em>
	                        <p class="more1">${news.content }</p>
	                    </a>
	                </div>
	            </li>
	          </c:forEach>
        </ul>
    </div>
</div>
<div class="row2 fix">
    <div class="wp">
        <div class="tit-i">
            <h3>丝足佳丽</h3>
            <h5><span>Silk</span> Footer</h5>
        </div>
        <div class="case-i">
            <div class="case-i-r" style="width: 100%;">
                <ul class="ul-case-i">
                    <li>
                        <a href="javascript:void(0);">
                            <div class="pic"><img src="${pageContext.request.contextPath}/images/girl1.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="${pageContext.request.contextPath}/images/logo_small.png" alt="">
                                    <h3><a href="contact" class="cona">联系我>></a></h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <div class="pic"><img src="${pageContext.request.contextPath}/images/girl2.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="${pageContext.request.contextPath}/images/logo_small.png" alt="">
                                    <h3><a href="contact" class="cona">联系我>></a></h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <div class="pic"><img src="${pageContext.request.contextPath}/images/girl3.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="${pageContext.request.contextPath}/images/logo_small.png" alt="">
                                    <h3><a href="contact" class="cona">联系我>></a></h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <div class="pic"><img src="${pageContext.request.contextPath}/images/girl4.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="${pageContext.request.contextPath}/images/logo_small.png" alt="">
                                    <h3><a href="contact" class="cona">联系我>></a></h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <div class="pic"><img src="${pageContext.request.contextPath}/images/girl5.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="${pageContext.request.contextPath}/images/logo_small.png" alt="">
                                    <h3><a href="contact" class="cona">联系我>></a></h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <div class="pic"><img src="${pageContext.request.contextPath}/images/girl6.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="${pageContext.request.contextPath}/images/logo_small.png" alt="">
                                    <h3><a href="contact" class="cona">联系我>></a></h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <div class="pic"><img src="${pageContext.request.contextPath}/images/girl7.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="${pageContext.request.contextPath}/images/logo_small.png" alt="">
                                    <h3><a href="contact" class="cona">联系我>></a></h3>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <div class="pic"><img src="${pageContext.request.contextPath}/images/girl8.jpg"></div>
                            <div class="hover">
                                <b></b>
                                <div class="txt">
                                    <img src="${pageContext.request.contextPath}/images/logo_small.png" alt="">
                                    <h3><a href="contact" class="cona">联系我>></a></h3>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="c"></div>
            <div style="height:50px;"></div>
        </div>
    </div>
</div>
<div class="solution" id="solution">
    <div class="wp">
        <div class="tit-i">
            <h3>联系我们</h3>
            <h5>Contact<span> us</span></h5>
            <dl>
                <dt></dt>
                <dd class="pr">
                	<p style="font-size:15px;">微信 : 13417590550</p>
                	<p style="font-size:15px;">微信扫一扫</p>
                    <p><a href="javascript:void(0);" class="weixin"></a><img src="${pageContext.request.contextPath}/images/ewm_2.jpg" alt=""></span></p>
                   	<p><a href="javascript:void(0)" class="sina" target="_blank"><img alt="" src="${pageContext.request.contextPath}/images/weibo.jpg"></a></p>
                    <p><b class="tel" style="font-size:30px;">13417590550</b></p>
                    <h5>美丝秀客服热线</h5>
                </dd>
            </dl>
        </div>
    </div>
</div>
</div>
<!--  -->
<jsp:include page="common/footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
	$.ajax({
		url:'revice',
		type:'post',
	});
</script>
</html>