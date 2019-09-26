<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div id="hd">
    <div class="wp">
        <div class="logo"><a href="index.html"><img src="${pageContext.request.contextPath}/images/logo.png" alt="花开,花开彼岸，相念相惜却不得相见" width="70" height="70"></a></div>
        <div id="nav">
            <ul>
                <li><a href="index" class="${current==1?'select':'' }">首页</a></li>
                <li><a href="footer" class="${current==2?'select':'' }">丝足佳丽</a></li>
                <li><a href="projectclass" class="${current==3?'select':'' }">丝足项目</a></li>
                <li><a href="list?pageSize=3&pageNow=1" class="${current==4?'select':'' }">网站动态</a></li>
                <li><a href="joinus" class="${current==5?'select':'' }">广招佳丽</a></li>
                <li><a href="contact" class="${current==6?'select':'' }">联系我们</a></li>
            </ul>
        </div>
        <div class="tel">13417590550</div>
    </div>
</div>
