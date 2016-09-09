<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<input type="hidden" id="cenhead" cenhead="zhzx" />
		<cm:js />
		<cm:css />
		<title>账户中心 - 棋子湾</title>
		<link rel="stylesheet" href="${basePath }css/account_center.css" />
		<link rel="stylesheet" href="${basePath }default/js/uikit/css/components/progress.css" />
	</head>
	<body>
		<cm:header />
		<div class="content">
			<cm:header_mycenter />
			<div class="uk-grid uk-grid-collapse account_detail">
				<div class="uk-grid uk-grid-collapse uk-width-medium-2-5 uk-push-3-5 uk-row-first">
					<div class="uk-width-1-2 account_safefont">
						<p><span class="account_orfont">安全中心</span>保护账户资产安全</p>
					</div>
					<div class="uk-width-1-2 account_txzzbtn">
						<a class="uk-button txzzbtn">提现</a>
						<a class="uk-button txzzbtn">转账</a>
					</div>
				</div>
				<div class="uk-grid uk-grid-collapse uk-width-medium-2-5 uk-pull-2-5 account_ye">
					<div class="uk-width-1-3 account_yeinfo">
						<p>可用余额：<span class="account_orfont">￥0</span></p>
					</div>
					<div class="uk-width-1-3 account_yeinfo">
						<p>锁定余额：<span class="account_orfont">￥0</span></p>
					</div>
					<div class="uk-width-1-3 account_yeinfo">
						<p>锁定余额：<span class="account_orfont">有效</span></p>
					</div>
				</div>
			</div>
			<div class="account_szmx">
				<ul data-uk-switcher="{connect:'#tab_szmx'}" class="uk-grid uk-subnav uk-subnav-pill tab_szmx_til">
				    <li><a>近三个月收支明细</a></li>
				    <li><a>前三个月收支明细</a></li>
				</ul>
				<ul id="tab_szmx" class="uk-switcher">
				    <li>
				    	<div class="uk-overflow-container jszmx_table">
				    		<table class="uk-table">
				    			<thead>
				    				<tr class="uk-grid uk-grid-collapse">
				    					<th class="uk-width-3-10">时间</th>
				    					<th class="uk-width-2-10">存入</th>
				    					<th class="uk-width-2-10">支出</th>
				    					<th class="uk-width-3-10">备注</th>
				    				</tr>
				    			</thead>
				    			<tbody>
							        <tr>
							            <td class="jszmx_table_tsinfo">提示：系统仅显示您两年之内的余额明细，更早的余额明细不再显示。</td>
							        </tr>
							    </tbody>
				    		</table>
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
				    </li>
				   	<li>
				   		<div class="uk-overflow-container jszmx_table">
				    		<table class="uk-table">
				    			<thead>
				    				<tr class="uk-grid uk-grid-collapse">
				    					<th class="uk-width-3-10">时间</th>
				    					<th class="uk-width-2-10">存入</th>
				    					<th class="uk-width-2-10">支出</th>
				    					<th class="uk-width-3-10">备注</th>
				    				</tr>
				    			</thead>
				    			<tbody>
							        <tr>
							            <td class="jszmx_table_tsinfo">提示：系统仅显示您两年之内的余额明细，更早的余额明细不再显示。</td>
							        </tr>
							    </tbody>
				    		</table>
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
				   	</li>
				</ul>
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