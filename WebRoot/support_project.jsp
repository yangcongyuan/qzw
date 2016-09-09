<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<input type="hidden" id="cenhead" cenhead="zcxm" nofooter="no" />
		<cm:js />
		<cm:css />
		<title>我购买的房源 - 棋子湾</title>
		<link rel="stylesheet" href="${basePath }css/support_project.css" />
	</head>
	<body>
		<cm:header />
		<div class="content">
			<cm:header_mycenter />
			<div class="support_project">
				<p class="support_wz">我购买的房源</p>
				<table class="uk-table" id="htmlMain">
				
				</table>
				<!-- <div class="uk-grid uk-grid-collapse uk-float-right jszmx_table_fy">
		    		<ul class="uk-pagination" data-uk-pagination="{items:100, itemsOnPage:10}">
		    			
		    		</ul>
		    		<p class="tzcz"><span>跳转到</span><input type="text">页</p>
		    	</div> -->
			</div>
			<cm:footer_mycenter />
		</div>
		<cm:footer />
		<script>
	    	require(["uikit!pagination","app/common"],function(UI,cm){
	    		layer.load(0, {shade: 0.3});
                $.ajax({
                    url: jsonPath + "qzw/rest/apartment/buy/list",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json", 
                    type: "post",
                    data: JSON.stringify({
                        currentPage: 0,
                        pageSize: 10,
                        userId: userId,
                    }),
                    success: function(data, status){
                        layer.closeAll('loading');
                        for(var i = 0; i < data.list.length; i++){
                            data.list[i].sellPriceZ = data.list[i].sellPrice / 10000;
                        }
                        cm.renderHtml('artTmpMain',data,'htmlMain');
                        
                    },
                    error: function(request, status, message){
                        layer.msg("网络异常，请重试！")
                    }
                });
	    	});
	    </script>
	</body>
	<script type="text/html" id="artTmpMain">
		{{if count == "0"}}
			<p class="zw_fy_ts">暂无已购房源！</p>
		{{else}}
		<thead>
			<tr>
				<th class="support_thead_proinfo">项目信息</th>
				<th>项目编号</th>
				<th>关注人数</th>
				<th>项目金额</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
        {{each list as value i}}
	    <tr>
            <td class="uk-grid uk-grid-collapse support_projectinfo">
                <div class="uk-width-7-10">
                    <img src="${picPath }{{value.listImg}}" />
                </div>
                <div class="uk-width-3-10 support_tbody_infocon">
                    <p>{{value.decorate}}-{{value.buildingNo}}栋  {{value.unitNo}}-{{value.aparNo}}</p>
                    <p>{{value.room}}室{{value.hall}}厅</p>
                    <p>建筑面积{{value.area}}²</p>
                </div>
            </td>
            <td>
                <p class="support_tbody_con">{{value.aparId}}</p>
            </td>
            <td>
                <p class="support_tbody_con">{{value.attentionCount}}</p>
            </td>
            <td>
                <p class="support_tbody_con">{{value.sellPriceZ}}万</p>
            </td>
            <td>
                <div class="support_tbody_con support_operation">
                    
                    <p>{{if value.state == -1}}失败{{/if}}{{if value.state == 0}}待付款{{/if}}{{if value.state == 1}}已付款{{/if}}</p>
                </div>
            </td>
        </tr>
        {{/each}}
	</tbody>
{{/if}}
	</script>
</html>