<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>支付密码修改</title>
    <link rel="stylesheet" href="${basePath}css/pay_password.css">
    <script type="text/javascript" src="${basePath}js/pay_password.js"></script>
</head>
<body>
    <cm:header></cm:header>
    <div class="content">
        <cm:header_mycenter></cm:header_mycenter>
        <div class="uk-grid payPassword">
            <div class="uk-width-2-10">
                <ul class="uk-list safeCenter_payPassword">
                    <li>安全中心</li>
                    <li><a href="${basePath}password_settings.jsp">登录密码</a></li>
                    <li class="be"><a href="${basePath}bind_email.jsp">绑定邮箱</a></li>
                    <li class="bp"><a href="${basePath}bind_phone.jsp">绑定手机</a></li>
                    <li class="safeCenterSidebarActive_payPassword"><a href="">支付密码</a></li>
                    <li><a href="${basePath}autonym_approve.jsp">实名认证</a></li>
                    <li><a href="${basePath}bind_bankCard.jsp">银行卡绑定</a></li>
                </ul>
            </div>
            <div class="uk-width-8-10 step_payPassword" id="PHONE">
                <div class="tittle_payPassword"><i></i>支付密码修改</div>
                <div class="uk-width-100">
                    <div class="stepPlanBox_payPassword">
                        <span class="step_slide"></span>
                        <span class="step_animate"></span>
                    </div>
                    <ul class="stepPlan_payPassword">
                        <li class="active_payPassword">
                            <span class="waterDrop_payPassword"></span>
                            <p>验证身份</p>
                        </li>
                        <li>
                            <span class="waterDrop_payPassword2"></span>
                            <p>修改支付密码</p>
                        </li>
                        <li>
                            <span class="waterDrop_payPassword3"></span>
                            <p>完成</p>
                        </li>
                    </ul>
                    <div style="" class="IDtesting">
                        <div class="testingPhone_payPassword uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right titleVP"></label>
                            </div>
                            <div class="uk-width-7-10">
                                <span class="vedPhone"></span>
                                <span><a id="P_email">通过邮箱验证</a></span>
                            </div>
                        </div>
                        <div class="testingCode_payPassword uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right">验证码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text" class="imgVerify">
                                <button>
                                     <img class="inputAuthCode_forgetPassword" src="${jsonPath}common/imgCode" onclick="this.src='${jsonPath}common/imgCode?'+new Date().getTime()">
                                </button>
                                <span>看不清，<a class="change_imgcode">换一张</a></span>
                            </div>
                        </div>
                        <div class="testingPhoneCode_payPassword uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right Verify">请填写手机校验码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text">
                                <button class="getVerificationCode" verify="phone">获取手机验证码</button>
                            </div>
                        </div>
                        <div class="submit_payPassword uk-grid">
                            <div class="uk-width-3-10">
                            </div>
                            <div class="uk-width-7-10">
                                <button hdiv="IDtesting" sdiv="newPassword" class="submit" step="1" verify="phone">提交</button>
                            </div>
                        </div>
                    </div>
                    <div style="display:none;" class="newPassword">
                       <!--<div class="newPswd_payPassword uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i>*</i>旧支付密码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text">
                            </div>
                        </div>-->
                        <div class="newPswd_payPassword uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i>*</i>新的支付密码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="password">
                                <p>由字母加数字或符号至少两种以上字符组成的6位半角字符，区分大小写</p>
                            </div>
                        </div>
                        <div class="newPswdAgain_payPassword uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i class="color_ed510f">*</i>请再次输入新密码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="password">
                            </div>
                        </div>
<!--
                        <div class="testingCode_payPassword uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right">验证码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text">
                                <button>ASDCA</button>
                                <span>看不清，<a href="">换一张</a></span>
                            </div>
                        </div>
