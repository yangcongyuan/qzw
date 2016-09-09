<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="${basePath}css/log_in.css">
</head>
<body>
    <cm:header></cm:header>
    <div class="loginbg_log_in" id="loginbg_log_in">
        <div class="two_btn uk-flex uk-flex-middle uk-flex-center">
            <input type="button" class="login_log_in" value="登录">
            <input type="button" class="register_log_in" value="注册">
            <div class="login_btngroup uk-hidden-large">
            	<a class="uk-button login_log_in">登录</a>
            	<a class="uk-button register_log_in">注册</a>
            </div>
        </div>
        <div class="loginbox_log_in" id="loginbox_log_in">
            <div class="uk-position-relative">
                <h3>登录</h3>
                <div class="user_log_in">
                    <a class="uk-icon-justify uk-icon-user"></a>
                    <input type="text" id="userName" placeholder="手机号/邮箱/用户名" onfocus="this.placeholder=''" onblur="this.placeholder='手机号/邮箱/用户名'">
                </div>
                <div class="password_log_in">
                    <a class="uk-icon-justify uk-icon-lock"></a>
                    <input type="password" id="passWord">
                </div>
                <a href="${basePath}forget_password.jsp#forgetPasswordBg" class="forgetPasw_log_in uk-float-right uk-overflow-hidden">忘记登录密码？</a>
                <a class="loginBtn_log_in" id="login">登录</a>
                <a class="uk-icon-justify uk-icon-close close"></a>
            </div>
        </div>
        <div class="registerbox_log_in" id="registerboxPhone_log_in">
            <div class="uk-position-relative">
                <h3>注册</h3>
                <div class="applyFor_log_in registerName">
                    <a class="uk-icon-justify uk-icon-phone"></a>
                    <input type="text" keyword="手机号" placeholder="请输入您的手机号" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的手机号'">
                </div>
                <div class="authCode_log_in">
                    <input type="text" class="Verify">
                    <botton class="Verify_log_in" verify="phone">发送手机验证</botton>
                </div>
                <div class="password2_log_in registerWord">
                    <a class="uk-icon-justify uk-icon-lock"></a>
                    <input type="password" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'">
                </div>
                <div class="passwordAffirm_log_in registerWordAgain">
                    <a class="uk-icon-justify uk-icon-lock"></a>
                    <input type="password" placeholder="请再次输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请再次输入您的密码'">
                </div>
                <div class="uk-form agree_zcdeal">
                    <div class="uk-form-row">
                        <input type="checkbox" class="ckbox" id="agree_1">
                        <label for="agree_1">同意</label>
                        <a class="gjb_deal" data-uk-modal="{target:'#gjb_deal'}">《盖聚宝注册协议》</a>
                    </div>
                </div>
                <div id="gjb_deal" class="uk-modal">
                    <div class="uk-modal-dialog">
                        <a class="uk-modal-close uk-close close_deal"></a>
                        <p>这是协议内容</p>
                    </div>
                </div>
                <a class="registerBtn_log_in registerBtn">确认</a>
                <!-- <a class="emailRegister">邮箱注册</a> -->
                <a class="uk-icon-justify uk-icon-close close"></a>
            </div>
        </div>
        <div class="registerbox_log_in" id="registerboxEmail_log_in">
            <div class="uk-position-relative">
                <h3>注册</h3>
                <div class="applyFor2_log_in registerName">
                    <a class="uk-icon-justify uk-icon-envelope"></a>
                    <input type="text" keyword="邮箱" placeholder="请输入您的邮箱" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的邮箱'">
                </div>
                <div class="authCode_log_in">
                    <input type="text" class="Verify">
                    <botton class="Verify_log_in" verify="email">发送邮箱验证</botton>
                </div>
                <div class="password2_log_in registerWord">
                    <a class="uk-icon-justify uk-icon-lock"></a>
                    <input type="password" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'">
                </div>
                <div class="passwordAffirm_log_in registerWordAgain">
                    <a class="uk-icon-justify uk-icon-lock"></a>
                    <input type="password" placeholder="请再次输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请再次输入您的密码'">
                </div>
                <div class="invitationCode_log_in">
                    <input type="text" placeholder="没有可不填" onfocus="this.placeholder=''" onblur="this.placeholder='没有可不填'">
                    <botton class="Verify2_log_in">邀请码</botton>
                </div>
                <div class="uk-form agree_zcdeal">
                    <div class="uk-form-row">
                        <input type="checkbox" class="ckbox" id="agree_1">
                        <label for="agree_1">同意</label>
                        <a class="gjb_deal" data-uk-modal="">《盖聚宝注册协议》</a>
                    </div>
                </div>
                <div id="gjb2_deal" class="uk-modal">
                    <div class="uk-modal-dialog">
                        <a class="uk-modal-close uk-close close_deal"></a>
                        <p>这是协议内容</p>
                    </div>
                </div>
                <a class="registerBtn_log_in registerBtn">确认</a>
                <a class="phoneRegister">手机注册</a>
                <a class="uk-icon-justify uk-icon-close close"></a>
            </div>
        </div>
    </div>
    <cm:footer></cm:footer>
