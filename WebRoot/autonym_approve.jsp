<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>实名认证</title>
    <link rel="stylesheet" href="${basePath}css/autonym_approve.css">
    <script type="text/javascript" src="${basePath}js/autonym_approve.js"></script>
</head>
<body>
    <cm:header></cm:header>
    <div class="content">
        <cm:header_mycenter></cm:header_mycenter>
        <div class="uk-grid autonymApprove">
            <div class="uk-width-2-10">
                <ul class="uk-list safeCenter_autonymApprove">
                    <li>安全中心</li>
                    <li><a href="${basePath}password_settings.jsp">登录密码</a></li>
                    <li><a href="${basePath}bind_email.jsp">绑定邮箱</a></li>
                    <li><a href="${basePath}bind_phone.jsp">绑定手机</a></li>
                    <li><a href="${basePath}pay_password.jsp">支付密码</a></li>
                    <li class="safeCenterSidebarActive_autonymApprove"><a>实名认证</a></li>
                    <li><a href="${basePath}bind_bankCard.jsp">银行卡绑定</a></li>
                </ul>
            </div>
            <div class="uk-width-8-10 step_autonymApprove">
                <div class="tittle_autonymApprove"><i></i>实名认证</div>
                <div class="uk-grid realName_autonymApprove">
                    <div class="uk-width-2-10">
                        <label for="" class="uk-float-right"><i class="color_ed510f">*</i>真实姓名：</label>
                    </div>
                    <div class="uk-width-8-10">
                        <input type="text">
                        <p>为确保您的账户安全，请填写您本人的实名认证信息</p>
                    </div>
                </div>
                <div class="uk-grid IDcard_autonymApprove">
                    <div class="uk-width-2-10">
                        <label for="" class="uk-float-right"><i class="color_ed510f">*</i>身份证号：</label>
                    </div>
                    <div class="uk-width-8-10">
                        <input type="text">
                    </div>
                </div>
                <div class="uk-grid bankNumber_autonymApprove">
                    <div class="uk-width-2-10">
                        <label for="" class="uk-float-right"><i class="color_ed510f">*</i>银行卡号：</label>
                    </div>
                    <div class="uk-width-8-10">
                        <input type="text">
                        <p><i>支持银行</i>仅支持您本人名下的银行卡，输入卡号自动识别银行卡种</p>
                    </div>
                </div>
                <div class="uk-grid phone_autonymApprove">
                    <div class="uk-width-2-10">
                        <label for="" class="uk-float-right"><i class="color_ed510f">*</i>手机号码：</label>
                    </div>
                    <div class="uk-width-8-10">
                        <input type="text">
                        <button>获取手机验证码</button>
                    </div>
                </div>
                <div class="uk-grid message_autonymApprove">
                    <div class="uk-width-2-10">
                        <label for="" class="uk-float-right"><i class="color_ed510f">*</i>短信验证码：</label>
                    </div>
                    <div class="uk-width-8-10">
                        <input type="text">
                    </div>
                </div>
                <div class="uk-grid testing_autonymApprove">
                    <div class="uk-width-2-10">
                        <label for="" class="uk-float-right"><i class="color_ed510f">*</i>验证码：</label>
                    </div>
                    <div class="uk-width-8-10">
                        <input type="text">
                        <button>
                             <img class="inputAuthCode_forgetPassword" src="${jsonPath}common/imgCode" onclick="this.src='${jsonPath}common/imgCode?'+new Date().getTime()">
                        </button>
                        <p>看不清，<a class="change_imgcode">换一张</a></p>
                    </div>
                </div>
                <div class="uk-grid submit_autonymApprove">
                    <div class="uk-width-2-10">
                    </div>
                    <div class="uk-width-8-10">
                        <input type="submit" value="提交">
                    </div>
                </div>
            </div>
        </div>
        <cm:footer_mycenter></cm:footer_mycenter>
    </div>
    <cm:footer></cm:footer>
</body>
<script>
    require(["cookie"],function(cookie){
        $.post("${jsonPath}member/user/security/auth/post/"+subId+"",function(data){
            if(resultCheckCode(data["code"],data["messageDesc"])){
            };
        });
    });
</script>
</html>