<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>忘记密码</title>
    <link rel="stylesheet" href="${basePath}css/forget_password.css">
    <script type="text/javascript" src="${basePath}js/forget_password.js"></script>
</head>
<body>
    <cm:header></cm:header>
    <div class="forgetPasswordBg" id="forgetPasswordBg">
        <div class="forgetPasswordBox_forgetPassword" id="EMAIL">
            <h1 class="findPassword_forgetPassword">找回密码</h1>
            <div class="emailStep1"  step="1">
                <div class="uk-grid uk-grid-collapse verify sendTarget">
                    <div class="uk-width-3-10">
                        <label for="" class="uk-float-right">请输入邮箱：</label>
                    </div>
                    <div class="uk-wdith-7-10">
                        <input type="email">
                    </div>
                </div>
                <div class="uk-grid uk-grid-collapse verify verifyCode">
                    <div class="uk-width-3-10">
                        <label for="" class="uk-float-right">请填写邮箱校验码：</label>
                    </div>
                    <div class="uk-wdith-7-10">
                        <input type="text" class="Verify">
                        <button class="getAuthCode_forgetPassword" verify="email" id="email1">获取邮箱验证码</button>
                    </div>
                </div>
                <div class="uk-grid uk-grid-collapse verify">
                    <div class="uk-width-3-10"></div>
                    <div class="uk-wdith-7-10">
                        <input type="submit" class="submit_forgetPassword" value="提交" hdiv="emailStep1" sdiv="emailStep2" verify="email" step="1">
                    </div>
                </div>
                <div class="uk-grid uk-grid-collapse verify">
                    <div class="uk-width-3-10"></div>
                    <div class="uk-wdith-7-10">
                        <a class="changeStyle_forgetPassword E_phone">通过手机验证</a>
                        <a href="${basePath}log_in.jsp#loginbg_log_in" class="changeStyle_forgetPassword" style="margin-left:30px;">返回登录</a>
                    </div>
                </div>
            </div>
            <div class="emailStep2"  step="2">
                <div class="uk-grid uk-grid-collapse newPassword password">
                    <div class="uk-width-3-10">
                        <label for="" class="uk-float-right"><i>*</i>新的登录密码：</label>
                    </div>
                    <div class="uk-width-7-10">
                        <input type="password">
                        <p>由字母加数字或符号至少两种以上字符组成的6-20位半角字符，区分大小写</p>
                    </div>
                </div>
                <div class="uk-grid uk-grid-collapse newPassword passwordRepeat">
                    <div class="uk-width-3-10">
                        <label for="" class="uk-float-right"><i>*</i>请再次输入新密码：</label>
                    </div>
                    <div class="uk-width-7-10">
                        <input type="password">
                    </div>
                </div>
                <div class="uk-grid uk-grid-collapse newPassword">
                    <div class="uk-width-3-10"></div>
                    <div class="uk-width-7-10">
                        <input type="submit" class="submit_forgetPassword" value="提交" hdiv="emailStep2" sdiv="emailStep3" verify="email">
                    </div>
                </div>
            </div>
            <div class="emailStep3 uk-flex uk-flex-center uk-flex-middle" step="3">
                <div class="alterSucceedIcon_forgetPassword">
                    <img src="${basePath}images/succeedIcon_passwordSettings.png" alt="">
                </div>
                <div class="alterSucceed_forgetPassword">
                    <h1>恭喜您，修改密码成功！</h1>
                    <p>30秒后将自动跳转至登陆页面......剩余跳转时间<i class="cuttime"></i>秒</p>
                    <a href="${basePath}log_in.jsp#loginbg_log_in">[点此跳转]</a>
                </div>
            </div>
        </div>
        <div class="forgetPasswordBox_forgetPassword" style="display:none;" id="PHONE">
            <h1 class="findPassword_forgetPassword">找回密码</h1>
            <div class="phoneStep1"  step="1">
                <div class="uk-grid uk-grid-collapse verify sendTarget">
                    <div class="uk-width-3-10">
                        <label for="" class="uk-float-right">请输入手机号：</label>
                    </div>
                    <div class="uk-wdith-7-10">
                        <input type="text">
                    </div>
                </div>
                <div class="uk-grid uk-grid-collapse verify verifyCode">
                    <div class="uk-width-3-10">
                        <label for="" class="uk-float-right">请填写手机校验码：</label>
                    </div>
                    <div class="uk-wdith-7-10">
                        <input type="text" class="Verify">
                        <button class="getAuthCode_forgetPassword" verify="phone" id="phone1">获取手机验证码</button>
                    </div>
                </div>
                <div class="uk-grid uk-grid-collapse verify">
                    <div class="uk-width-3-10"></div>
                    <div class="uk-wdith-7-10">
                        <input type="submit" class="submit_forgetPassword" value="提交" hdiv="emailStep1" sdiv="emailStep2" step="1" verify="phone">
                    </div>
                </div>
                <div class="uk-grid uk-grid-collapse verify">
                    <div class="uk-width-3-10"></div>
                    <div class="uk-wdith-7-10">
                        <a class="changeStyle_forgetPassword P_email">通过邮箱验证</a>
                        <a href="${basePath}log_in.jsp#loginbg_log_in" class="changeStyle_forgetPassword" style="margin-left:30px;">返回登录</a>
                    </div>
                </div>
            </div>
            <div class="phoneStep2"  step="2">
                <div class="uk-grid uk-grid-collapse newPassword password">
                    <div class="uk-width-3-10">
                        <label for="" class="uk-float-right"><i>*</i>新的登录密码：</label>
                    </div>
                    <div class="uk-width-7-10">
                        <input type="password">
                        <p>由字母加数字或符号至少两种以上字符组成的6-20位半角字符，区分大小写</p>
                    </div>
                </div>
                <div class="uk-grid uk-grid-collapse newPassword passwordRepeat">
                    <div class="uk-width-3-10">
                        <label for="" class="uk-float-right"><i>*</i>请再次输入新密码：</label>
                    </div>
                    <div class="uk-width-7-10">
                        <input type="password">
                    </div>
                </div>
                <div class="uk-grid uk-grid-collapse newPassword">
                    <div class="uk-width-3-10"></div>
                    <div class="uk-width-7-10">
                        <input type="submit" class="submit_forgetPassword" value="提交" hdiv="emailStep2" sdiv="emailStep3" verify="phone">
                    </div>
                </div>
            </div>
            <div class="phoneStep3 uk-flex uk-flex-center uk-flex-middle" step="3">
                <div class="alterSucceedIcon_forgetPassword">
                    <img src="${basePath}images/succeedIcon_passwordSettings.png" alt="">
                </div>
                <div class="alterSucceed_forgetPassword">
                    <h1>恭喜您，修改密码成功！</h1>
                    <p>30秒后将自动跳转至登陆页面......剩余跳转时间<i class="cuttime"></i>秒</p>
                    <a href="${basePath}log_in.jsp#loginbg_log_in">[点此跳转]</a>
                </div>
            </div>
        </div>
    </div>
    <cm:footer></cm:footer>
