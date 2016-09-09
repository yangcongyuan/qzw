<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <input type="hidden" id="head" head="sy" />
    <title>棋子湾</title>
    <link rel="stylesheet" href="${bastPath}css/index.css">
    <link rel="stylesheet" href="${basePath}default/js/uikit/css/components/slideshow.css">
    <link rel="stylesheet" href="${basePath}default/js/uikit/css/components/slidenav.css">
    <script type="text/javascript" src="${basePath}js/index.js"></script>
</head>
<body>
    <cm:header></cm:header>
    <div class="banner" id="htmlMain1" data-uk-observe>
        
    </div>
    <!-- <div class="statistics">
        <div class="content">
            <div class="uk-grid">
                <div class="uk-width-1-3 uk-text-center">
                    <div class="infobox">
                        <span class="icon"></span>
                        <div class="font">
                            <p class="title">累计筹款金额</p>
                            <p class="number">1920353万</p>
                        </div>
                    </div>
                </div>
                <div class="uk-width-1-3 uk-text-center">
                    <div class="infobox">
                        <span class="icon"></span>
                        <div class="font">
                            <p class="title">累计支持人数</p>
                            <p class="number">1920353万</p>
                        </div>
                    </div>
                </div>
                <div class="uk-width-1-3 uk-text-center">
                    <div class="infobox">
                        <span class="icon"></span>
                        <div class="font">
                            <p class="title">单项支持最高金额</p>
                            <p class="number">1920353万</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <div class="uk-grid uk-grid-collapse housing_price_trend">
    	<div class="uk-width-1-1 uk-width-medium-1-2 uk-width-large-1-3" id="qzw_zs" style="height:400px"></div>
    	<div class="uk-width-1-1 uk-width-medium-1-2 uk-width-large-1-3" id="qzwzb_zs" style="height:400px"></div>
    	<div class="uk-width-1-1 uk-width-medium-1-2 uk-width-large-1-3" id="hn_zs" style="height:400px"></div>
   	</div>
    <div class="qiziwjies-title">
        <div class="content">
            <div class="uk-grid">
                <div class="uk-width-1-1"><img src="${basePath}images/qiziwjies.png" alt=""></div>
            </div>
        </div>
    </div>
    <div class="qiziwjies-content">
        <div class="content content-style">
            <div class="uk-grid uk-grid-collapse qiziw-margin" id="htmlMain2">
                
            </div>
        </div>
    </div>
    <div class="tjhx-title uk-hidden-small">
        <div class="content">
            <div class="uk-grid">
                <div class="uk-width-1-1"><img src="${basePath}images/tjhx.png" alt=""></div>
            </div>
        </div>
    </div>
    <div class="tjhx-content uk-hidden-small" id="htmlMain3">
        
    </div>
    <div class="uk-grid">
        <div class="uk-width-1-1 hxglbg"></div>
    </div>
    <div class="hxgl-content">
        <div class="content">
            <div class="uk-grid uk-grid-collapse" id="htmlMain4">
                
            </div>
        </div>
    </div>
    <div class="look-more">
        <div class="content position-lookmore">
            <div class="uk-grid">
                <div class="uk-width-1-1 look-more-btn">
                    <a href="${basePath }house_list.jsp"><p>更多精彩</p></a>
                </div>
                <span class="btn-icon"></span>
            </div>
        </div>
    </div>
    <div class="news-tiitle qiziwjies-title">
        <div class="content">
            <div class="uk-grid">
                <div class="uk-width-1-1">
                    <img src="${basePath}images/news.png" alt="" class="news-pic">
                </div>
            </div>
        </div>
    </div>
    <div class="news-content" id="htmlMain5" data-uk-observe>
        
    </div>
    <cm:footer></cm:footer>
    <script>
    	require(["uikit!slideshow","app/common","echart"],function(UI,cm,echarts){
        //首页banner
        layer.load(0, {shade: 0.3});
    		$.ajax({
                url: jsonPath + "qzw/rest/home/queryBanner",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post", 
                success: function(data, status) { 
                	layer.closeAll('loading');
                    cm.renderHtml('artTmpMain1',data,'htmlMain1');
                },
                error: function(request, status, message) {
                    layer.msg("网络异常，请重试！");
                }
            });
        //首页项目介绍
            $.ajax({
                url: jsonPath + "qzw/rest/home/queryIntroduce",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post", 
                success: function(data, status){
                    data.intr_titleF = data[0].intr_title;
                    data.introduceF = data[0].introduce;
                    data.img_smallF = data[0].img_small;
                    data.img_bigF = data[0].img_big;
                    cm.renderHtml('artTmpMain2',data,'htmlMain2');
                    $(".video-small").each(function(){
                        $(this).click(function(){
                            var bigIntroduce = $(".FirstP").text();
                            var bigIntrTitle = $(".FirstP").attr("intrTitleF");
                            var bigImgBig = $(".FirstImg").attr("src");
                            var bigImgSmall = $(".FirstImg").attr("imgSmallF");
                            $(".FirstP").text($(this).siblings("p").attr("introduce"));
                            $(".FirstP").attr("intrTitleF",$(this).siblings("p").text());
                            $(".FirstImg").attr("src",$(this).attr("imgBig"));
                            $(".FirstImg").attr("imgSmallF",$(this).attr("src"));
                        });
                    });
                },
                error: function(request, status, message){
                    layer.msg("网络异常，请重试！");
                }
            });
        //首页推荐户型
            $.ajax({
                url: jsonPath + "qzw/rest/home/queryLayoutRecommend",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post", 
                success: function(data, status){
                    cm.renderHtml('artTmpMain3',data,'htmlMain3');
                },
                error: function(request, status, message){
                    layer.msg("网络异常，请重试！");
                }
            });
        //首页户型概览
            $.ajax({
                url: jsonPath + "qzw/rest/home/queryLayoutOverview",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post", 
                success: function(data, status){
                    cm.renderHtml('artTmpMain4',data,'htmlMain4');
                },
                error: function(request, status, message){
                    layer.msg("网络异常，请重试！");
                }
            });
        //首页资讯
            $.ajax({
                url: jsonPath + "qzw/rest/home/queryInformation",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post", 
                success: function(data, status){
                    data.small1 = data[0];
                    data.small2 = data[1];
                    data.small3 = data[2];
                    data.small4 = data[3];
                    cm.renderHtml('artTmpMain5',data,'htmlMain5');
                    $(".uk-overlay").mouseenter(function(){
                       $(this).children(".news_title").stop(true,true).animate({height:0},500);
                       $(this).children(".cover").stop(true,true).fadeIn();
                    }).mouseleave(function(){
                       $(this).children(".news_title").stop(true,true).animate({height:"60px"},500);
                       $(this).children(".cover").stop(true,true).fadeOut();
                    });
                },
                error: function(request, status, message){
                    layer.msg("网络异常，请重试！");
                }
            });
         // 棋子湾房价走势
    		$.ajax({
                url: jsonPath + "qzw/rest/home/queryHousePrice",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post", 
                data: JSON.stringify({
                	// 0:棋子湾当前平均市价 1:周边楼盘当前市价 2:整个海南岛平均市价
                	"price_type":"0"
                }),
                success: function(data, status) { 
                    var qzw_pubDate = [];
                    var qzw_priceDate = [];
                    for(var i = 0;i<data.length;i++){
                    	qzw_pubDate[i] = data[i].publish_date;
                    	qzw_priceDate[i] = data[i].price;
                    }
                    var qzw_Chart = echarts.init(document.getElementById('qzw_zs'));
                    var option = {
                    	    title: {
                    	        text: '棋子湾房价走势图',
                    	        textStyle:{
                    	        	color:'#006ec5'
                    	        }
                    	    },
                    	    tooltip: {
                    	        trigger: 'axis'
                    	    },
                    	    legend: {
                    	        data:['最高房价']
                    	    },
                    	    grid:{
                    	    	left:'50px'
                    	    },
                    	    xAxis:  {
                    	        type: 'category',
                    	        boundaryGap: false,
                    	        data: qzw_pubDate
                    	    },
                    	    yAxis: {
                    	        type: 'value',
                    	        min: 'dataMin',
                    	        axisLabel: {
                    	            formatter: '￥ {value}'
                    	        }
                    	    },
                    	    series: [
                    	        {
                    	            name:'棋子湾房价',
                    	            type:'line',
                    	            data:qzw_priceDate,
                    	            markPoint: {
                    	                data: [
                    	                    {type: 'max', name: '最大值'},
                    	                    {type: 'min', name: '最小值'}
                    	                ]
                    	            },
                    	            itemStyle:{
                    	            	normal:{
                    	            		color:'#006ec5'
                    	            	}
                    	            }
                    	        }
                    	    ]
                    	};
                    qzw_Chart.setOption(option);
                },
                error: function(request, status, message) {
                }
            });
    		// 棋子湾周边房价走势
    		$.ajax({
                url: jsonPath + "qzw/rest/home/queryHousePrice",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post", 
                data: JSON.stringify({
                	// 0:棋子湾当前平均市价 1:周边楼盘当前市价 2:整个海南岛平均市价
                	"price_type":"1"
                }),
                success: function(data, status) { 
                    var qzwzb_pubDate = [];
                    var qzwzb_priceDate = [];
                    for(var i = 0;i<data.length;i++){
                    	qzwzb_pubDate[i] = data[i].publish_date;
                    	qzwzb_priceDate[i] = data[i].price;
                    }
                    var qzwzb_Chart = echarts.init(document.getElementById('qzwzb_zs'));
                    var option = {
                    	    title: {
                    	        text: '棋子湾周边房价走势图',
                    	        textStyle:{
                    	        	color:'#006ec5'
                    	        }
                    	    },
                    	    tooltip: {
                    	        trigger: 'axis'
                    	    },
                    	    legend: {
                    	        data:['最高房价']
                    	    },
                    	    grid:{
                    	    	left:'50px'
                    	    },
                    	    xAxis:  {
                    	        type: 'category',
                    	        boundaryGap: false,
                    	        data: qzwzb_pubDate
                    	    },
                    	    yAxis: {
                    	        type: 'value',
                    	        min: 'dataMin',
                    	        axisLabel: {
                    	            formatter: '￥ {value}'
                    	        }
                    	    },
                    	    series: [
                    	        {
                    	            name:'棋子湾周边房价',
                    	            type:'line',
                    	            data:qzwzb_priceDate,
                    	            markPoint: {
                    	                data: [
                    	                    {type: 'max', name: '最大值'},
                    	                    {type: 'min', name: '最小值'}
                    	                ]
                    	            },
                    	            itemStyle:{
                    	            	normal:{
                    	            		color:'#006ec5'
                    	            	}
                    	            }
                    	        }
                    	    ]
                    	};
                    qzwzb_Chart.setOption(option);
                },
                error: function(request, status, message) {
                }
            });
    		// 海南房价走势
    		$.ajax({
                url: jsonPath + "qzw/rest/home/queryHousePrice",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post", 
                data: JSON.stringify({
                	// 0:棋子湾当前平均市价 1:周边楼盘当前市价 2:整个海南岛平均市价
                	"price_type":"2"
                }),
                success: function(data, status) { 
                    var hn_pubDate = [];
                    var hn_priceDate = [];
                    for(var i = 0;i<data.length;i++){
                    	hn_pubDate[i] = data[i].publish_date;
                    	hn_priceDate[i] = data[i].price;
                    }
                    var hn_Chart = echarts.init(document.getElementById('hn_zs'));
                    var option = {
                    	    title: {
                    	        text: '海南房价走势图',
                    	        textStyle:{
                    	        	color:'#006ec5'
                    	        }
                    	    },
                    	    tooltip: {
                    	        trigger: 'axis'
                    	    },
                    	    legend: {
                    	        data:['最高房价']
                    	    },
                    	    grid:{
                    	    	left:'50px'
                    	    },
                    	    xAxis:  {
                    	        type: 'category',
                    	        boundaryGap: false,
                    	        data: hn_pubDate
                    	    },
                    	    yAxis: {
                    	        type: 'value',
                    	        min: 'dataMin',
                    	        axisLabel: {
                    	            formatter: '￥ {value}'
                    	        }
                    	    },
                    	    series: [
                    	        {
                    	            name:'海南房价',
                    	            type:'line',
                    	            data:hn_priceDate,
                    	            clipOverflow:false,
                    	            markPoint: {
                    	                data: [
                    	                    {type: 'max', name: '最大值'},
                    	                    {type: 'min', name: '最小值'}
                    	                ]
                    	            },
                    	            itemStyle:{
                    	            	normal:{
                    	            		color:'#006ec5'
                    	            	}
                    	            }
                    	        }
                    	    ]
                    	};
                    hn_Chart.setOption(option);
                },
                error: function(request, status, message) {
                }
            });
    	});
    </script>
    <!--banner-->
    <script type="text/html" id="artTmpMain1">
        <div class="uk-slidenav-position" data-uk-slideshow="{autoplay:true,animation:'scroll'}">
            <ul class="uk-slideshow" >
                {{each  as value i}}
                <li>
                    <img src="${picPath}{{value.banner_img}}" alt="">
                </li>
                {{/each}}
            </ul>
            <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous"></a>
            <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next"></a>
        </div>
    </script>
    <!--项目介绍-->
    <script type="text/html" id="artTmpMain2">
        <div class="uk-width-1-1 uk-width-large-7-10">
            <figure class="uk-overlay uk-overlay-hover video-main">
                <img class="uk-overlay-scale FirstImg" imgSmallF="${picPath}{{img_smallF}}" src="${picPath}{{img_bigF}}"/>
                <figcaption class="uk-overlay-panel uk-overlay-fade uk-overlay-bottom">
                    <p class="FirstP" intrTitleF="{{intr_titleF}}">{{introduceF}}</p>
                </figcaption>
                <a class="uk-position-cover"></a>
            </figure>
        </div>
        <div class="uk-width-1-1 uk-width-large-3-10">
            <div class="video-secondary uk-grid uk-grid-collapse">
                <span class="video-secondary-top"></span>
                {{each  as value i}}
                <div class="video-secondary-content uk-width-1-2 uk-width-large-1-1">
                    <img class="uk-overlay-scale video-small" imgBig="${picPath}{{value.img_big}}" src="${picPath}{{value.img_small}}" width="100%"/>
                    <p introduce="{{value.introduce}}" class="uk-hidden-small">{{value.intr_title}}</p>
                </div>
                {{/each}}
            </div>
        </div>
    </script>
    <script type="text/html" id="artTmpMain3">
        {{each  as value i}}
        <div class="content tjhx-margin">
            <div class="uk-grid">
                <div class="uk-width-3-5">
                    <img src="${picPath}{{value.lr_img}}" alt="">
                </div>
                <div class="uk-width-2-5 bg">
                    <div class="hxbox">
                        <div class="hxbox-top">
                            <span class="icon-hx"></span>
                            <div class="hx-name">
                                <div class="hx-kinds">
                                    <h1>{{value.layout_name1}}</h1>
                                    <p>—{{value.layout_name2}}</br>户型</p>
                                </div>
                                <p>建筑面积约{{value.area}}m²{{value.room}}室{{value.hall}}厅</p>
                            </div>
                        </div>
                        <p class="hx-content">{{value.lr_desc}}</p>
                    </div>
                    <div class="sjx"></div>
                </div>
            </div>
        </div>
        {{/each}}
    </script>
    <!--户型概览-->
    <script type="text/html" id="artTmpMain4">
        {{each  as value i}}
        <div class="uk-width-1-1 uk-width-large-1-3">
            <figure class="uk-overlay uk-overlay-hover" style="width: 100%;">
                <img class="uk-overlay-scale" src="${picPath}{{value.lo_img}}" width="100%"/>
                <figcaption class="uk-overlay-panel uk-overlay-fade uk-overlay-bottom">
                    <p>{{value.lo_desc}}</p>
                </figcaption>
                <a class="uk-position-cover"></a>
            </figure>
        </div>
        {{/each}}
    </script>
    <!--资讯-->
    <script type="text/html" id="artTmpMain5">
       <div class="content">
            <div class="uk-grid news-bg uk-grid-collapse">
                <div class="uk-width-1-1 uk-width-large-1-3">
                    <div class="uk-grid uk-grid-collapse">
                        <div class="uk-width-1-2 uk-overlay uk-position-relative uk-width-large-1-1">
                            <img src="${picPath}{{small1.info_img}}" alt="" style="height: 250px;width: 100%">
                            <p class="uk-overlay-panel uk-overlay-bottom uk-overlay-background uk-text-center news_title">{{small1.info_title}}</p>
                            <div class="cover">
                                <p>{{small1.info_desc}}</p>
                            </div>
                        </div>
                        <div class="uk-width-1-2 uk-overlay uk-position-relative uk-width-large-1-1">
                            <img src="${picPath}{{small2.info_img}}" alt="" style="height: 250px;width: 100%">
                            <p class="uk-overlay-panel uk-overlay-bottom uk-overlay-background uk-text-center news_title">{{small2.info_title}}</p>
                            <div class="cover">
                                <p>{{small2.info_desc}}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="uk-width-1-1 uk-overlay uk-width-large-1-3 bigNews">
                    <img src="${picPath}{{small3.info_img}}" alt="" style="height: 500px;">
                    <p class="uk-overlay-panel uk-overlay-bottom uk-overlay-background uk-text-center news_title">{{small3.info_title}}</p>
                    <div class="cover">
                        <p>{{small3.info_desc}}</p>
                    </div>
                </div>
                <div class="uk-width-1-1 uk-overlay uk-width-large-1-3 bigNews">
                    <img src="${picPath}{{small4.info_img}}" alt="" style="height: 500px;">
                    <p class="uk-overlay-panel uk-overlay-bottom uk-overlay-background uk-text-center news_title">{{small4.info_title}}</p>
                    <div class="cover">
                        <p>{{small4.info_desc}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </script>
</body>
</html>