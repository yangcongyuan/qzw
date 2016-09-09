<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>绑定邮箱</title>
    <link rel="stylesheet" href="${basePath}css/bind_email.css">
    <script type="text/javascript" src="${basePath}js/bind_email.js"></script>
</head>
<body>
    <cm:header></cm:header>
    <div class="content">
        <cm:header_mycenter></cm:header_mycenter>
        <div class="uk-grid bindEmail">
            <div class="uk-width-2-10">
                <ul class="uk-list safeCenter_bindEmail">
                    <li>安全中心</li>
                    <li><a href="${basePath}password_settings.jsp">登录密码</a></li>
                    <li class="safeCenterSidebarActive_bindEmail"><a></a></li>
                    <li><a href="${basePath}bind_phone.jsp"></a></li>
<!--
                    <li><a href="${basePath}pay_password.jsp">支付密码</a></li>
                    <li><a href="${basePath}autonym_approve.jsp">实名认证</a></li>
                    <li><a href="${basePath}bind_bankCard.jsp">银行卡绑定</a></li>
-->
                </ul>
            </div>
            <div class="uk-width-8-10 step_bindEmail" id="emailAlter">
                <div class="tittle_bindEmail"><i></i>修改邮箱</div>
                <div class="uk-width-100">
                    <div class="stepPlanBox_bindEmail">
                        <span class="step_slide"></span>
                        <span class="step_animate"></span>
                    </div>
                    <ul class="stepPlan_bindEmail">
                        <li class="active_bindEmail">
                            <span class="waterDrop_bindEmail"></span>
                            <p>验证身份</p>
                        </li>
                        <li>
                            <span class="waterDrop_bindEmail2"></span>
                            <p>修改邮箱</p>
                        </li>
                        <li>
                            <span class="waterDrop_bindEmail3"></span>
                            <p>完成</p>
                        </li>
                    </ul>
                    <div style="" class="IDtesting">
                        <div class="testingPhone_bindEmail uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right titleVE"></label>
                            </div>
                            <div class="uk-width-7-10">
                                <span class="vedEmail"></span>
                            </div>
                        </div>
                        <div class="testingPhoneCode_bindEmail uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right">请填写邮箱验证码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text" class="Verify">
                                <button class="getVerificationCode" alter="T" id="step_1">获取邮箱验证码</button>
                            </div>
                        </div>
                        <div class="submit_bindEmail uk-grid">
                            <div class="uk-width-3-10">
                            </div>
                            <div class="uk-width-7-10">
                                <button hdiv="IDtesting" sdiv="newPassword" class="submit" step="1">提交</button>
                            </div>
                        </div>
                    </div>
                    <div style="display:none;" class="newPassword">
                        <div class="newPswd_bindEmail uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i>*</i>我的邮箱：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="email" class="bindNewEmail">
                                <p>请输入您的常用邮箱</p>
                            </div>
                        </div>
                        <div class="testingPhoneCode_bindEmail uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right">请填写邮箱验证码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text" class="Verify">
                                <button class="getVerificationCode" alter="T" id="step_2">获取邮箱验证码</button>
                            </div>
                        </div>
                        <div class="submit_bindEmail uk-grid">
                            <div class="uk-width-3-10">
                            </div>
                            <div class="uk-width-7-10">
                                <button hdiv="newPassword" sdiv="alterSucceed" class="submit" step="2">提交</button>
                            </div>
                        </div>
                    </div>
                    <div style="display:none;" class="alterSucceed">
                       <div class="alterSucceed_bindEmail uk-grid">
                           <div class="uk-width-3-10">
                               <img src="${basePath}images/succeedIcon_passwordSettings.png" alt="" class="uk-float-right">
                           </div>
                           <div class="uk-width-7-10">
                               <p class="congratulation_bindEmail">恭喜您，修改邮箱成功！</p>
                               <div>
                                   <label for="">最新安全评级：</label>
                                   <div class="safeduBox_bindEmail">
                                       <span class="level"></span>
                                   </div>
                                   <label class="safeduLv_bindEmail levelmodify">较高</label>
                               </div>
                               <p>您的账户安全级还能提升哦，快去<a href="safe_center.jsp">安全中心</a>完善其它安全设置提高评级吧！</p>
                           </div>
                       </div>
                    </div>
                </div>
            </div>
            <div class="uk-width-8-10 step_bindEmail" id="emailBind">
                <div class="tittle_bindEmail"><i></i>绑定邮箱</div>
                <div class="uk-width-100">
                    <div class="stepPlanBox_bindEmail">
                        <span class="step_slide"></span>
                        <span class="step_animate"></span>
                    </div>
                    <ul class="stepPlan_bindEmail2">
                        <li class="active_bindEmail">
                            <span class="waterDrop_bindEmail"></span>
                            <p>绑定邮箱</p>
                        </li>
                        <li>
                            <span class="waterDrop_bindEmail2"></span>
                            <p>完成</p>
                        </li>
                    </ul>
                    <div class="newPassword">
                        <div class="newPswd_bindEmail uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i>*</i>我的邮箱：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="email">
                                <p>请输入您的常用邮箱</p>
                            </div>
                        </div>
                        <div class="testingPhoneCode_bindEmail newPswdAgain_bindEmail uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i class="color_ed510f">*</i>请填写邮箱验证码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text" class="Verify">
                                <button class="getVerificationCode" id="step_bindNew">获取邮箱验证码</button>
                            </div>
                        </div>
                        <div class="submit_bindEmail uk-grid">
                            <div class="uk-width-3-10">
                            </div>
                            <div class="uk-width-7-10">
                                <button hdiv="newPassword" sdiv="alterSucceed" class="submit" step="1">提交</button>
                            </div>
                        </div>
                    </div>
                    <div style="display:none;" class="alterSucceed">
                       <div class="alterSucceed_bindEmail uk-grid">
                           <div class="uk-width-3-10">
                               <img src="${basePath}images/succeedIcon_passwordSettings.png" alt="" class="uk-float-right">
                           </div>
                           <div class="uk-width-7-10">
                               <p class="congratulation_bindEmail">恭喜您，绑定邮箱成功！</p>
                               <div>
                                   <label for="">最新安全评级：</label>
                                   <div class="safeduBox_bindEmail">
                                       <span class="level"></span>
                                   </div>
                                   <label class="safeduLv_bindEmail levelmodify">较高</label>
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
    <input type="hidden" id="saveSomeMsg">