</body>
<script>
//验证码倒计时
    var wait = 60,t2;
    var c2 = wait;
    function waitime(obj){
        $("#"+obj).css({"border":"none","background":"none","cursor":"default"});
        $("#"+obj).text(c2+"秒后重发");
        $("#"+obj).unbind("click");
        t2=setTimeout("waitime('"+obj+"')",1000);
        c2--;
        if(c2<0){
            c2=wait;
            stopwait(obj);
        };
    };
//重发验证码倒计时
    function stopwait(obj){
        clearTimeout(t2);
        $("#"+obj).css({"border":"1px solid #dadada","background":"#f9f9f9","cursor":"pointer"});
        $("#"+obj).text("重发验证码");
        $(".Verify").val("");
        $("#"+obj).click();
        getVerifyCode();
    };
//发送验证码
    function getVerifyCode(){
        $(".getAuthCode_forgetPassword").click(function(){
            var sendTarget = $(this).parent().parent().siblings(".sendTarget").find("input").val();
            if($(this).attr("verify") == 'email'){
                if(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(sendTarget)){
                    sendTarget = sendTarget;
                    var thisId = $(this).attr("id");
                }else{
                    layer.msg("邮箱格式不正确！");
                    return;
                }
            }else{
                if(/^1[3,4,5,7,8]\d{9}$/.test(sendTarget)){
                    sendTarget = sendTarget;
                    var thisId = $(this).attr("id");
                }else{
                    layer.msg("手机格式不正确！");
                    return;
                }
            };
            $.ajax({
                url: jsonPath + "qzw/rest/user/sendValicodeFindPwd",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post", 
                data: JSON.stringify({
                    "phone_mail": sendTarget,
                }),
                success: function(data, status){
                    waitime(thisId);
                },
                error: function(request, status, message) {
                    layer.msg("网络异常，请重试！");
                }
            });
        });
    };

    require(["app/common"],function(){
//发送验证码
        getVerifyCode();
        $(".submit_forgetPassword").click(function(){
            var step = $(this).attr("step");
            var sendTarget = $(this).parent().parent().siblings(".sendTarget").find("input").val();
            var verifyCode = $(this).parent().parent().siblings(".verifyCode").find("input").val();
            var verify = $(this).attr("verify");
            if(step == 1){
                $.ajax({
                    url: jsonPath + "qzw/rest/user/valiFindPwd",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json", 
                    type: "post", 
                    data: JSON.stringify({
                        "phone_mail": sendTarget,
                        "valicode": verifyCode,
                    }),
                    success: function(data, status) { 
                        //data.errcode  0：成功 1:验证码错误  2：用户不存在
                        if(data.errcode == '0'){
                            $("."+verify+"Step1").slideUp("fast");
                            $("."+verify+"Step2").slideDown();
                            $("."+verify+"Step2").attr("acc",sendTarget);
                            $("."+verify+"Step2").attr("v",verifyCode);
                        }else if(data.errcode == '1'){
                            layer.msg("验证码错误！");
                        }else{
                            layer.msg("用户不存在！");
                        }
                    },
                    error: function(request, status, message) {
                        layer.msg("网络异常，请重试！");
                    }
                });
            }else{
                var sendTarget = $("."+verify+"Step2").attr("acc");
                var verifyCode = $("."+verify+"Step2").attr("v");
                var password = $(this).parent().parent().siblings(".password").find("input").val();
                var passwordRepeat = $(this).parent().parent().siblings(".passwordRepeat").find("input").val();
                if(!password){
                    layer.msg("请输入新密码！");
                    return;
                }
                if(!(password.length < 16 && password.length >= 6)){
                    layer.msg("密码长度应在6~16位之间");
                    $(this).parent().parent().siblings(".password").find("input").val("");
                    $(this).parent().parent().siblings(".passwordRepeat").find("input").val("");
                    return;
                };
                if(password !== passwordRepeat){
                    layer.msg("两次密码不一致！");
                    $(this).parent().parent().siblings(".password").find("input").val("");
                    $(this).parent().parent().siblings(".passwordRepeat").find("input").val("");
                    return;
                };
                $.ajax({
                    url: jsonPath + "qzw/rest/user/resetPwd",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json", 
                    type: "post", 
                    data: JSON.stringify({
                        "phone_mail": sendTarget,
                        "valicode": verifyCode,
                        "password": password
                    }),
                    success: function(data, status){ 
                        //data.errcode  0：成功 1:验证码错误  2：用户不存在
                        switch (data.errcode){ 
                            case '0' : 
                                    $("."+verify+"Step2").slideUp("fast");
                                    $("."+verify+"Step3").css({"display":"flex"});
                                    $(".findPassword_forgetPassword").slideUp("fast");
                                    waitime2();
                                    break; 
                            case '1' : 
                                    layer.msg("验证码错误！");
                                    break;
                            case '2' :
                                    layer.msg("用户不存在！");
                                    break;
                            default:
                        } 
                    },
                    error: function(request, status, message) {
                        layer.msg("网络异常，请重试！");
                    }
                });
            }
        });
    });
</script>
</html>