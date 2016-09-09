<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>绑定手机</title>
    <link rel="stylesheet" href="${basePath}css/bind_phone.css">
    <script type="text/javascript" src="${basePath}js/bind_phone.js"></script>
</head>
<body>
    <cm:header></cm:header>
    <div class="content">
        <cm:header_mycenter></cm:header_mycenter>
        <div class="uk-grid bindPhone">
            <div class="uk-width-2-10">
                <ul class="uk-list safeCenter_bindPhone">
                    <li>安全中心</li>
                    <li><a href="${basePath}password_settings.jsp">登录密码</a></li>
                    <li><a href="${basePath}bind_email.jsp"></a></li>
                    <li class="safeCenterSidebarActive_bindPhone"><a></a></li>
<!--
                    <li><a href="${basePath}pay_password.jsp">支付密码</a></li>
                    <li><a href="${basePath}autonym_approve.jsp">实名认证</a></li>
                    <li><a href="${basePath}bind_bankCard.jsp">银行卡绑定</a></li>
-->
                </ul>
            </div>
            <div class="uk-width-8-10 step_bindPhone" id="phoneAlter">
                <div class="tittle_bindPhone"><i></i>修改手机</div>
                <div class="uk-width-100">
                    <div class="stepPlanBox_bindPhone">
                        <span class="step_slide"></span>
                        <span class="step_animate"></span>
                    </div>
                    <ul class="stepPlan_bindPhone">
                        <li class="active_bindPhone">
                            <span class="waterDrop_bindPhone"></span>
                            <p>验证身份</p>
                        </li>
                        <li>
                            <span class="waterDrop_bindPhone2"></span>
                            <p>绑定手机</p>
                        </li>
                        <li>
                            <span class="waterDrop_bindPhone3"></span>
                            <p>完成</p>
                        </li>
                    </ul>
                    <div style="" class="IDtesting">
                        <div class="testingPhone_bindPhone uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right titleVP"></label>
                            </div>
                            <div class="uk-width-7-10">
                                <span class="vedPhone"></span>
                            </div>
                        </div>
                        <div class="testingPhoneCode_bindPhone uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right">请填写手机验证码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text" class="Verify">
                                <button class="getVerificationCode" alter="T" id="step_1">获取手机验证码</button>
                            </div>
                        </div>
                        <div class="submit_bindPhone uk-grid">
                            <div class="uk-width-3-10">
                            </div>
                            <div class="uk-width-7-10">
                                <button hdiv="IDtesting" sdiv="newPassword" class="submit" step="1" verify="phone">提交</button>
                            </div>
                        </div>
                    </div>
                    <div style="display:none;" class="newPassword">
                        <div class="newPswd_bindPhone uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i>*</i>我的手机：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text" class="bindNewPhone">
                                <p>请输入您的常用手机</p>
                            </div>
                        </div>
                        <div class="testingPhoneCode_bindPhone uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right">请填写手机验证码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text" class="Verify">
                                <button class="getVerificationCode" alter="T" id="step_2">获取手机验证码</button>
                            </div>
                        </div>
                        <div class="submit_bindPhone uk-grid">
                            <div class="uk-width-3-10">
                            </div>
                            <div class="uk-width-7-10">
                                <button hdiv="newPassword" sdiv="alterSucceed" class="submit" step="2">提交</button>
                            </div>
                        </div>
                    </div>
                    <div style="display:none;" class="alterSucceed">
                       <div class="alterSucceed_bindPhone uk-grid">
                           <div class="uk-width-3-10">
                               <img src="${basePath}images/succeedIcon_passwordSettings.png" alt="" class="uk-float-right">
                           </div>
                           <div class="uk-width-7-10">
                               <p class="congratulation_bindPhone">恭喜您，修改手机成功！</p>
                               <div>
                                   <label for="">最新安全评级：</label>
                                   <div class="safeduBox_bindPhone">
                                       <span></span>
                                   </div>
                                   <label class="safeduLv_bindPhone">较高</label>
                               </div>
                               <p>您的账户安全级还能提升哦，快去<a href="safe_center.jsp">安全中心</a>完善其它安全设置提高评级吧！</p>
                           </div>
                       </div>
                    </div>
                </div>
            </div>
            <div class="uk-width-8-10 step_bindPhone" id="phoneBind" style="display: none;">
                <div class="tittle_bindPhone"><i></i>绑定手机</div>
                <div class="uk-width-100">
                    <div class="stepPlanBox_bindPhone">
                        <span class="step_slide"></span>
                        <span class="step_animate"></span>
                    </div>
                    <ul class="stepPlan_bindPhone2">
                        <li class="active_bindPhone">
                            <span class="waterDrop_bindPhone"></span>
                            <p>绑定手机</p>
                        </li>
                        <li>
                            <span class="waterDrop_bindPhone2"></span>
                            <p>完成</p>
                        </li>
                    </ul>
                    <div class="newPassword">
                        <div class="newPswd_bindPhone uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i>*</i>请输入手机号：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text">
                                <p>请输入您的手机号码</p>
                            </div>
                        </div>
                        <div class="newPswdAgain_bindPhone uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i class="color_ed510f">*</i>请输入手机验证码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text" class="Verify">
                                <button class="getVerificationCode" id="step_newPhone">获取手机验证码</button>
                            </div>
                        </div>
                        <div class="submit_bindPhone uk-grid">
                            <div class="uk-width-3-10">
                            </div>
                            <div class="uk-width-7-10">
                                <button hdiv="newPassword" sdiv="alterSucceed" class="submit" step="1">提交</button>
                            </div>
                        </div>
                    </div>
                    <div style="display:none;" class="alterSucceed">
                       <div class="alterSucceed_bindPhone uk-grid">
                           <div class="uk-width-3-10">
                               <img src="${basePath}images/succeedIcon_passwordSettings.png" alt="" class="uk-float-right">
                           </div>
                           <div class="uk-width-7-10">
                               <p class="congratulation_bindPhone">恭喜您，绑定手机成功！</p>
                               <div>
                                   <label for="">最新安全评级：</label>
                                   <div class="safeduBox_bindPhone">
                                       <span></span>
                                   </div>
                                   <label class="safeduLv_bindPhone">较高</label>
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
    var wait = 15,t2;
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
                var phone = $("#saveSomeMsg").attr("phone");
                var step = obj.parent().parent().siblings(".submit_bindPhone").find("button").attr("step");
                if(phone && step == '1'){
                	layer.load(0, {shade: 0.3});
                    $.ajax({
                        url: jsonPath + "qzw/rest/user/sendValicode",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json", 
                        type: "post", 
                        data: JSON.stringify({
                            "phone_mail": phone
                        }),
                        success: function(data, status){
                        	layer.closeAll('loading');
                            waitime(obj.attr("id"));
                        },
                        error: function(request, status, message) {
                            layer.msg("网络异常，请重试！");
                        }
                    });
                }else{
                    var bindPhone = $(this).parent().parent().siblings(".newPswd_bindPhone").find("input").val();
                    if(/^1[3,4,5,7,8]\d{9}$/.test(bindPhone)){
                    	layer.load(0, {shade: 0.3});
                        $.ajax({
                            url: jsonPath + "qzw/rest/user/sendSmsValicodeRegist",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json", 
                            type: "post", 
                            data: JSON.stringify({
                                "cellphone": bindPhone,
                            }),
                            success: function(data, status) {
                            	layer.closeAll('loading');
                                //data.errcode  0：成功  2：手机已注册
                                if(data.errcode == "2"){
                                    layer.msg("手机已绑定！");
                                }else{
                                    waitime(obj.attr("id"));
                                }
                            },
                            error: function(request, status, message) {
                                layer.msg("网络异常，请重试！");
                            }
                        });
                    }else{
                        layer.msg("手机格式不正确！");
                    };
                };
            });
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
            	if(!data.email){
                    $(".safeCenterSidebarActive_bindPhone").prev("li").children("a").text("绑定邮箱");
                }else{
                    $(".safeCenterSidebarActive_bindPhone").prev("li").children("a").text("修改邮箱");
                };
                $(".safeCenterSidebarActive_bindPhone").children("a").text("修改手机");
                $("#phoneBind").hide();
                $("#phoneAlter").show();
                $(".vedPhone").text(data.cellphone);
                $(".titleVP").text("已验证手机：");
                $("#saveSomeMsg").attr("phone",data.cellphone);
            },
            error: function(request, status, message) {
                layer.msg("网络异常，请重试！")
            }
        });
        