-->
                        <div class="submit_payPassword uk-grid">
                            <div class="uk-width-3-10">
                            </div>
                            <div class="uk-width-7-10">
                                <button hdiv="newPassword" sdiv="alterSucceed" class="submit" step="2">提交</button>
                            </div>
                        </div>
                    </div>
                    <div style="display:none;" class="alterSucceed">
                       <div class="alterSucceed_payPassword uk-grid">
                           <div class="uk-width-3-10">
                               <img src="${basePath}images/succeedIcon_passwordSettings.png" alt="" class="uk-float-right">
                           </div>
                           <div class="uk-width-7-10">
                               <p class="congratulation_payPassword">恭喜您，修改支付密码成功！</p>
                               <div>
                                   <label for="">最新安全评级：</label>
                                   <div class="safeduBox_payPassword">
                                       <span></span>
                                   </div>
                                   <label class="safeduLv_payPassword">较高</label>
                               </div>
                               <p>您的账户安全级还能提升哦，快去<a href="safe_center.jsp">安全中心</a>完善其它安全设置提高评级吧！</p>
                           </div>
                       </div>
                    </div>
                </div>
            </div>
            <div class="uk-width-8-10 step_payPassword" id="EMAIL">
                <div class="tittle_payPassword"><i></i>支付密码修改</div>
                <div class="uk-width-100">
                    <div class="stepPlanBox_payPassword">
                        <span class="step_slide"></span>
                        <span class="step_animate"></span>
                    </div>
                    <ul class="stepPlan_payPassword2">
                        <li class="active_payPassword">
                            <span class="waterDrop_payPassword"></span>
                            <p>验证身份</p>
                        </li>
                        <li>
                            <span class="waterDrop_payPassword2"></span>
                            <p>修改支付密码</p>
                        </li>
                        <li>
                            <span class="waterDrop_payPassword3"></span>
                            <p>完成</p>
                        </li>
                    </ul>
                    <div style="" class="IDtesting">
                        <div class="testingPhone_payPassword uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right titleVE"></label>
                            </div>
                            <div class="uk-width-7-10">
                                <span class="vedEmail"></span>
                                <span><a id="E_phone">通过手机验证</a></span>
                            </div>
                        </div>
                        <div class="testingCode_payPassword uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right">验证码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text">
                                <button>
                                     <img class="inputAuthCode_forgetPassword" src="${jsonPath}common/imgCode" onclick="this.src='${jsonPath}common/imgCode?'+new Date().getTime()">
                                </button>
                                <span>看不清，<a class="change_imgcode">换一张</a></span>
                            </div>
                        </div>
                        <div class="testingPhoneCode_payPassword uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right">请填写邮箱校验码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text">
                                <button class="getVerificationCode">获取邮箱验证码</button>
                            </div>
                        </div>
                        <div class="submit_payPassword uk-grid">
                            <div class="uk-width-3-10">
                            </div>
                            <div class="uk-width-7-10">
                                <button hdiv="IDtesting" sdiv="newPassword" class="submit" step="1">提交</button>
                            </div>
                        </div>
                    </div>
                    <div style="display:none;" class="newPassword">
<!--
                       <div class="newPswd_payPassword uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i>*</i>旧支付密码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="text">
                            </div>
                        </div>
