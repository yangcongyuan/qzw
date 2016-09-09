<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<input type="hidden" head="fylb" id="head">
<cm:js />
<cm:css />
<head>
    <meta charset="UTF-8">
    <title>房源列表</title>
    <link rel="stylesheet" href="${basePath}css/house_list.css">
</head>
<body>
    <cm:header />
    <div class="content">
        <div class="firstFloor_hl">
            <span class="uk-icon-justify uk-icon-list-ul"></span>
            <span>房源列表</span>
        </div>
        <div class="secondFloor_hl">
            <div class="classify_hl">
                <span>房屋类型<i class="uk-hidden-small">：</i><i class="uk-icon-justify uk-icon-chevron-down uk-float-right ICON"></i></span>
                <ul id="type">

                </ul>
            </div>
            <div class="classify_hl classify-2_hl">
                <span>房屋面积<i class="uk-hidden-small">：</i><i class="uk-icon-justify uk-icon-chevron-down uk-float-right ICON"></i></span>
                <ul id="area">
                    
                </ul>
            </div>
            <div class="classify_hl" style="border-top: none;">
                <span>房屋户型<i class="uk-hidden-small">：</i><i class="uk-icon-justify uk-icon-chevron-down uk-float-right ICON"></i></span>
                <ul id="houseType">
                    
                </ul>
            </div>
        </div>
        <div class="secondFloor_hl">
            
        </div>
        <div class="thirdlyFloor_hl uk-overflow-hidden">
            <div class="theFloor uk-grid uk-grid-small" id="houseList">
                
            </div>
           <!--  <div class="uk-grid uk-grid-collapse uk-float-right jszmx_table_fy">
                <ul class="uk-pagination" data-uk-pagination="{items:100, itemsOnPage:10}"></ul>
                <p class="tzcz"><span>跳转到</span><input type="text">页</p>
            </div> -->
        </div>
    </div>
    <cm:footer />
    <input type="hidden" id="saveSomeMsg">
</body>
<script>
    var search = getQueryString("searchMain");
    var bodyw  = document.body.clientWidth;
    function listSortBy(arr, field, order){ 
        var refer = [], result=[], order = order=='asc'?'asc':'desc', index; 
        for(i=0; i<arr.length; i++){ 
            refer[i] = arr[i][field]+':'+i; 
        } 
        refer.sort(); 
        if(order=='desc') refer.reverse(); 
        for(i=0;i<refer.length;i++){ 
            index = refer[i].split(':')[1]; 
            result[i] = arr[index]; 
        } 
        return result; 
    }
//获取房源列表。
    function getHouseList(cm,areaId,typeId,houseTypeId){
        layer.load(0, {shade: 0.3});
        $.ajax({
            url: jsonPath + "qzw/rest/apartment/list",
            contentType: "application/json; charset=utf-8",
            dataType: "json", 
            type: "post",
            data: JSON.stringify({
                currentPage: '0',
                pageSize: '12',
                area: areaId,
                type: typeId,
                houseType: houseTypeId,
                searchText: search,
            }),
            success: function(data, status){
                layer.closeAll('loading');
                var arr = [];
                var n = 0;
                for(var i = 0; i < data.list.length; i++){
                    data.list[i].userId = userId;
                    data.list[i].stateKill = data.list[i].now - data.list[i].endTime;
                    data.list[i].noKilling = data.list[i].now - data.list[i].startTime;
                    if((data.list[i].startTime < data.list[i].now) && (data.list[i].now < data.list[i].endTime)){
                        data.list[i].n = 0;
                    }else if(data.list[i].endTime < data.list[i].now){
                        n = data.list.length + 1;
                        data.list[i].n = n;
                    }else{
                        n = n + 1;
                        data.list[i].n = n;
                    }
                    var sortTime = data.list[i].n;
                    arr.push({"data":data.list[i],"time":sortTime});
                }
                console.log(arr);
                arr = listSortBy(arr,'time','asc')
                cm.renderHtml("houseListArt",arr,"houseList");
                if(data.list.length == 0){
                    $("#houseList").html('<div class="uk-flex uk-flex-center uk-flex-middle" style="height: 100px;width: 100%;"><p style="color: #006ec5;font-size: 20px;">暂无房源信息</p></div>')
                }
            },
            error: function(request, status, message){
                layer.msg("网络异常，请重试！");
            }
        });
    };
