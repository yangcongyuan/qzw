<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<input type="hidden" id="head" head="bzzx">
<cm:js />
<cm:css />
<head>
    <meta charset="UTF-8">
    <title>新手指引</title>
    <link rel="stylesheet" href="${basePath}css/new_guide.css">
</head>
<body style="background: #fff !important">
    <cm:header />
    <div class="content newGuide">
        <div class="firstFloor_ng">
            <span class="title_ng">
                <img src="${basePath}images/question_hc.png" alt="">
                <span>
                    <p>帮助中心</p>
                    <small class="uk-hidden-small">Hello,欢迎您来到帮助中心解答疑惑,进一步咨询请拨打400-000-0000</small>
                </span>
            </span>
            <ul class="tab_ng uk-list">
                <li><a href="${basePath}help_center.jsp">首页</a></li>
                <li><a href="${basePath}FAQ.jsp">常见问题</a></li>
                <li class="active1_ng"><a href="">新手指引</a></li>
            </ul>
        </div>
        <div class="secondFloor_ng">
            <div><b>新手指引</b></div>
            <img src="${basePath}images/newGuideImg.png" alt="">
        </div>
    </div>
    <cm:footer />
</body>
</html>