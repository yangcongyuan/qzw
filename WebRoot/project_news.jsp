<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<input type="hidden" id="cenhead" cenhead="xmdt">
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>项目动态</title>
    <link rel="stylesheet" href="${basePath}css/chajian.css">
    <link rel="stylesheet" href="${basePath}css/project_news.css">
</head>
<body>
    <cm:header></cm:header>
    <div class="content">
        <cm:header_mycenter></cm:header_mycenter>
        <div class="bg_project_news">
            <div class="uk-width-100 title_projectNews">
                <h1>项目动态</h1>
                <div></div>
            </div>
            <section id="cd-timeline" class="cd-container"> 
                <div class="cd-timeline-block"> 
                    <div class="cd-timeline-img cd-picture"> 
                        2016.6 
                    </div> 
                    <div class="cd-timeline-content uk-grid uk-grid-collapse"> 
                        <div class="uk-width-1-2">
                            <img src="${basePath}images/newsIcon_projectNews.png" alt="">
                        </div>
                        <div class="uk-width-1-2">
                            <div class="tittle_projectNews">楼盘蓝图</div>
                            <p class="introduce_projectNews">各国设计共同努力设计出的蓝图，打造环境优美的住宅区。</p>
                        </div>
                    </div> 
                </div>
                <div class="cd-timeline-block"> 
                    <div class="cd-timeline-img cd-picture"> 
                        2016.6 
                    </div> 
                    <div class="cd-timeline-content uk-grid uk-grid-collapse"> 
                        <div class="uk-width-1-2">
                            <img src="${basePath}images/newsIcon_projectNews.png" alt="">
                        </div>
                        <div class="uk-width-1-2">
                            <div class="tittle_projectNews">楼盘蓝图</div>
                            <p class="introduce_projectNews">各国设计共同努力设计出的蓝图，打造环境优美的住宅区。</p>
                        </div>
                    </div> 
                </div>
                <div class="cd-timeline-block"> 
                    <div class="cd-timeline-img cd-picture"> 
                        2016.6 
                    </div> 
                    <div class="cd-timeline-content uk-grid uk-grid-collapse"> 
                        <div class="uk-width-1-2">
                            <img src="${basePath}images/newsIcon_projectNews.png" alt="">
                        </div>
                        <div class="uk-width-1-2">
                            <div class="tittle_projectNews">楼盘蓝图</div>
                            <p class="introduce_projectNews">各国设计共同努力设计出的蓝图，打造环境优美的住宅区。</p>
                        </div>
                    </div> 
                </div> 
            </section>
        </div>
    </div>
    <cm:footer></cm:footer>
</body>
</html>