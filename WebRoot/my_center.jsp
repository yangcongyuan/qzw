<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <link rel="stylesheet" href="${basePath}css/my_center.css">
</head>
<body>
    <cm:header />
    <div class="content">
        <cm:header_mycenter></cm:header_mycenter>
        <div class="my_center_topbg uk-grid uk-grid-collapse">
            <div class="uk-width-3-10">
                <a href="${basePath}personal_data.jsp"><img src="${basePath}images/userIcon_myCenter.png" alt="" class="userIcon_myCenter"></a>
                <div class="userMessageBox_myCenter">
                    <div>
                        <h2 class="user_name"></h2>
                    </div>
                    <div class="accountSafeLevel_myCenter">
                        <img src="${basePath}images/accountSafeIcon_myCenter.png" alt="">
                        <p>账户安全等级</p>
                    </div>
                    <div class="lvSafeLineDegree_myCenter">
                        <div class="lvBox_myCenter">
                            <span class="levelLineBox_myCenter"></span>
                            <span class="levelLine_myCenter"></span>
                        </div>
                        <p class="lvDegree_myCenter">较高</p>
                    </div>
                    <div class="pwmessageAndAutonym_myCenter">
                        <a href="${basePath}password_settings.jsp">密码管理</a>
                        <!--<i></i>
                        <a href="${basePath }autonym_approve.jsp">实名认证</a>-->
                    </div>
                </div>
            </div>
            <div class="uk-width-2-10">
                <ul class="matterAndPlan_myCenter">
                    <li>
                        <span></span>
                        <p>待办事项<i class="uk-badge uk-badge-notification">1</i></p>
                    </li>
                    <li>
                        <span></span>
                        <p>购房进度</p>
                    </li>
                </ul>
                <ul class="disorderAndProject_myCenter">
                    <li>
                        <span></span>
                        <p>未完成的订单<i class="uk-badge uk-badge-notification">1</i></p>
                    </li>
                    <li>
                        <span></span>
                        <p>项目追踪</p>
                    </li>
                </ul>
            </div>
            <div class="uk-width-5-10">
                <div id="mycenter_info"></div>
                <div class="amend_myCenter uk-float-right">
                    <i class="common_division"></i>
                    <a href="${basePath}personal_data.jsp">修改</a>
                </div>
            </div>
        </div>
        <div class="uk-width-100" id="htmlMain">
        	
        </div>
        <cm:footer_mycenter></cm:footer_mycenter>
    </div>
    <cm:footer></cm:footer>
    <script>
    	require(["app/common"],function(cm){
            layer.load(0, {shade: 0.3});
    		$.ajax({
                url: jsonPath + "qzw/rest/user/queryUserInfo",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post", 
                data: JSON.stringify({
                    "user_id":userId
                }),
                success: function(data, status){
                    cm.renderHtml("mycenter_info_data",data,"mycenter_info");
                    layer.closeAll('loading');
                   	if(data.user_name){
                   		$(".user_name").text(data.user_name);
                   	}else if(data.login_name){
                   		$(".user_name").text(data.login_name);
                   	}else{
                   		$(".user_name").text(data.cellphone);
                   	}
                },
                error: function(request, status, message){
                    layer.msg("网络异常，请重试！");
                }
            });
            $.ajax({
                url: jsonPath + "qzw/rest/apartment/buy/list",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post", 
                data: JSON.stringify({
                	userId:userId,
                    currentPage: 0,
                    pageSize: 2,
                }),
                success: function(data, status){
                    layer.closeAll('loading');
                    if(data.count != "0"){
                    	for(var i = 0; i < data.list.length; i++){
                            data.list[i].sellPriceZ = data.list[i].sellPrice / 10000;
                            data.list[i].createTime2 = formatdate(data.list[i].createTime,'yyyy-MM-dd HH:mm:ss');
                        }
                    }
                    cm.renderHtml("artTmpMain",data,"htmlMain");
                },
                error: function(request, status, message) {
                    layer.msg("网络异常，请重试！");
                }
            });
    	});
        //时间转化为 年月日 时分秒
        function formatdate(date,format){
            if (!date) return;
            if (!format) format = "yyyy-MM-dd";
                switch(typeof date){
                case "string":
                   date = new Date(date.replace(/-/, "/"));
                   break;
                case "number":
                   date = new Date(date);
                   break;
                }
            if (!date instanceof Date) return;
            var dict = {
                "yyyy": date.getFullYear(),
                "M": date.getMonth() + 1,
                "d": date.getDate(),
                "H": date.getHours(),
                "m": date.getMinutes(),
                "s": date.getSeconds(),
                "MM": ("" + (date.getMonth() + 101)).substr(1),
                "dd": ("" + (date.getDate() + 100)).substr(1),
                "HH": ("" + (date.getHours() + 100)).substr(1),
                "mm": ("" + (date.getMinutes() + 100)).substr(1),
                "ss": ("" + (date.getSeconds() + 100)).substr(1)
            };
            return format.replace(/(yyyy|MM?|dd?|HH?|ss?|mm?)/g, function(){
                return dict[arguments[0]];
            });
        };
    </script>
    
    <script type="text/html" id="mycenter_info_data">
	    <form class="uk-form firstForm_myCenter">
			<div class="mycen_firfor_row">
		    	<span for="">登录名：</span>
				<span>{{login_name}}</span>
			</div>
			<div class="mycen_firfor_row">
		    	<span for="">地区：</span>
		    <!-- <select id="seleProvince" onchange="getCity(this.value)" >
				<option value="">省</option>
			</select>
			<select id="seleCity" onchange="getCounty(this.value)" >
				<option value="">市</option>
			</select> -->
				<span title='{{address}}'>{{address}}</span>
			</div>
			<div class="mycen_firfor_row">
		    	<span>手机：</span>
		    	<span>{{cellphone}}</span>
			</div>
		</form>
		<form action="" class="uk-form lastFotm_myCenter">
		    <label for="" class="margin">用户昵称：</label>
			<span>{{user_name}}</span>
			<label for="" class="margin">性别：</label>
		   	<span>
		        {{if sex == "0"}}
					保密
				{{/if}}
				{{if sex == "1"}}
					女
				{{/if}}
				{{if sex == "2"}}
					男
				{{/if}}
		    </span>
		    <label for="" class="margin birthday_lebel">生日：</label>
			<span>{{birthday}}</span>
		</form>
    </script>
    <script type="text/html" id="artTmpMain">
	{{if count == "0"}}
	{{else}}
	<div class="housePurchase_myCenter">
		<h1>购房总览</h1>
	    <div class="uk-width-100" >
        {{each list as value i}}
        <div class="housePurchaseTable_myCenter">
            <div class="orderNumber_myCenter">订单编号：{{value.aparId}}</div>
            <ul>
                <li>
                    <img src="${picPath}{{value.listImg}}" alt="" class="housePurchaseIcon_myCenter">
                </li>
                <li>
                    <p class="houseInformation_myCenter"><i>{{value.decorate}}-{{value.buildingNo}}栋  {{value.unitNo}}-{{value.aparNo}}</i><br><i>{{value.room}}室{{value.hall}}厅</i><br><i>建筑面积{{value.area}}²</i></p>
                </li>
                <li class="dealTime_myCenter">{{value.createTime2}}</li>
                <!--<li class="dealUserName_myCenter">曾祥轩</li>-->
                <!--<li class="housePurchasePlan_myCenter">
                    <p>购房进度</p>
                    <div class="housePurchasePlanLine_myCenter">
                        <span></span>
                        <span></span>
                    </div>
                    <p>100%</p>
                </li>-->
                <li class="paymentMoney_myCenter">
                    <p>支付金额：{{value.sellPriceZ}}万</p>
                    <p>{{if value.state == -1}}失败{{/if}}{{if value.state == 0}}待付款{{/if}}{{if value.state == 1}}已付款{{/if}}</p>
                </li>
            </ul>
        </div>
        {{/each}}
	</div>
 </div>
{{/if}}
    </script>
</body>
</html>