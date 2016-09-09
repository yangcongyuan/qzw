<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<input type="hidden" nofooter="no" id="cenhead"/>
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>搜索结果页</title>
    <link rel="stylesheet" href="${basePath}css/search_result.css">
</head>
<body>
    <cm:header></cm:header>
    <div class="content">
        <cm:header_mycenter></cm:header_mycenter>
        <div class="uk-width-100 projectListTop_searchResult">
            <span href="" class="uk-icon-justify uk-icon-th-list"></span>
            <h1>项目列表</h1>
        </div>
        <div class="uk-width-100 content_searchResult">
            <ul class="uk-breadcrumb">
                <li><span>关键字</span></li>
                <li><span>“吴总”</span></li>
            </ul>
            <small>查询结果共88个相关项目</small>
            <div class="topLine_searchResult"></div>
            <div class="screen_searchResult">
                <input type="checkbox">
                <label for="">全部</label>
                <input type="checkbox">
                <label for="">预热中</label>
                <input type="checkbox">
                <label for="">众筹中</label>
                <input type="checkbox">
                <label for="">众筹成功</label>
            </div>
            <div class="projectContetn_searchResult">
                <div class="projectDetail_searchResult uk-overflow-hidden">
                    <div class="projectBox_searchResult">
                        <div class="project_searchResult">
                            <a href=""><img src="${basePath}images/projectDetail_searchResult.png" alt=""></a>
                            <h1>吴总代言200m² 阳光限量海景房</h1>
                            <p>众筹金额：<i>￥2000000</i></p>
                            <p>关注人数：84</p>
                            <button><a href="">我要支持</a></button>
                        </div>
                        <div class="project_searchResult">
                            <a href=""><img src="${basePath}images/projectDetail_searchResult.png" alt=""></a>
                            <h1>吴总代言200m² 阳光限量海景房</h1>
                            <p>众筹金额：<i>￥2000000</i></p>
                            <p>关注人数：84</p>
                            <button><a href="">我要支持</a></button>
                        </div>
                        <div class="project_searchResult">
                            <a href=""><img src="${basePath}images/projectDetail_searchResult.png" alt=""></a>
                            <h1>吴总代言200m² 阳光限量海景房</h1>
                            <p>众筹金额：<i>￥2000000</i></p>
                            <p>关注人数：84</p>
                            <button><a href="">我要支持</a></button>
                        </div>
                        <div class="project_searchResult">
                            <a href=""><img src="${basePath}images/projectDetail_searchResult.png" alt=""></a>
                            <h1>吴总代言200m² 阳光限量海景房</h1>
                            <p>众筹金额：<i>￥2000000</i></p>
                            <p>关注人数：84</p>
                            <button><a href="">我要支持</a></button>
                        </div>
                    </div>
                    <div class="projectBox_searchResult">
                        <div class="project_searchResult">
                            <a href=""><img src="${basePath}images/projectDetail_searchResult.png" alt=""></a>
                            <h1>吴总代言200m² 阳光限量海景房</h1>
                            <p>众筹金额：<i>￥2000000</i></p>
                            <p>关注人数：84</p>
                            <button><a href="">我要支持</a></button>
                        </div>
                        <div class="project_searchResult">
                            <a href=""><img src="${basePath}images/projectDetail_searchResult.png" alt=""></a>
                            <h1>吴总代言200m² 阳光限量海景房</h1>
                            <p>众筹金额：<i>￥2000000</i></p>
                            <p>关注人数：84</p>
                            <button><a href="">我要支持</a></button>
                        </div>
                        <div class="project_searchResult">
                            <a href=""><img src="${basePath}images/projectDetail_searchResult.png" alt=""></a>
                            <h1>吴总代言200m² 阳光限量海景房</h1>
                            <p>众筹金额：<i>￥2000000</i></p>
                            <p>关注人数：84</p>
                            <button><a href="">我要支持</a></button>
                        </div>
                        <div class="project_searchResult">
                            <a href=""><img src="${basePath}images/projectDetail_searchResult.png" alt=""></a>
                            <h1>吴总代言200m² 阳光限量海景房</h1>
                            <p>众筹金额：<i>￥2000000</i></p>
                            <p>关注人数：84</p>
                            <button><a href="">我要支持</a></button>
                        </div>
                    </div>
                    <div class="uk-grid uk-grid-collapse uk-float-right jszmx_table_fy">
                        <ul class="uk-pagination" data-uk-pagination="{items:100, itemsOnPage:10}">
                            <li><span>1</span></li>
                            <li><span>2</span></li>
                            <li><span>3</span></li>
                            <li><span>4</span></li>
                            <li><span>5</span></li>
                            <li><span>6</span></li>
                            <li><span>7</span></li>
                            <li><span>8</span></li>
                            <li><span>9</span></li>
                            <li><span>10</span></li>
                        </ul>
                        <p class="tzcz"><span>跳转到</span><input type="text">页</p>
                    </div>
                </div>
            </div>
        </div>
        <cm:footer_mycenter></cm:footer_mycenter>
    </div>
    <cm:footer></cm:footer>
    <script>
    	require(["uikit!pagination"],function(UI){
    		
    	});
    </script>
</body>
</html>