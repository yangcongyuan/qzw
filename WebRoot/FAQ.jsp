<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<input type="hidden" head="bzzx" id="head">
<cm:js />
<cm:css />
<head>
    <meta charset="UTF-8">
    <title>常见问题</title>
    <link rel="stylesheet" href="${basePath}css/FAQ.css">
</head>
<body style="background-color: #fff !important;">
    <cm:header />
    <div class="content FAQ">
        <div class="firstFloor_FAQ">
            <span class="title_FAQ">
                <img src="${basePath}images/question_hc.png" alt="">
                <span>
                    <p>帮助中心</p>
                    <small class="uk-hidden-small">Hello,欢迎您来到帮助中心解答疑惑,进一步咨询请拨打400-000-0000</small>
                </span>
            </span>
            <ul class="tab_FAQ uk-list">
                <li><a href="${basePath}help_center.jsp">首页</a></li>
                <li class="active1_FAQ"><a href="">常见问题</a></li>
                <li><a href="${basePath}new_guide.jsp">新手指引</a></li>
            </ul>
        </div>
        <div class="secondFloor_FAQ">
            <div class="uk-grid uk-grid-collapse">
                <div class="uk-width-1-1 uk-width-large-2-10 titleFAQ_FAQ">
                    <div><b>常见问题</b></div>
                    <div class="uk-hidden-small"></div>
                    <ul class="uk-list titleList_FAQ" id="htmlMain1">
                        
                    </ul>
                </div>
                <div class="uk-width-1-1 uk-width-large-7-10 mainFAQ_FAQ">
                    <div><i class="uk-hidden-small"></i><b class="tit"></b></div>
                    <ul class="uk-list" id="questionMain">
                        <li>
                            <ul class="uk-list questionMain_FAQ" id="htmlMain2">
                                
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <cm:footer />
</body>
<script>
    require(["app/common"],function(cm){
        layer.load(0, {shade: 0.3});
        $.ajax({
            url: jsonPath + "qzw/rest/help/queryQuestionTypeSel",
            contentType: "application/json; charset=utf-8",
            dataType: "json", 
            type: "post",
            success: function(data, status){
                layer.closeAll('loading');
                cm.renderHtml('artTmpMain1',data,'htmlMain1');
                $("#htmlMain1").find("li").eq(0).addClass("uk-active");
                var FirstId = $("#htmlMain1").find("li").eq(0).children("a").attr("typeId");
                var tit = $("#htmlMain1").find("li").eq(0).children("a").text();
                $(".tit").text(tit);
                $.ajax({
                    url: jsonPath + "qzw/rest/help/queryQuestion",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json", 
                    type: "post", 
                    data: JSON.stringify({
                        "type_id": FirstId,
                    }),
                    success: function(data, status){
                        layer.closeAll('loading');
                        cm.renderHtml('artTmpMain2',data,'htmlMain2')
                    },
                    error: function(request, status, message) {
                        layer.msg("网络异常，请重试！");
                    }
                });
                $("#htmlMain1 li").find("a").each(function(){
                    $(this).click(function(){
                        var tit = $(this).text();
                        layer.load(0, {shade: 0.3});
                        var typeId = $(this).attr("typeId");
                        $(this).parent().addClass("uk-active");
                        $(this).parent().siblings().removeClass("uk-active");
                        $.ajax({
                            url: jsonPath + "qzw/rest/help/queryQuestion",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json", 
                            type: "post", 
                            data: JSON.stringify({
                                "type_id": typeId,
                            }),
                            success: function(data, status){
                                layer.closeAll('loading');
                                cm.renderHtml('artTmpMain2',data,'htmlMain2');
                                $(".tit").text(tit);
                            },
                            error: function(request, status, message) {
                                layer.msg("网络异常，请重试！");
                            }
                        });
                    });
                });
            },
            error: function(request, status, message){
                layer.msg("网络异常，请重试！");
            }
        });
        $(document).on("click",".test",function(){showQuestionMain($(this));});
    });
//详细问题内容 手风琴效果.
    function showQuestionMain(obj){
        if(obj.children(".issueT_FAQ").children("span").hasClass("unselect")){
            obj.children(".issueT_FAQ").children("span").removeClass("unselect");
            obj.children(".issueT_FAQ").children("i").removeClass("uk-icon-chevron-down").addClass("uk-icon-chevron-up");
            obj.children(".issueM_FAQ").slideDown();
            obj.siblings().children(".issueM_FAQ").slideUp();
            obj.siblings().children(".issueT_FAQ").children("span").addClass("unselect");
            obj.siblings().children(".issueT_FAQ").children("i").removeClass("uk-icon-chevron-up").addClass("uk-icon-chevron-down");
            return;
        }else{
            obj.children(".issueT_FAQ").children("span").addClass("unselect");
            obj.children(".issueT_FAQ").children("i").removeClass("uk-icon-chevron-up").addClass("uk-icon-chevron-down");
            obj.children(".issueM_FAQ").slideUp();
        };
    };
</script>
<script type="text/html" id="artTmpMain1">
    {{each  as value i}}
        <li><a class="kelleg" typeId="{{value.type_id}}" >{{value.type_name}}</a></li>
    {{/each}}
</script>
<script type="text/html" id="artTmpMain2">
    {{each  as value i}}
    <li class="test">
        <div class="issueT_FAQ">[{{value.type_name}}]<span class="unselect">{{value.question}}</span><i class="uk-icon-justify uk-icon-chevron-down uk-float-right"></i></div>
        <div class="issueM_FAQ">{{value.answer}}</div>
    </li>
    {{/each}}
</script>
</html> 