//小屏，筛选条件展示、隐藏。
    function clickScreenShow(){
        $(".secondFloor_hl").find("span").each(function(){
            $(this).click(function(){
                if($(this).hasClass("slided")){
                    $(this).siblings("ul").stop(true,true).slideUp("fast");
                    $(this).removeClass("slided");
                    $(this).children(".uk-icon-justify").removeClass("uk-icon-chevron-up").addClass("uk-icon-chevron-down");
                    return;
                };
                $(this).siblings("ul").stop(true,true).slideDown("fast");
                $(this).addClass("slided");
                $(this).children(".uk-icon-justify").removeClass("uk-icon-chevron-down").addClass("uk-icon-chevron-up");
            });
        });
    };
    require(["uikit!pagination","app/common"],function(UI,cm){
        if(search != '' && search != null){
        	layer.load(0, {shade: 0.3});
            $.ajax({
                url: jsonPath + "qzw/rest/apartment/list",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post",
                data: JSON.stringify({
                    currentPage: '0',
                    pageSize: '12',
                    searchText: search,
                }),
                success: function(data, status){

                	layer.closeAll('loading');
                    cm.renderHtml("houseListArt",data,"houseList");
                },
                error: function(request, status, message){
                    layer.msg("网络异常，请重试！");
                }
            });
        }else{
            getHouseList(cm);
        }
    //获取筛选条件
        $.ajax({
            url: jsonPath + "qzw/rest/apartment/search/options/1",
            contentType: "application/json; charset=utf-8",
            dataType: "json", 
            type: "get",
            success: function(data, status){
                cm.renderHtml("areaArt",data.date,"area");
                cm.renderHtml("typeArt",data.date,"type");
                cm.renderHtml("houseTypeArt",data.date,"houseType");
                var areaId,typeId,houseTypeId
                $(".classify_hl ul").find("li").click(function(){
                    if($(this).hasClass("classifyActive_hl")){
                        $(this).removeClass("classifyActive_hl");
                        if($(this).attr("areaId")){
                             areaId = 'undefined';
                        }else if($(this).attr("typeId")){
                             typeId = 'undefined';
                        }else if($(this).attr("houseTypeId")){
                             houseTypeId = 'undefined';
                        }
                    }else{
                        $(this).addClass("classifyActive_hl");
                        $(this).siblings().removeClass("classifyActive_hl");
                        if($(this).attr("areaId")){
                            var areaId = $(this).attr("areaId");
                        }else if($(this).attr("typeId")){
                            var typeId = $(this).attr("typeId");
                        }else if($(this).attr("houseTypeId")){
                            var houseTypeId = $(this).attr("houseTypeId");
                        }
                    }
                    $("#saveSomeMsg").attr("one",areaId);
                    $("#saveSomeMsg").attr("two",typeId);
                    $("#saveSomeMsg").attr("three",houseTypeId);
                    areaId = $("#saveSomeMsg").attr("one");
                    typeId = $("#saveSomeMsg").attr("two");
                    houseTypeId = $("#saveSomeMsg").attr("three");
                    getHouseList(cm,areaId,typeId,houseTypeId);     //获取筛选后内容。
                });
            },
            error: function(request, status, message){
                layer.msg("网络异常，请重试！");
            }
        });
        if(bodyw < 765){
            $(".ICON").show();
            $(".secondFloor_hl").find("ul").hide();
            $(".secondFloor_hl").find("span").css({"display":"block"});
            clickScreenShow();
        }
    });
</script>
<script type="text/html" id="houseListArt">
    {{each  as value i}}
    <div class="uk-width-1-1 uk-width-large-1-4">
        <div class="shadow_hl">
            <div>
                <a href="${basePath}house_detail.jsp?aparId={{value.data.aparId}}"><img src="${picPath}{{value.data.listImg}}" width="100%" height="250"></a>
            </div>
            <div class="houseMsg_hl">
                <p>￥{{value.data.sellPrice/10000}}万</p>
                <ul>
                    <li>房屋类型：{{value.data.aparType}}</li>
                    <li>房屋面积：<b>{{value.data.area}}m²</b></li>
                    <li>房屋户型：{{value.data.room}}室{{value.data.hall}}厅</li>
                </ul>
                {{if value.data.stateKill > 0}}
                    {{if !value.data.userId}}
                        <a class="uk-float-right stateKilled_hl" href="${basePath}house_detail.jsp?aparId={{value.data.aparId}}">查看房源</a>
                    {{else}}
                        <a class="uk-float-right stateKilled_hl" href="${basePath}house_detail.jsp?aparId={{value.data.aparId}}&userId={{value.userId}}">查看房源</a>
                    {{/if}}
                {{else}}
                    {{if value.data.noKilling > 0}}
                        {{if !value.data.userId}}
                            <a class="uk-float-right" href="${basePath}house_detail.jsp?aparId={{value.data.aparId}}">我要抢购</a>
                        {{else}}
                            <a class="uk-float-right" href="${basePath}house_detail.jsp?aparId={{value.data.aparId}}&userId={{value.data.userId}}">我要抢购</a>
                        {{/if}}
                    {{else}}
                        {{if !value.data.userId}}
                            <a class="uk-float-right killing_hl" href="${basePath}house_detail.jsp?aparId={{value.data.aparId}}">即将开抢</a>
                        {{else}}
                            <a class="uk-float-right killing_hl" href="${basePath}house_detail.jsp?aparId={{value.data.aparId}}&userId={{value.data.userId}}">即将开抢</a>
                        {{/if}}
                    {{/if}}
                {{/if}}
            </div>
        </div>
    </div>
    {{/each}}
</script>
<script type="text/html" id="areaArt">
    {{each area as value i}}
    <li areaId="{{value.id}}"><a>{{value.value}}</a></li>
    {{/each}}
</script>
<script type="text/html" id="typeArt">
    {{each type as value i}}
    <li typeId="{{value.id}}"><a>{{value.value}}</a></li>
    {{/each}}
</script>
<script type="text/html" id="houseTypeArt">
    {{each houseType as value i}}
    <li houseTypeId="{{value.id}}"><a>{{value.room}}室{{value.hall}}厅</a></li>
    {{/each}}
</script>
</html>