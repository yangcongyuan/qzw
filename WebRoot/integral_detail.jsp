<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<input type="hidden" id="cenhead" cenhead="jfmx" />
		<cm:js />
		<cm:css />
		<title>积分明细 - 棋子湾</title>
		<link rel="stylesheet" href="${basePath }css/incomepay_detail.css" />
		<link rel="stylesheet" href="${basePath }css/integral_detail.css" />
		<link rel="stylesheet" href="${basePath }default/js/uikit/css/components/progress.css" />
	</head>
	<body>
		<cm:header />
		<div class="content">
			<cm:header_mycenter />
			<div class="szmx">
				<div class="uk-grid uk-grid-collapse integral_kyjf">
					<p class="uk-width-2-10 kyjf_wz">可用积分：<span class="kyjf_num">0</span></p>
					<p class="uk-width-8-10">(积分使用规则简单说明，规范等等等等)</p>
				</div>
				<div class="uk-grid uk-grid-collapse integral_jfmx">
					<div class="uk-width-4-10">
						<p class="szmx_wz">积分明细</p>
					</div>
					<div class="uk-width-4-10 szmx_px">
						<a ><i class="uk-icon-caret-down"></i>最近交易</a>
						<a ><i class="uk-icon-caret-up"></i>交易时间</a>
					</div>
					<div class="uk-width-2-10 szmx_all">
						<p class="uk-float-right"><i class="common_division"></i><a>查看所有交易</a></p>
					</div>
					<div class="uk-width-1-1 szmx_table">
						<table class="uk-table uk-table-striped uk-text-center">
							<thead>
								<tr>
									<th>日期</th>
									<th>详细说明</th>
									<th></th>
									<th>收入/支出</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>20160829</td>
									<td>希望·棋子湾什么什么度假旅游什么什么什么XX号楼XX单元XXXXXXX</td>
									<td></td>
									<td class="integral_income">+2000</td>
									<td></td>
								</tr>
								<tr>
									<td>20160829</td>
									<td>希望·棋子湾什么什么度假旅游什么什么什么XX号楼XX单元XXXXXXX</td>
									<td></td>
									<td class="integral_pay">-2000</td>
									<td></td>
								</tr>
							</tbody>
						</table>
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
			<cm:footer_mycenter />
		</div>
		<cm:footer />
		<script>
	    	require(["uikit!pagination"],function(UI){
	    		
	    	});
	    </script>
	</body>
</html>