-->
                        <div class="newPswd_payPassword uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i>*</i>新的支付密码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="password">
                                <p>由字母加数字或符号至少两种以上字符组成的6-20位半角字符，区分大小写</p>
                            </div>
                        </div>
                        <div class="newPswdAgain_payPassword uk-grid">
                            <div class="uk-width-3-10">
                                <label for="" class="uk-align-right"><i class="color_ed510f">*</i>请再次输入新密码：</label>
                            </div>
                            <div class="uk-width-7-10">
                                <input type="password">
                            </div>
                        </div>
                        <div class="submit_payPassword uk-grid">
                            <div class="uk-width-3-10">
                            </div>
                            <div class="uk-width-7-10">
                                <button hdiv="newPassword" sdiv="alterSucceed" class="submit" step="2">提交</button>
                            </div>
                        </div>
                    </div>
                    <div style="display:none;" class="alterSucceed">
                       <div class="alterSucceed_payPassword uk-grid">
                           <div class="uk-width-3-10">
                               <img src="${basePath}images/succeedIcon_passwordSettings.png" alt="" class="uk-float-right">
                           </div>
                           <div class="uk-width-7-10">
                               <p class="congratulation_payPassword">恭喜您，修改支付密码成功！</p>
                               <div>
                                   <label for="">最新安全评级：</label>
                                   <div class="safeduBox_payPassword">
                                       <span></span>
                                   </div>
                                   <label class="safeduLv_payPassword">较高</label>
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
    var globalPhone,globalencodesPhone;
    var globalEmail,globalencodesEmail;