//获取手机验证码
        getVerifyCode();
        
//验证验证码，并跳转完成
        $(".submit").click(function(){
            var obj = $(this);
            var tittle_bindPhone = $(this).parent().parent().parent().parent().parent(".step_bindPhone").children(".tittle_bindPhone").text();
            var vedPhone = $(".vedPhone").text();
            var valicode = $(this).parent().parent().siblings(".testingPhoneCode_bindPhone").find("input").val();
            if(obj.attr("step") == '1'){
            	layer.load(0, {shade: 0.3});
                $.ajax({
                    url: jsonPath + "qzw/rest/user/valiValicode",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json", 
                    type: "post", 
                    data: JSON.stringify({
                        "phone_mail": vedPhone,
                        "valicode": valicode,
                    }),
                    success: function(data, status){
                    	layer.closeAll('loading');
                        if(data.errcode == '0'){
                            next_btn(obj.attr("hdiv"),obj.attr("sdiv"));
                            $(".step_slide").animate({left:"200"},1000);
                            $(".step_slide").css({"border-top-left-radius":"0","border-bottom-left-radius":"0"});
                            $(".step_animate").show();
                            $(".step_animate").animate({width:"200"},500);
                            $(".stepPlan_bindPhone").find("li").eq(0).removeClass("active_bindPhone").addClass("ed");
                            $(".stepPlan_bindPhone").find("li").eq(1).addClass("active_bindPhone");
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
               var bindNewPhone = $(".bindNewPhone").val();
               if(/^1[3,4,5,7,8]\d{9}$/.test(bindNewPhone)){
            	   layer.load(0, {shade: 0.3});
                    $.ajax({
                        url: jsonPath + "qzw/rest/user/bindCellphone",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json", 
                        type: "post", 
                        data: JSON.stringify({
                            "user_id": userId,
                            "cellphone": bindNewPhone,
                            "valicode": valicode,
                        }),
                        success: function(data, status){
                        	layer.closeAll('loading');
                            //data.errcode  0：成功 1：验证码错误 2：邮箱已绑定
                            switch(data.errcode){
                                case "0": 
                                    next_btn(obj.attr("hdiv"),obj.attr("sdiv"));
                                    $(".step_slide").animate({left:"400"},1000);
                                    $(".step_slide").css({"border-top-left-radius":"0","border-bottom-left-radius":"0"});
                                    $(".step_animate").show();
                                    $(".step_animate").animate({width:"400"},500);
                                    $(".stepPlan_bindPhone").find("li").eq(1).removeClass("active_bindPhone").addClass("ed");
                                    $(".stepPlan_bindPhone").find("li").eq(2).addClass("active_bindPhone");
                                    break;
                                case "1": 
                                    layer.msg("验证码输入错误！");
                                    break;
                                case "2": 
                                    layer.msg("手机已绑定！");
                                    break;
                                default: ;
                            }
                        },
                        error: function(request, status, message) {
                            layer.msg("网络异常，请重试！");
                        }
                    });
                }else{
                    layer.msg("手机格式不正确！")
                };
            };
        });
    });
</script>
</html>