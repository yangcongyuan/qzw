<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<input type="hidden" id="head" head="zxzx">
<cm:js />
<cm:css />
<head>
    <meta charset="UTF-8">
    <title>最新资讯</title>
    <link rel="stylesheet" href="${basePath}css/latest_news.css" />
</head>
<body>
    <cm:header />
    <div class="content latestNews_ln">
        <div class="uk-grid uk-grid-collapse latestNews1tier_ln">
            <div class="uk-width-1-1 uk-width-large-1-3">
                <div class="uk-overlay smallNewsBox_ln">
                    <img src="${basePath}images/news-1.png" alt="" width="400" height="250">
                    <div class="uk-overlay-panel uk-overlay-bottom uk-overlay-background uk-text-center">
                        标题标题标题标题标题标题
                    </div>
                </div>
                <div class="uk-overlay smallNewsBox_ln">
                    <img src="${basePath}images/news-2.png" alt="" width="400" height="250">
                    <div class="uk-overlay-panel uk-overlay-bottom uk-overlay-background uk-text-center">
                        标题标题标题标题标题标题
                    </div>
                </div>
            </div>
            <div class="uk-width-1-1 uk-width-large-1-3 uk-overlay">
                <img src="${basePath}images/news-3.png" alt="" width="400" height="500">
                <div class="uk-overlay-panel uk-overlay-bottom uk-overlay-background uk-text-center">
                    标题标题标题标题标题标题
                </div>
            </div>
            <div class="uk-width-1-1 uk-width-large-1-3 uk-overlay">
                <img src="${basePath}images/news-4.png" alt="" width="400" height="500">
                <div class="uk-overlay-panel uk-overlay-bottom  uk-overlay-background uk-text-center">
                    标题标题标题标题标题标题
                </div>
            </div>
        </div>
    </div>
    <div class="latestNews2tier_ln"></div>
    <div class="content" id="htmlMain">
        
    </div>
    <cm:footer />
</body>
<script>
    require(["app/common"],function(cm){
        layer.load(0, {shade: 0.3});
        $.ajax({
            url: jsonPath + "qzw/rest/news/newsList",
            contentType: "application/json; charset=utf-8",
            dataType: "json", 
            type: "post", 
            data: JSON.stringify({
                currentPage: 0,
                pageSize: 10,
                publish: 1,
            }),
            success: function(data, status){
                layer.closeAll('loading');
                var weekDay = ["星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
                for(var i = 0; i < data.list.length; i++){
                    var dt = new Date(data.list[i].nowTimeString);
                    var t = formatdate(data.list[i].nowTimeString,'yyyy-MM-dd');
                    data.list[i].week = weekDay[dt.getDay()];
                    data.list[i].MM = t.split('-')[1]+'月';
                    data.list[i].DD = t.split('-')[2]+'日';
                    var d1 = new Date(Date.parse(data.list[i].nowTimeString)); 
                    var d2 = new Date(Date.parse(data.list[i].publishTimeString));
                    var delta_T = (d1 - d2) / 1000;
                    if(delta_T <= '59'){
                        data.list[i].delta_T = delta_T + '秒';
                    }else if((delta_T >= '60')&&(delta_T < '3600')){
                        data.list[i].delta_T = Math.floor((delta_T / 60) % 60) + '分';
                    }else if((delta_T >= '3600')&&(delta_T < '86400')){
                        data.list[i].delta_T = Math.floor((delta_T / 3600) % 24) + '小时';
                    }else if(delta_T >= '86400'){
                        data.list[i].delta_T = Math.floor((delta_T / 3600) / 24) + '天';
                    };
                };
                cm.renderHtml('artTmpMain',data,'htmlMain');
            },
            error: function(request, status, message){
                layer.msg("网络异常，请重试！");
            }
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
    });
</script>
<script type="text/html" id="artTmpMain">
    {{if list.length == 0}}
    <p class="uk-flex uk-flex uk-flex-middle uk-flex-center noLatestNews">暂无相关资讯</p>
    {{/if}}
    {{each list as value i}}
    <div class="latestNews3tier_ln">
        <div class="topTime_ln">
            <span class="uk-position-relative uk-hidden-small">
                <span class="lineGlobuleBox_ln">
                    <div class="line_ln">
                        <div class="globule_ln"></div>
                    </div>
                </span>
            </span>
            <span class="uk-hidden-small">{{value.MM}} {{value.DD}}<i></i>{{value.week}}</span>
        </div>
        <div class="title_ln">
            <div>{{value.title}}</div>
            <div class="uk-hidden-small">{{value.delta_T}}前</div>
            <div class="main_ln">{{#value.info}}<a href="${basePath}latestNews_detail.jsp?newsId={{value.id}}">【查看详情】</a></div>
        </div>
    </div>
    {{/each}}
</script>
</html>