//重发短信验证码
    var wait = 60,t2;
    var c2 = wait;
    function waitime(){
        $(".getVerificationCode").css({"border":"none","background":"none","cursor":"default"});
        $(".getVerificationCode").text(c2+"秒后重发");
        $(".getVerificationCode").unbind("click");
        t2=setTimeout("waitime()",1000);
        c2--;
        if(c2<0){
            c2=wait;
            stopwait();
        };
    };
    function stopwait(){
        clearTimeout(t2);
        $(".getVerificationCode").css({"border":"1px solid #dadada","background":"#f9f9f9","cursor":"pointer"});
        $(".getVerificationCode").text("重发验证码");
        $(".Verify").val("");
        $(".imgVerify").val("");
        $(".inputAuthCode_forgetPassword").click();
        getVerifyCode();
    };
    //获取验证码。
        function getVerifyCode(){
            $(".getVerificationCode").click(function(){
                var imgCode = $(this).parent().parent().siblings(".testingCode_payPassword").children(".uk-width-7-10").children("input").val();
                if($(this).attr("verify") == 'phone'){
                    var verifyType = "mobile";
                    var sendTarget = globalPhone;
                    if(!globalPhone){
                        layer.msg("未绑定手机！");
                        return;
                    };
                }else{
                    var verifyType = "email";
                    var sendTarget = globalEmail;
                    if(!globalEmail){
                        layer.msg("未绑定邮箱 ！");
                        return;
                    };
                };
                $.post("${jsonPath}member/user/security/pay/sendCode/"+subId+"",{
                    sendTarget: sendTarget,
                    verifyType: verifyType,
                    imgCode: imgCode,
                },function(data){
                    if(resultCheckCode(data["code"],data["messageDesc"])){
                        //倒计时开始 /60s
                         waitime();
                    }else{
                        $(".inputAuthCode_forgetPassword").click();
                    }
                },"json");
            });
        };
        require(["cookie","laytpl"],function(cookie,laytpl){
        //获取用户信息。
            $.get("${jsonPath}member/user/security/pay/get/"+subId+"",function(data){
                if(resultCheckCode(data["code"],data["messageDesc"])){
                     globalPhone = data["vo"]["phone"];
                     globalEmail = data["vo"]["email"];
                     globalencodesPhone = data["vo"]["encodesPhone"];
                     globalencodesEmail = data["vo"]["encodesEmail"];
                    if(!globalencodesPhone){
                        $(".vedPhone").text("");
                        $(".titleVP").text("未验证：");
                    }else{
                        $(".vedPhone").text(globalencodesPhone);
                        $(".titleVP").text("已验证手机：");
                    };
                    if(!globalencodesEmail){
                        $(".vedEmail").text("");
                        $(".titleVE").text("未验证：");
                    }else{
                        $(".vedEmail").text(globalencodesEmail);
                        $(".titleVE").text("已验证邮箱：");
                    };
                    if(!globalEmail){
                        $(".be").children("a").text("绑定邮箱");
                    }else{
                        $(".be").children("a").text("修改邮箱");
                    };
                    if(!globalPhone){
                        $(".bp").children("a").text("绑定手机");
                    }else{
                        $(".bp").children("a").text("修改手机");
                    };
                };
            },"json");
        //获取验证码。
            getVerifyCode();
        //验证验证码,支付密码
            $(".submit").click(function(){
                var obj = $(this);
                var step = obj.attr("step");
                if(obj.attr("verify") == 'phone'){
                    var verifyType = "mobile";
                }else{
                    var verifyType = "email";
                };
                $.ajaxSetup({   
                    async : false  
                }); 
                if(step == '1'){
                    alert(111);
                    var verifyCode = obj.parent().parent().siblings(".testingPhoneCode_payPassword").find("input").val();
                    var imgCode = obj.parent().parent().siblings(".testingCode_payPassword").find("input").val();
                    $.post("${jsonPath}member/user/security/pay/valid/"+subId+"",{
                        verifyCode: verifyCode,
                        verifyType: verifyType,
                        imgCode: imgCode,
                    },function(data){
                        alert(verifyCode+" "+imgCode+" "+verifyType);
                        if(resultCheckCode(data["code"],data["messageDesc"])){
                            alert(1111);
                            next_btn($(obj).attr("hdiv"),$(obj).attr("sdiv"));
                            $(".step_slide").animate({left:step*200},1000);
                            $(".step_slide").css({"border-top-left-radius":"0","border-bottom-left-radius":"0"});
                            $(".step_animate").show();
                            $(".step_animate").animate({width:step*200},500);
                            obj.parent().parent().parent().siblings(".stepPlan_payPassword").find("li").eq(step-1).removeClass("active_payPassword");
                            obj.parent().parent().parent().siblings(".stepPlan_payPassword").find("li").eq(step-1).addClass("ed");
                            obj.parent().parent().parent().siblings(".stepPlan_payPassword").find("li").eq(step).addClass("active_payPassword");
                        };
                    },"json");
                }else{
                    var payPwd = obj.parent().parent().siblings(".newPswd_payPassword").find("input").val();
                    var payPwdAgain = obj.parent().parent().siblings(".newPswdAgain_payPassword").find("input").val();
                    if(!payPwd){
                        layer.msg("请输入新的支付密码");
                        obj.parent().parent().parent(".newPassword").find("input[type='password']").val("");
                        return;
                    }
                    if(!(payPwd.length < 16 && payPwd.length >= 6)){
                        layer.msg("支付密码长度为6~16位");
                        obj.parent().parent().parent(".newPassword").find("input[type='password']").val("");
                        return;
                    };
                    if(payPwd !== payPwdAgain){
                        layer.msg("两次密码不一致！");
                        obj.parent().parent().parent(".newPassword").find("input[type='password']").val("");
                        return;
                    };
                    $.post("${jsonPath}member/user/security/pay/update/"+subId+"",{
                        payPwd: payPwd,
                    },function(data){
                        if(resultCheckCode(data["code"],data["messageDesc"])){
                            next_btn(obj.attr("hdiv"),obj.attr("sdiv"));
                            $(".step_slide").animate({left:step*200},1000);
                            $(".step_slide").css({"border-top-left-radius":"0","border-bottom-left-radius":"0"});
                            $(".step_animate").show();
                            $(".step_animate").animate({width:step*200},500);
                            obj.parent().parent().parent().siblings(".stepPlan_payPassword").find("li").eq(step-1).removeClass("active_payPassword");
                            obj.parent().parent().parent().siblings(".stepPlan_payPassword").find("li").eq(step-1).addClass("ed");
                            obj.parent().parent().parent().siblings(".stepPlan_payPassword").find("li").eq(step).addClass("active_payPassword");
                        }else{
                            obj.parent().parent().siblings(".newPswd_payPassword").find("input").val("");
                        };
                    },"json");
                };
            });
        });
</script>
</html>