<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>银行卡绑定</title>
    <link rel="stylesheet" href="${basePath}css/bind_bankCard.css">
    <script type="text/javascript" src="${basePath}js/bind_bankCard.js"></script>
</head>
<body>
    <cm:header></cm:header>
    <div class="content">
        <cm:header_mycenter></cm:header_mycenter>
        <div class="uk-grid bindBankCard">
            <div class="uk-width-2-10">
                <ul class="uk-list safeCenter_bindBankCard">
                    <li>安全中心</li>
                    <li><a href="${basePath}password_settings.jsp">登录密码</a></li>
                    <li><a href="${basePath}bind_email.jsp">绑定邮箱</a></li>
                    <li><a href="${basePath}bind_phone.jsp">绑定手机</a></li>
                    <li><a href="${basePath}pay_password.jsp">支付密码</a></li>
                    <li><a href="${basePath}autonym_approve.jsp">实名认证</a></li>
                    <li class="safeCenterSidebarActive_bindBankCard"><a>银行卡绑定</a></li>
                </ul>
            </div>
            <div class="uk-width-8-10 step_bindBankCard">
                <div class="tittle_bindBankCard"><i></i>银行卡绑定</div>
                <div class="myBank_bindBankCard">
                    <h1>我的银行卡</h1>
                    <p>已添加 <i>0</i> 张信用卡， <i>1</i> 张储蓄卡</p>
                </div>
                <div class="uk-width-100 bankCardNumer_bindBankCard">
                    <div class=""></div>
                    <div class=""></div>
                </div>
            </div>
        </div>
        <cm:footer_mycenter></cm:footer_mycenter>
    </div>
    <cm:footer></cm:footer>
</body>
</html>