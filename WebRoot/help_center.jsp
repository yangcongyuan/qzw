<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<input type="hidden" head="bzzx" id="head">
<cm:js />
<cm:css />
<head>
    <meta charset="UTF-8">
    <title>帮助中心</title>
    <link rel="stylesheet" href="${basePath}css/help_center.css">
</head>
<body style="background-color: #fff !important;">
    <cm:header />
    <div class="content helpCenter">
        <div class="firstFloor_hc">
            <span class="title_hc">
                <img src="${basePath}images/question_hc.png" alt="">
                <span>
                    <p>帮助中心</p>
                    <small class="uk-hidden-small">Hello,欢迎您来到帮助中心解答疑惑,进一步咨询请拨打400-6699-090</small>
                </span>
            </span>
            <ul class="tab_hc uk-list">
                <li class="active1_hc"><a href="">首页</a></li>
                <li><a href="${basePath}FAQ.jsp">常见问题</a></li>
                <li><a href="${basePath}new_guide.jsp">新手指引</a></li>
            </ul>
        </div>
        <div class="secondFloor_hc">
            <div class="uk-grid uk-grid-collapse">
                <div class="uk-width-1-2 FAQ_hc"><b>常见问题</b></div>
                <div class="uk-width-1-2 uk-text-right moreFAQ_hc"><i class="uk-icon-justify uk-icon-plus-square"></i><a href="${basePath}FAQ.jsp">更多常见问题</a></div>
            </div>
            <div class="FAQmain_hc uk-grid uk-grid-collapse">
                <ul class="uk-list uk-grid uk-grid-collapse" id="htmlMain">
                    
                </ul>
            </div>
        </div>
<!--
        <div class="thirdlyFloor_hc">
            <div class="linkUs_hc"><b>联系我们</b></div>
            <div class="uk-grid uk-grid-collapse">
                <div class="uk-width-3-10">
                    <img src="${basePath}images/phone_hc.png" alt="" class="phone_hc">
                    <p class="uk-text-center diyige_hc"><b>电话客服</b></p>
                    <p class="uk-text-center dierge_hc">预约客服，主动回电</p>
                    <a href="" class="clickYY_hc">点击预约</a>
                </div>
                <div class="uk-width-3-10">
                    <img src="${basePath}images/kefu_hc.png" alt="" class="phone_hc">
                    <p class="uk-text-center diyige_hc"><b>在线客服</b></p>
                    <p class="uk-text-center dierge_hc">在线解答您的咨询，高效、便捷</p>
                    <a href="" class="clickYY2_hc">点击预约</a>
                </div>
                <div class="uk-width-3-10">
                    <img src="${basePath}images/liuyan_hc.png" alt="" class="phone_hc">
                    <p class="uk-text-center diyige_hc"><b>提建议</b></p>
                    <p class="uk-text-center dierge_hc">对帮助中心提建议</p>
                    <a href="" class="clickYY3_hc">点击留言</a>
                </div>
            </div>
        </div>
-->
<!--        <cm:footer_mycenter />-->
    </div>
    <cm:footer />
</body>
<script>
    require(["app/common"],function(cm){
        layer.load(0, {shade: 0.3});
        $.ajax({
            url: jsonPath + "qzw/rest/help/queryQuestion10",
            contentType: "application/json; charset=utf-8",
            dataType: "json", 
            type: "post", 
            success: function(data, status){
                layer.closeAll('loading');
                cm.renderHtml('artTmpMain',data,'htmlMain');
                $("#htmlMain li").find("a").each(function(){
                    $(this).click(function(){
                        var n = $(this).parent().index();
                        layer.alert(data[n].answer, {
                            skin: 'layui-layer-lan',
                            closeBtn: 0,
                            title: data[n].question,
//                            shadeClose: true,
                            shift: 2 //动画类型
                      });
                    });
                });
            },
            error: function(request, status, message){
                layer.msg("网络异常，请重试！")
            }
        });
    });
</script>
<script type="text/html" id="artTmpMain">
    {{each  as value i}}
        <li class="uk-width-1-1 uk-width-large-1-2"><i>【{{value.type_name}}】</i><a>{{value.question}}</a></li>
    {{/each}}
</script>
</html>