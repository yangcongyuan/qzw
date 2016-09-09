<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<input type="hidden" id="head" head="fylb" />
		<cm:js />
		<cm:css />
		<title>房源详情 - 棋子湾</title>
		<link rel="stylesheet" href="${basePath }css/house_detail.css" />
		<link rel="stylesheet" href="${basePath }default/js/uikit/css/components/slideshow.css" />
		<link rel="stylesheet" href="${basePath }default/js/uikit/css/components/slidenav.css" />
	</head>
	<body>
		<cm:header />
		<div class="content" id="htmlMain" data-uk-observe>
		    
		</div>
		<cm:footer />
		<input type="hidden" aparId id="saveSomeMsg">
		<script>
            var aparId = getQueryString("aparId");
            var SysSecond; 
            var InterValObj;
			require(["uikit!slideshow","app/common"],function(UI,cm){
                var aparId = getQueryString("aparId");
                layer.load(0, {shade: 0.3});
                $.get("${jsonPath}qzw/rest/apartment/"+aparId+"/detail?userId="+userId+"",function(data){
                    if(data.date.sellPrice){
                        data.date.sellPrice = data.date.sellPrice / 10000;
                    }
                    data.date.layoutLength = data.date.layout.length;
                    data.date.modelLength = data.date.model.length;
                    data.date.environmentLength = data.date.environment.length;
                    $("#saveSomeMsg").attr("aparId",data.date.aparId);
                    var startTime = data.date.startTime;
                    var endTime = data.date.endTime;
                    $.post("${jsonPath}qzw/rest/apartment/seckill/"+aparId+"/exposer",function(data){
                        if(!data.date.exposed){
                            if(data.date.now < data.date.start){
                                $(".house_qg_time").text("开始抢购倒计时：");
                                $.get("${jsonPath}qzw/rest/apartment/seckill/time/now",function(data){
                                    var d1 = new Date(Date.parse(formatdate(startTime,'yyyy/MM/dd HH:mm:ss'))); 
                                    var d2 = new Date(Date.parse(formatdate(data.date,'yyyy/MM/dd HH:mm:ss')));
                                    var cutDownTime = (d1 - d2) / 60000;
                                    cutDownTime = cutDownTime*60;
                                    SysSecond = cutDownTime; //这里获取倒计时的起始时间 
                                    InterValObj = window.setInterval(SetRemainTime, 1000); //间隔函数，1秒执行
                                },"json");
                            }else if(data.date.now > data.date.end){
                                $(".house_info_btn").hide();
                                $(".house_qg_time").text("活动结束");
                                $("#cutdown").html("");
                            };
                        }else{
                            var md5 = data.date.md5;
                            $(".house_info_btn").fadeIn("fast").css({"display":"inline-block"});
                            $(".house_qg_time").text("抢购中……");
                            $("#cutdown").html("");
                            clickRushBtn(md5);
                        }
                    },"json");
                    cm.renderHtml('artTemMain',data.date,'htmlMain');
                    layer.closeAll('loading');
                    $(".gz_btn").click(function(){
                        if(!userId){
                            layer.msg("您未登录，请先登录！");
                            setTimeout('window.location.href = "${basePath}log_in.jsp?click=L#loginbg_log_in"',1500);
                        }else{
                            if($(".gz_btn").hasClass("ygz_btn")){
                            	layer.load(0, {shade: 0.3});
                                $.ajax({
                                    url: jsonPath + "qzw/rest/attention/updateById",
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json", 
                                    type: "post",
                                    data: JSON.stringify({
                                        userId: userId,
                                        attentionNo: aparId,
                                    }),
                                    success: function(data, status){
                                    	layer.closeAll('loading');
                                        layer.msg("取消成功！");
                                        $(".gz_btn").removeClass("ygz_btn");
                                        $(".gz_btn").html("<i class='uk-icon-star-o'></i>关注");
                                    },
                                    error: function(request, status, message){
                                        layer.msg("网络异常，请重试！");
                                    }
                                });
                            }else{
                            	layer.load(0, {shade: 0.3});
                                $.ajax({
                                    url: jsonPath + "qzw/rest/attention/insertAttention",
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json", 
                                    type: "post",
                                    data: JSON.stringify({
                                        userId: userId,
                                        attentionNo: aparId,
                                    }),
                                    success: function(data, status){
                                    	layer.closeAll('loading');
                                        layer.msg("关注成功！");
                                        $(".gz_btn").addClass("ygz_btn");
                                        $(".gz_btn").html("<i class='uk-icon-star-o'></i>已关注");
                                    },
                                    error: function(request, status, message){
                                        layer.msg("网络异常，请重试！");
                                    }
                                });
                            }
                        }
                    });
                },"json");
			});
            
            //将时间减去1秒，计算天、时、分、秒 
            function SetRemainTime(){
                if (SysSecond > 0){
                    SysSecond = SysSecond - 1; 
                    var second = Math.floor(SysSecond % 60);             // 计算秒     
                    var minite = Math.floor((SysSecond / 60) % 60);      //计算分 
                    var hour = Math.floor((SysSecond / 3600) % 24);      //计算小时 
                    var day = Math.floor((SysSecond / 3600) / 24);        //计算天
                    var nowT = $("#saveSomeMsg").attr("now");
                    var endT = $("#saveSomeMsg").attr("end");
                    $("#cutdown").html(day + "天 " + hour + "小时 " + minite + "分 " + second + "秒"); 
                }else{//剩余时间小于或等于0的时候，就停止间隔函数 
                    window.clearInterval(InterValObj);
                    $.post("${jsonPath}qzw/rest/apartment/seckill/"+aparId+"/exposer",function(data){
                        var md5 = data.date.md5;
                        $(".house_info_btn").fadeIn("fast").css({"display":"inline-block"});
                        clickRushBtn(md5);
                    },"json");
                };
            };
            
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
        //抢购按钮触发。
            function clickRushBtn(md5){
                $(".house_info_btn").click(function(){
                	layer.load(0, {shade: 0.3});
                	setTimeout(function(){
                	  	layer.closeAll('loading');
                	  	$.ajax({
	                          url: jsonPath + "qzw/rest/apartment/seckill/"+aparId+"/"+md5+"/execution?userId="+userId,
	                          contentType: "application/json; charset=utf-8",
	                          dataType: "json", 
	                          type: "post", 
	                          success: function(data, status){
								layer.msg(data.date.stateInfo);
							},
							error : function(request,
									status, message) {
								layer.msg("网络异常，请重试！");
							}
						});
                	}, 2000);
				});
			};
		</script>
	</body>
	
	<script type="text/html" id="artTemMain">
	    <div class="house_detail_breadcrumb">
            <img class="house_detail_icon" src="${basePath }default/images/icon/icon_house.png" />
            <ul class="uk-breadcrumb">
                <li><a href="${basePath}house_list.jsp">房源列表</a></li>
                <li class="uk-active"><span>{{aparName}}</span></li>
            </ul>
        </div>
        <div class="house_detail_property">
            <ul>
                <li class="property_jg"><p><span>{{sellPrice}}</span>万</p></li>
                <li><p><span>{{room}}</span>室<span>{{hall}}</span>厅</p></li>
                <li><p><span>{{area}}</span>平方米</p></li>
            </ul>
            {{if attention}}
            <a class="uk-button uk-float-right gz_btn uk-icon-hover ygz_btn"><i class="uk-icon-star-o"></i>已关注</a>
            {{else}}
			<a class="uk-button uk-float-right gz_btn uk-icon-hover"><i class="uk-icon-star-o"></i>关注</a>
            {{/if}}
        </div>
        <div class="house_detail_slideshow uk-grid uk-grid-collapse" data-uk-observe>
            <div class="uk-width-medium-1-10 house_slideshow_tab uk-hidden-small">
                <ul class="uk-tab uk-tab-left" data-uk-tab="{connect:'#house_detail_slideshow', animation:'slide-vertical',active:0}">
                    <li class="house_slideshow_sn"><a><div></div><p>室内图</p><span>({{layoutLength}})</span></a></li>
                    <li class="house_slideshow_hx"><a><div></div><p>户型图</p><span>({{modelLength}})</span></a></li>
                    <li class="house_slideshow_hj"><a><div></div><p>环境图</p><span>({{environmentLength}})</span></a></li>
                </ul>
            </div>
            <div class="uk-width-medium-9-10 uk-hidden-small">
                <ul id="house_detail_slideshow" class="uk-switcher">
                    <li>
                        <div class="uk-slidenav-position" data-uk-slideshow="{autoplay:true,animation:'scroll',height:'498px'}">
                            <ul class="uk-slideshow">
                                {{each model as value i}}
                                    <li><img src="${picPath }{{value}}" /></li>
                                {{/each}}
                            </ul>
                            <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous"></a>
                            <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next"></a>
                        </div>
                    </li>
                    <li>
                        <div class="uk-slidenav-position" data-uk-slideshow="{autoplay:true,animation:'scroll',height:'498px'}">
                            <ul class="uk-slideshow">
                                {{each layout as value i}}
                                    <li><img src="${picPath }{{value}}" /></li>
                                {{/each}}
                            </ul>
                            <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous"></a>
                            <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next"></a>
                        </div>
                    </li>
                    <li>
                        <div class="uk-slidenav-position" data-uk-slideshow="{autoplay:true,animation:'scroll',height:'498px'}">
                            <ul class="uk-slideshow">
                                {{each environment as value i}}
                                    <li><img src="${picPath }{{value}}" /></li>
                                {{/each}}
                            </ul>
                            <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous"></a>
                            <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next"></a>
                        </div>
                    </li>
                </ul>
            </div>
			<ul class="uk-tab detail_small_tab uk-hidden-large" data-uk-tab="{connect:'#house_detail_small_slideshow', animation:'fade',active:0,swiping:false}">
            	<li class="house_slideshow_sn"><a><p>室内图</p><span>({{layoutLength}})</span></a></li>
            	<li class="house_slideshow_hx"><a><p>户型图</p><span>({{modelLength}})</span></a></li>
            	<li class="house_slideshow_hj"><a><p>环境图</p><span>({{environmentLength}})</span></a></li>
			</ul>
			<ul id="house_detail_small_slideshow" class="uk-switcher uk-hidden-large">
                    <li>
						<div class="uk-slidenav-position" data-uk-slideshow="{autoplay:true,animation:'scroll',height:'498px'}">
                            <ul class="uk-slideshow">
                                {{each model as value i}}
                                    <li><img src="${picPath }{{value}}" /></li>
                                {{/each}}
                            </ul>
                            <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous"></a>
                            <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next"></a>
                        </div>
                    </li>
                    <li>
                        <div class="uk-slidenav-position" data-uk-slideshow="{autoplay:true,animation:'scroll',height:'498px'}">
                            <ul class="uk-slideshow">
                                {{each layout as value i}}
                                    <li><img src="${picPath }{{value}}" /></li>
                                {{/each}}
                            </ul>
                            <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous"></a>
                            <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next"></a>
                        </div>
                    </li>
				<li>
                   <div class="uk-slidenav-position" data-uk-slideshow="{autoplay:true,animation:'scroll',height:'498px'}">
                        <ul class="uk-slideshow">
                            {{each environment as value i}}
                            	<li><img src="${picPath }{{value}}" /></li>
                        	{{/each}}
                    	</ul>
                    	<a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous"></a>
                    	<a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next"></a>
                	</div>
            	</li>
        	</ul>
        </div>
        <div class="house_detail_info">
            <div class="house_info_til">
                <div class="common_division"></div>
                <span>房屋信息</span>
            </div>
            <div class="house_info_con">
                <div class="house_info_nr uk-overflow-container">
                    <table class="uk-table uk-text-nowrap">
                        <tbody>
                            <tr>
                                <td>位置：{{buildingNo}}号楼{{unitNo}}单元{{floorNo}}层{{aparNo}}室</td>
                                <td>房型：{{room}}室{{hall}}厅</td>
                                <td>楼层：{{floorNo}}层/{{floorNum}}层</td>
                            </tr>
                            <tr>
                                <td>年代：{{if year == null}}暂无信息{{/if}}
                                    {{if year}}{{year}}年{{/if}}
                                </td>
                                <td>面积：{{area}}平方米</td>
                                <td>单价：<span class="house_info_num">{{if unitPrice == null}}暂无信息{{/if}}{{if unitPrice}}{{unitPrice}}元/㎡{{/if}}
                                </span></td>
                            </tr>
                            <tr>
                                <td>类型：{{aparType}}</td>
                                <td>朝向：{{if turned == null}}暂无信息{{/if}}{{if turned == 'A'}}东{{/if}}{{if turned == 'B'}}南{{/if}}{{if turned == 'C'}}西{{/if}}{{if turned == 'D'}}北{{/if}}{{if turned == 'E'}}南北{{/if}}{{if turned == 'F'}}东西{{/if}}{{if turned == 'G'}}东南{{/if}}{{if turned == 'H'}}西南{{/if}}{{if turned == 'I'}}东北{{/if}}{{if turned == 'J'}}西北{{/if}}
                                </td>
                                <td>总价：<span class="house_info_num">{{sellPrice}}万元</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="house_info_btngroup">
                    <p class="house_qg_time"></p><span id="cutdown"></span>
<!--                    <a class="uk-button house_info_btn house_detail_czbtn">我要充值</a>-->
                    <a class="uk-button house_info_btn house_detail_qgbtn">立即抢购</a>
                </div>
            </div>
        </div>
	</script>
</html>