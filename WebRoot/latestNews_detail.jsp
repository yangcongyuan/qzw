<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<input type="hidden" head="zxzx" id="head">
<cm:js />
<cm:css />
<head>
    <meta charset="UTF-8">
    <title>最新资讯详情</title>
    <link rel="stylesheet" href="${basePath}css/latestNews_detail.css">
</head>
<body>
    <cm:header />
    <div class="content" id="htmlMain">
        
    </div>
    <cm:footer />
</body>
<script>
    var newsId = getQueryString("newsId");
    require(["app/common"],function(cm){
    	layer.load(0, {shade: 0.3});
        $.ajax({
            url: jsonPath + "qzw/rest/news/selectId",
            contentType: "application/json; charset=utf-8",
            dataType: "json", 
            type: "post", 
            data: JSON.stringify({
                id: newsId,
            }),
            success: function(data, status){
            	layer.closeAll('loading');
                cm.renderHtml('artTmpMain',data,'htmlMain')
            },
            error: function(request, status, message){
                layer.msg("网络异常，请重试！");
            }
        });
    });
</script>
<script type="text/html" id="artTmpMain">
    <div class="latestNewsDetail_lnd">
        <div class="topTitle_lnd">
            <ul class="uk-breadcrumb">
                <li><a href="${basePath}latest_news.jsp">最新资讯</a></li>
                <li class="uk-active"><span>{{date.title}}</span></li>
            </ul>
        </div>
        <div class="main_lnd">
            {{#date.detail}}
        </div>
    </div>
</script>
</html>