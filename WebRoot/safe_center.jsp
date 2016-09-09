<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<input type="hidden" id="cenhead" cenhead="aqzx" />
		<cm:js />
		<cm:css />
		<title>安全中心 - 棋子湾</title>
		<link rel="stylesheet" href="${basePath }css/safe_center.css" />
		<link rel="stylesheet" href="${basePath }default/js/uikit/css/components/progress.css" />
	</head>
	<body>
		<cm:header />
		<div class="content">
			<cm:header_mycenter />
			<div class="safe_content" id="contentHtml">
                
			</div>
			<cm:footer_mycenter />
		</div>
		<cm:footer />
	</body>
	<script>
        function init(str,str1){
            var obj = $("#"+str1);
            if(str){
                obj.attr("src",""+basePath+"default/images/icon/icon_safe_yes.png");
                obj.parent().siblings(".uk-width-2-10").children(".uk-text-bold").children("a").text("修改");
                obj.parent().siblings(".uk-width-2-10").children(".uk-text-bold").children("a").css({"color":"#000"});
                obj.parent().siblings(".uk-width-2-10").removeClass("safe_con-infooperatesafe_con-infooperate_other").addClass("safe_con-infooperate");
            }else{
                obj.attr("src",""+basePath+"default/images/icon/icon_safe_no.png");
                obj.parent().siblings(".uk-width-2-10").children(".uk-text-bold").children("a").text("立即验证");
                if(str1 == "bankCountStatus"){
                     obj.parent().siblings(".uk-width-2-10").children(".uk-text-bold").children("a").text("立即绑定");
                }
                if(str1 == "payStatus"){
                     obj.parent().siblings(".uk-width-2-10").children(".uk-text-bold").children("a").text("立即设置");
                }
                obj.parent().siblings(".uk-width-2-10").children(".uk-text-bold").children("a").css({"color":"#006ec5"});
                obj.parent().siblings(".uk-width-2-10").removeClass("safe_con-infooperate").addClass("safe_con-infooperate_other");
            };
        };

        require(["app/common"],function(cm){
        	layer.load(0, {shade: 0.3});
            // 登录或者根据userid查询用户信息
                $.ajax({
                    url: jsonPath + "qzw/rest/user/queryUserInfo",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json", 
                    type: "post", 
                    data: JSON.stringify({
                        "user_id": userId
                    }),
                    success: function(data, status){
                        cm.renderHtml('contentTpl',data,'contentHtml');
                        init(data["email"],"emailStatus");
                        init(data["cellphone"],"phoneStatus");
//                        init(d["vo"]["payStatus"],"payStatus");
//                        init(d["vo"]["realNameStatus"],"realNameStatus");
//                        init(d["vo"]["bankCountStatus"],"bankCountStatus");
                        layer.closeAll('loading');
                    },
                    error: function(request, status, message) {
                        layer.msg("网络错误，请重试！")
                    }
                });
//            $.get("${jsonPath}member/user/security/get/"+subId+"",function(d){
//               if(resultCheckCode(d["code"],d["messageDesc"])){
//                   var payLevel = d["vo"]["payLevel"];
//                   level = d["vo"]["pwdStatus"]+d["vo"]["emailStatus"]+d["vo"]["phoneStatus"]+d["vo"]["payStatus"]+d["vo"]["realNameStatus"]+d["vo"]["bankCountStatus"];
//                   $.cookie(Cookie.LEVEL, level);
//                   //html渲染
//                   var tpl = document.getElementById('contentTpl').innerHTML;
//                    laytpl(tpl).render(d, function(html){
//                        document.getElementById('contentHtml').innerHTML = html;
//                        
//                    });
//                   init(d["vo"]["pwdStatus"],"pwdStatus");
//                   init(d["vo"]["emailStatus"],"emailStatus");
//                   init(d["vo"]["phoneStatus"],"phoneStatus");
//                   init(d["vo"]["payStatus"],"payStatus");
//                   init(d["vo"]["realNameStatus"],"realNameStatus");
//                   init(d["vo"]["bankCountStatus"],"bankCountStatus");
//                   $("#payLevel").animate({width:"25"*payLevel},500);
//                   $("#level").animate({width:"17"*level},500);
//                   if(level <= 2){
//                       $("#levelmodify").text("低");
//                   };
//                   if(level <= 4 && level > 2){
//                       $("#levelmodify").text("中");
//                   };
//                   if(level <= 6 && level > 4){
//                       $("#levelmodify").text("高");
//                   };
//               };
//            },"json");
        });
	</script>
	<script id="contentTpl" type="text/html">
	    <p class="uk-text-bold safe_contil">安全中心</p>
        <div class="safe_lv">
            <img class="safe_lv_icon" src="${basePath }default/images/icon/icon_safe_shield.png" />
            <span class="safe_aqdj">账户安全等级</span>
            <div class="uk-progress uk-progress-small safe_progress">
                <div class="uk-progress-bar" id="level" style="width: 70%;"></div>
            </div>
            <span class="safe_aqinfo" id="levelmodify">极高</span>
            <span class="safe_proposal">（建议您启动全部安全设置，以保障账户及资金安全 ~ ）</span>
        </div>
        <div class="safe_con">
            <div class="uk-grid uk-grid-collapse safe_con_info">
                <div class="uk-width-3-10 safe_con_infoname">
                    <img src="${basePath}default/images/icon/icon_safe_yes.png" id="pwdStatus"/>
                    <span class="uk-text-bold">登录密码</span>
                    <img src="${basePath }default/images/icon/icon_safe_loginpwd.png" />
                </div>
                <div class="uk-width-5-10 safe_con_infoprompt">
                    <span>互联网账号存在被盗风险，建议您定期更改密码以保护账户安全。</span>
                </div>
                <div class="uk-width-2-10 safe_con-infooperate">
                    <span class="uk-text-bold"><i class="common_division"></i><a href="${basePath}password_settings.jsp">修改</a></span>
                </div>
            </div>
            <div class="uk-grid uk-grid-collapse safe_con_info">
                <div class="uk-width-3-10 safe_con_infoname">
                    <img src="" id="emailStatus"/>
                    <span class="uk-text-bold">绑定邮箱</span>
                    <img src="${basePath }default/images/icon/icon_safe_email.png" />
                </div>
                <div class="uk-width-5-10 safe_con_infoprompt_other">
                    {{if email}}
                        <span class="safe_con_infoprompt_other_wz">您验证的邮箱：{{ email }} 若已丢失或停用，请立即更换，<span class="safe_con_infoprompt_warn">避免账户被盗</span></span>
                    {{else}}
                        <span class="safe_con_infoprompt_other_wz">验证后，可快速找回登录密码，接收账户余额变动提醒。</span>
                    {{/if}}
                </div>
                <div class="uk-width-2-10 safe_con-infooperate_other">
                    {{if email}}
                        <span class="uk-text-bold"><i class="common_division"></i><a href="${basePath}bind_email.jsp?alter=T"></a></span>
                    {{else}}
                        <span class="uk-text-bold"><i class="common_division"></i><a href="${basePath}bind_email.jsp"></a></span>
                    {{/if}}
                </div>
            </div>
            <div class="uk-grid uk-grid-collapse safe_con_info">
                <div class="uk-width-3-10 safe_con_infoname">
                    <img src="" id="phoneStatus"/>
                    <span class="uk-text-bold">绑定手机</span>
                    <img src="${basePath }default/images/icon/icon_safe_phone.png" />
                </div>
                <div class="uk-width-5-10 safe_con_infoprompt_other">
                   {{if cellphone }}
                        <span class="safe_con_infoprompt_other_wz">您验证的手机：<span class="safe_con_infoprompt_phone">{{ cellphone }}</span>若已丢失或停用，请立即更换，<span class="safe_con_infoprompt_warn">避免账户被盗</span></span>
                    {{else}}
                        <span class="safe_con_infoprompt_other_wz">验证后，可快速找回登录密码，接收账户余额变动提醒。</span>
                    {{/if}}
                </div>
                <div class="uk-width-2-10 safe_con-infooperate">
                    {{if cellphone }}
                        <span class="uk-text-bold"><i class="common_division"></i><a href="${basePath}bind_phone.jsp?alter=T"></a></span>
                    {{else}}
                        <span class="uk-text-bold"><i class="common_division"></i><a href="${basePath}bind_phone.jsp"></a></span>
                    {{/if}}
                </div>
            </div>
        </div>
	</script>
</html>