</body>
<script>
//验证码倒计时
    var wait = 60,t2;
    var c2 = wait;
    function waitime(id){
        $("#"+id).css({"border":"none","background":"none","cursor":"default"});
        $("#"+id).text(c2+"秒后重发");
        $("#"+id).unbind("click");
        t2=setTimeout("waitime('"+id+"')",1000);
        c2--;
        if(c2<0){
            c2=wait;
            stopwait($("#"+id));
        };
    };
//重发验证码倒计时
    function stopwait(obj){
        clearTimeout(t2);
        $(obj).css({"border":"1px solid #dadada","background":"#f9f9f9","cursor":"pointer"});
        $(obj).text("重发验证码");
        $(".inputAuthCode_forgetPassword").click();
        getVerifyCode();
    };
    
//获取验证码
    function getVerifyCode(){
        $(".getVerificationCode").each(function(){
            $(this).click(function(){
                var obj = $(this);
//                var tittle_bindEmail = obj.parent().parent().parent().parent().parent(".step_bindEmail").children(".tittle_bindEmail").text();
                var email = $("#saveSomeMsg").attr("email");
                var step = obj.parent().parent().siblings(".submit_bindEmail").find("button").attr("step");
                if(email && step == '1'){
                	layer.load(0, {shade: 0.3});
                    $.ajax({
                        url: jsonPath + "qzw/rest/user/sendValicode",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json", 
                        type: "post", 
                        data: JSON.stringify({
                            "phone_mail": email
                        }),
                        success: function(data, status){
                            waitime(obj.attr("id"));
                            layer.closeAll('loading');
                        },
                        error: function(request, status, message) {
                            layer.msg("网络异常，请重试！");
                        }
                    });
                }else{
                    var bindEmail = $(this).parent().parent().siblings(".newPswd_bindEmail").find("input").val();
                    if(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(bindEmail)){
                    	layer.load(0, {shade: 0.3});
                        $.ajax({
                            url: jsonPath + "qzw/rest/user/sendEmailValicodeBind",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json", 
                            type: "post", 
                            data: JSON.stringify({
                                "email": bindEmail
                            }),
                            success: function(data, status) { 
                                //data.errcode  0：成功  2：邮箱已绑定
                                if(data.errcode == "2"){
                                    layer.msg("邮箱已绑定！");
                                }else{
                                    waitime(obj.attr("id"));
                                }
                                layer.closeAll('loading');
                            },
                            error: function(request, status, message) {
                                layer.msg("网络异常，请重试！");
                            }
                        });
                    }else{
                        layer.msg("邮箱格式不正确！");
                    }
                }
            })
        });
    };
    
    require(["app/common"],function(cm){
    	layer.load(0, {shade: 0.3});
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
            	layer.closeAll('loading');
                $(".safeCenterSidebarActive_bindEmail").next("li").children("a").text("修改手机");
                if(!data.email){
                    $(".safeCenterSidebarActive_bindEmail").children("a").text("绑定邮箱");
                    $("#emailAlter").hide();
                    $("#emailBind").show();
                    $(".vedEmail").text("");
                    $(".titleVE").text("未验证：");
                }else{
                    $(".safeCenterSidebarActive_bindEmail").children("a").text("修改邮箱");
                    $("#emailBind").hide();
                    $("#emailAlter").show();
                    $(".vedEmail").text(data.email);
                    $(".titleVE").text("已验证邮箱：");
                };
                var email = data.email;
                $("#saveSomeMsg").attr("email",email);
            },
            error: function(request, status, message){
                layer.msg("网络异常，请重试！");
            }
        });
        