</body>
<script>
    var bodyw  = document.body.clientWidth;
    if(getQueryString("click") == 'L'){
        $(".two_btn").fadeOut("fast");
        $(".loginbox_log_in").hide();
        $(".registerbox_log_in").hide();
        $(".loginbox_log_in").slideDown();
    };
    if(getQueryString("click") == 'R'){
        $(".two_btn").fadeOut("fast");
        $(".registerbox_log_in").hide();
        $(".loginbox_log_in").hide();
        $("#registerboxPhone_log_in").slideDown();
    };
 //重发短信验证码
    var wait = 60,t2;
    var c2 = wait;
    function waitime(){
        $(".Verify_log_in").css({"color":"#fff","background":"none","cursor":"default"});
        $(".Verify_log_in").text(c2+"秒后重发");
        $(".Verify_log_in").unbind("click");
        t2=setTimeout("waitime()",1000);
        c2--;
        if(c2<0){
            c2=wait;
            stopwait();
        };
    };
    function stopwait(){
        clearTimeout(t2);
        $(".Verify_log_in").css({"color":"#ed510a","background":"#e5e5e5","cursor":"pointer"});
        $(".Verify_log_in").text("重发验证码");
        $(".Verify").val("");
        getVerify();
    };
    function getVerify(){
        $(".Verify_log_in").click(function(){
            layer.load(0, {shade: 0.3});
            var registerUser = $(this).parent().siblings(".registerName").children("input").val();
            if($(this).attr("verify") == 'phone'){
                if(/^1[3,4,5,7,8]\d{9}$/.test(registerUser)){
                    $.ajax({
                        url: jsonPath + "qzw/rest/user/sendSmsValicodeRegist",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json", 
                        type: "post", 
                        data: JSON.stringify({
                            "cellphone":registerUser
                        }),
                        success: function(data, status){
                            if(data.errcode == "2"){
                            	layer.msg("该手机号已注册！");
                            }else{
                                layer.closeAll('loading');
                            	waitime();
                            }
                        },
                        error: function(request, status, message) {
                            layer.msg("网络异常，请重试！");
                        }
                    });
                }else{
                    layer.msg("手机号码格式不正确！");
                    return;
                };
            }else{
                if(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(registerUser)){
                    $.post("${jsonPath}member/sendRegisterEmailCode",{sendTarget:registerUser,userType:1},function(data){
                        if(resultCheckCode(data["code"],data["messageDesc"])){
                            layer.closeAll('loading');
                            //倒计时开始 /60s
                             waitime();
                        };
                    },"json");
                }else{
                    layer.msg("邮箱格式不正确！");
                    return;
                };
            };
        });
    };
    $(".close").click(function(){
    	window.location.href = "${basePath}log_in.jsp#loginbg_log_in";
    });
    require(["uikit","layer"],function(UI,layer){
        //登录注册弹窗
            $(".login_log_in").click(function(){
                $(".two_btn").fadeOut("fast");
                $("#loginbox_log_in").slideDown();
                if(bodyw < 765){
                    $('html,body').animate({scrollTop: '81px'}, 500);
                }else{
                    $('html,body').animate({scrollTop: '121px'}, 500);
                }
            });
            $(".register_log_in").click(function(){
                $(".two_btn").fadeOut("fast");
                $("#registerboxPhone_log_in").slideDown();
                if(bodyw < 765){
                    $('html,body').animate({scrollTop: '81px'}, 500);
                }else{
                    $('html,body').animate({scrollTop: '121px'}, 500);
                }
            });
            $(".close").click(function(){
                $(this).parent().parent().slideUp();
                $(".two_btn").fadeIn();
                $(this).parent().parent().find("input").val("");
            });
        //手机、邮箱注册切换
            $(".emailRegister").click(function(){
                $("#registerboxPhone_log_in").slideUp();
                $("#registerboxEmail_log_in").slideDown();
            });
            $(".phoneRegister").click(function(){
                $("#registerboxEmail_log_in").slideUp();
                $("#registerboxPhone_log_in").slideDown();
            });
        //获取验证码
        getVerify();
        //登录
    	$("#login").click(function (){
    		layer.load(0, {shade: 0.3});
            var userName = $("#userName").val();
            var passWord = $("#passWord").val();
            if(userName == ""){
            	layer.msg("请输入手机号！");
            	return;
            }
            if(passWord == ""){
            	layer.msg("请输入密码！");
            	return;
            }
            $.ajax({
                url: jsonPath + "qzw/rest/user/queryUserInfo",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post", 
                data: JSON.stringify({
                	"login_name":userName,
                	"password":passWord
                }),
                success: function(data, status) { 
                	//data==null 表示用户名或密码错误
                    if(data == null){
                    	layer.closeAll('loading');
                    	layer.msg("用户名或密码错误！");
                    }else{
                    	layer.closeAll('loading');
                    	sessionStorage["userId"] = data.user_id;
                    	if(data.user_name){
                    		sessionStorage["userName"] = data.user_name;
                    	}else{
                    		sessionStorage["userName"] = data.cellphone;
                    	}
                    	window.location.href = "${basePath }index.jsp";
                    }
                },
                error: function(request, status, message) {
                	layer.msg("网络异常，请重试！");
                }
            });

        });
        //注册
        $(".registerBtn").click(function (){
            var registerName = $(this).siblings(".registerName").children("input").val();
            var registerWord = $(this).siblings(".registerWord").children("input").val();
            var registerWordAgain = $(this).siblings(".registerWordAgain").children("input").val();
            var authCode = $(this).siblings(".authCode_log_in").children("input").val();
            var keyword = $(this).siblings(".registerName").children("input").attr("keyword");
            if(registerName == ""){
                layer.msg("请输入"+keyword+" !");
                return;
            };
            if($(this).siblings(".authCode_log_in").children(".Verify_log_in").attr("verify") == 'phone'){
                if(!(/^1[3,4,5,7,8]\d{9}$/.test(registerName))){
                    layer.msg(keyword+"不正确！");
                    return;
                };
            }else{
                if(!(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(registerName))){
                    layer.msg(keyword+"不正确！");
                    return;
                };
            };
            if(authCode == ""){
                layer.msg("请输入验证码！");
                return;
            };
            if(!(registerWord.length < 16 && registerWord.length >= 6)){
                layer.msg("密码长度应在6~16位之间");
                $(this).siblings(".registerWord").children("input").val("");
                $(this).siblings(".registerWordAgain").children("input").val("");
                return;
            };
            
            if(registerWord !== registerWordAgain){
                layer.msg("两次密码不一致！");
                $(this).siblings(".registerWord").children("input").val("");
                $(this).siblings(".registerWordAgain").children("input").val("");
                return;
            };
            if($(this).siblings(".authCode_log_in").children(".Verify_log_in").attr("verify") == 'phone'){
                var verifyType = "mobile";
            }else{
                var verifyType = "email";
            };
            if($(this).siblings(".agree_zcdeal").children().children(".ckbox").is(":checked")){
                $.ajax({
                    url: jsonPath + "qzw/rest/user/regist",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json", 
                    type: "post", 
                    data: JSON.stringify({
                        "cellphone":registerName,
                        "password":registerWord,
                        "smsValicode":authCode
                    }),
                    success: function(data, status) { 
                    	//data.errcode  0：成功 1：短信验证码错误 2：手机已注册
                        if(data.errcode == "1"){
                        	layer.msg("短信验证码错误！");
                        }else if(data.errcode == "2"){
                        	layer.msg("该手机号已注册！");
                        }else{
                        	layer.msg("注册成功！");
                            $(".registerbox_log_in").slideUp();
                            $(".loginbox_log_in").slideDown();
                        }
                    },
                    error: function(request, status, message) {
                    	layer.msg("网络异常，请重试！");
                    }
                });
            }else{
                layer.msg("请同意盖聚宝注册协议！");
                return;
            };
        });
	});
</script>
</html>