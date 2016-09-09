<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>密码修改</title>
    <link rel="stylesheet" href="${basePath}css/password_settings.css">
    <script src="${basePath}js/password_settings.js" type="text/javascript"></script>
</head>
<body>
    <cm:header></cm:header>
    <div class="content">
        <cm:header_mycenter></cm:header_mycenter>
        <div class="uk-grid passwordSettings">
            <div class="uk-width-2-10">
                <ul class="uk-list safeCenter_passwordSettings">
                    <li>安全中心</li>
                    <li class="safeCenterSidebarActive_passwordSettings"><a>登录密码</a></li>
                    <li class="be"><a href="${basePath}bind_email.jsp"></a></li>
                    <li class="bp"><a href="${basePath}bind_phone.jsp"></a></li>
<!--
                    <li><a href="${basePath}pay_password.jsp">支付密码</a></li>
                    <li><a href="${basePath}autonym_approve.jsp">实名认证</a></li>
                    <li><a href="${basePath}bind_bankCard.jsp">银行卡绑定</a></li>
-->
                </ul>
            </div>
            <div class="uk-width-8-10 step_passwordSettings" id="PHONE">
                <div class="tittle_passwordSettings"><i></i>登录密码修改</div>
                <div class="uk-width-100">
                    <div class="stepPlanBox_passwordSettings">
                        <span class="step_slide"></span>
                        <span class="step_animate"></span>
                    </div>
                    <ul class="stepPlan_passwordSettings2">
<!--
                        <li class="active_passwordSettings">
                            <span class="waterDrop_passwordSettings"></span>
                            <p>验证身份</p>
                        </li>
-->
                        <li class="active_passwordSettings">
                            <span class="waterDrop_passwordSettings"></span>
                            <p>修改登录密码</p>
                        </li>
                        <li>
                            <span class="waterDrop_passwordSettings2"></span>
                            <p>完成</p>
                        </li>
                    </ul>
                    <div style="" class="IDtesting">
                        <div class="testingPhoneCode_passwordSettings uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i>*</i>请输入原密码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="password" class="oldPassword">
                            </div>
                        </div>
                        <div class="newPswd_passwordSettings uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i>*</i>新的登录密码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="password" class="newPassword">
                                <p>由字母加数字或符号至少两种以上字符组成的6-16位半角字符，区分大小写</p>
                            </div>
                        </div>
                        <div class="newPswdAgain_passwordSettings uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i>*</i>请再次输入新密码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="password" class="newPasswordA">
                            </div>
                        </div>
                        <div class="submit_passwordSettings uk-grid">
                            <div class="uk-width-3-10">
                            </div>
                            <div class="uk-width-7-10">
                                <button hdiv="IDtesting" sdiv="alterSucceed" class="submit" step="1">提交</button>
                            </div>
                        </div>
                    </div>
                    <div style="display:none;" class="alterSucceed">
                       <div class="alterSucceed_passwordSettings uk-grid">
                           <div class="uk-width-3-10">
                               <img src="${basePath}images/succeedIcon_passwordSettings.png" alt="" class="uk-float-right">
                           </div>
                           <div class="uk-width-7-10">
                               <p class="congratulation_passwordSettings">恭喜您，修改密码成功！</p>
                               <div>
                                   <label for="">最新安全评级：</label>
                                   <div class="safeduBox_passwordSettings">
                                       <span></span>
                                   </div>
                                   <label class="safeduLv_passwordSettings">较高</label>
                               </div>
                               <p>您的账户安全级还能提升哦，快去<a href="safe_center.jsp">安全中心</a>完善其它安全设置提高评级吧！</p>
                           </div>
                       </div>
                    </div>
                </div>
            </div>
        </div>
        <cm:footer_mycenter></cm:footer_mycenter>
    </div>
    <cm:footer></cm:footer>
</body>
<script>
    function updPassword(){
    	layer.load(0, {shade: 0.3});
        $(".submit").click(function(){
            var password = $(".oldPassword").val();
            var passwordNew = $(".newPassword").val();
            var passwordNewA = $(".newPasswordA").val();
            var obj = $(this);
            var step = obj.attr("step");
            if(passwordNew == ''){
                layer.msg("请输入新密码！");
                $(".newPassword").val("");
                $(".newPasswordA").val("");
                return;
            };
            if(!(passwordNew.length < 16 && passwordNew.length >= 6)){
                layer.msg("密码长度应在6~16位之间");
                $(".newPassword").val("");
                $(".newPasswordA").val("");
                return;
            };
            if(passwordNew !== passwordNewA){
                layer.msg("两次密码不一致！");
                $(".newPassword").val("");
                $(".newPasswordA").val("");
                return;
            };
            layer.load(0, {shade: 0.3});
            $.ajax({
                url: jsonPath + "qzw/rest/user/updPassword",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post",
                ajaxSetup: false,
                data: JSON.stringify({
                    "user_id": userId,
                    "password": password,
                    "passwordNew": passwordNew,
                }),
                success: function(data, status){
                    var jsonText = JSON.stringify(data);
                    if(data.errcode == "1"){
                        layer.msg("原密码输入错误！");
                        $(".oldPassword").val("");
                    }else{
                        next_btn($(obj).attr("hdiv"),$(obj).attr("sdiv"));
                        $(".step_slide").animate({left:step*300},1000);
                        $(".step_slide").css({"border-top-left-radius":"0","border-bottom-left-radius":"0"});
                        $(".step_animate").show();
                        $(".step_animate").animate({width:step*300},500);
                        obj.parent().parent().parent().siblings(".stepPlan_passwordSettings2").find("li").eq(step-1).removeClass("active_passwordSettings");
                        obj.parent().parent().parent().siblings(".stepPlan_passwordSettings2").find("li").eq(step-1).addClass("ed");
                        obj.parent().parent().parent().siblings(".stepPlan_passwordSettings2").find("li").eq(step).addClass("active_passwordSettings");
                    }
                    layer.closeAll('loading');
                },
                error: function(request, status, message){
                    layer.msg("网络异常，请重试！");
                }
            });
        });
    }
    require(["app/common"],function(cm){
        updPassword();
        
//获取用户信息
        $.ajax({
            url: jsonPath + "qzw/rest/user/queryUserInfo",
            contentType: "application/json; charset=utf-8",
            dataType: "json", 
            type: "post", 
            data: JSON.stringify({
            	user_id: userId,
            }),
            success: function(data, status){
                $(".bp").children("a").text("修改手机");
                if(!data.email){
                    $(".be").children("a").text("绑定邮箱");
                }else{
                    $(".be").children("a").text("修改邮箱");
                };
                var email = data.email;
                $("#saveSomeMsg").attr("email",email);
                layer.closeAll('loading');
            },
            error: function(request, status, message){
                layer.msg("网络异常，请重试！");
            }
        });
    });
</script>
</html>