//获取验证码
        getVerifyCode();
        
//验证邮箱验证码 并跳转完成。
        $(".submit").click(function(){
            var obj = $(this);
            var tittle_bindEmail = $(this).parent().parent().parent().parent().parent(".step_bindEmail").children(".tittle_bindEmail").text();
            var vedEmail = $(".vedEmail").text();
            var valicode = $(this).parent().parent().siblings(".testingPhoneCode_bindEmail").find("input").val();
            if(tittle_bindEmail == '修改邮箱'){
                if(obj.attr("step") == '1'){
                	layer.load(0, {shade: 0.3});
                    $.ajax({
                        url: jsonPath + "qzw/rest/user/valiValicode",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json", 
                        type: "post", 
                        data: JSON.stringify({
                            "phone_mail": vedEmail,
                            "valicode": valicode,
                        }),
                        success: function(data, status) { 
                        	layer.closeAll('loading');
                            if(data.errcode == '0'){
                                next_btn(obj.attr("hdiv"),obj.attr("sdiv"));
                                $(".step_slide").animate({left:"200"},1000);
                                $(".step_slide").css({"border-top-left-radius":"0","border-bottom-left-radius":"0"});
                                $(".step_animate").show();
                                $(".step_animate").animate({width:"200"},500);
                                $(".stepPlan_bindEmail").find("li").eq(0).removeClass("active_bindEmail").addClass("ed");
                                $(".stepPlan_bindEmail").find("li").eq(1).addClass("active_bindEmail");
                                c2 = 60;
                                clearTimeout(t2);
                            }else{
                                layer.msg("验证码输入错误！")
                            };
                        },
                        error: function(request, status, message) {
                            layer.msg("网络异常，请重试！");
                        }
                    });
                }else{
                    var bindNewEmail = $(".bindNewEmail").val();
                    if(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(bindNewEmail)){
                    	layer.load(0, {shade: 0.3});
                        $.ajax({
                            url: jsonPath + "qzw/rest/user/bindEmail",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json", 
                            type: "post", 
                            data: JSON.stringify({
                                "user_id": userId,
                                "email": bindNewEmail,
                                "valicode": valicode,
                            }),
                            success: function(data, status) { 
                            	layer.closeAll('loading');
                                //data.errcode  0：成功 1：验证码错误 2：邮箱已绑定
                                switch(data.errcode){
                                    case "0": 
                                        next_btn(obj.attr("hdiv"),obj.attr("sdiv"));
                                        $(".step_slide").animate({left:"400"},1000);
                                        $(".step_slide").css({"border-top-left-radius":"0","border-bottom-left-radius":"0"});
                                        $(".step_animate").show();
                                        $(".step_animate").animate({width:"400"},500);
                                        $(".stepPlan_bindEmail").find("li").eq(1).removeClass("active_bindEmail").addClass("ed");
                                        $(".stepPlan_bindEmail").find("li").eq(2).addClass("active_bindEmail");
                                        break;
                                    case "1": 
                                        layer.msg("验证码输入错误！");
                                        break;
                                    case "2": 
                                        layer.msg("邮箱已绑定！");
                                        break;
                                    default: ;
                                }
                            },
                            error: function(request, status, message) {
                                layer.msg("网络异常，请重试！");
                            }
                        });
                    }else{
                        layer.msg("邮箱格式不正确！")
                    }
                }
            }else{
                var email = obj.parent().parent().siblings(".newPswd_bindEmail").find("input").val();
                if(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(email)){
                	layer.load(0, {shade: 0.3});
                    $.ajax({
                        url: jsonPath + "qzw/rest/user/bindEmail",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json", 
                        type: "post",
                        data: JSON.stringify({
                            "user_id": userId,
                            "email": email,
                            "valicode": valicode
                        }),
                        success: function(data, status){
                        	layer.closeAll('loading');
                            switch(data.errcode){
                                case "0": 
                                    next_btn(obj.attr("hdiv"),obj.attr("sdiv"));
                                    $(".step_slide").animate({left:"50%"},1000);
                                    $(".step_slide").css({"border-top-left-radius":"0","border-bottom-left-radius":"0"});
                                    $(".step_animate").show();
                                    $(".step_animate").animate({width:"50%"},500);
                                    $(".stepPlan_bindEmail2").find("li").eq(0).removeClass("active_bindEmail").addClass("ed");
                                    $(".stepPlan_bindEmail2").find("li").eq(1).addClass("active_bindEmail");
                                    break;
                                case "1": 
                                    layer.msg("验证码输入错误！");
                                    break;
                                case "2": 
                                    layer.msg("邮箱已绑定！");
                                    break;
                                default: ;
                            }
                        },
                        error: function(request, status, message) {
                            layer.msg("网络异常，请重试！");
                        }
                    });
                }else{
                    layer.msg("邮箱格式错误！");
                    return;
                };
            };
        });
    });
</script>
</html>