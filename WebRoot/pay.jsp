<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<cm:js />
		<cm:css />
		<title>支付 - 棋子湾</title>
		<link rel="stylesheet" href="${basePath }css/pay.css" />
		<script type="text/javascript" src="${basePath }js/pay.js"></script>
	</head>
	<body>
		<cm:header />
		<div class="content">
			<div class="pay">
				<div class="uk-grid uk-grid-collapse pay_step">
					<div class="uk-width-1-3 pay_step_orderinfo">
						<div class="pay_step_default pay_step_now">
							<span class="uk-badge uk-badge-notification uk-badge-default uk-badge-now">1</span>
						</div>
						<p>订单信息</p>
					</div>
					<div class="uk-width-1-3 pay_step_pay">
						<div class="pay_step_default">
							<span class="uk-badge uk-badge-notification uk-badge-default">2</span>
						</div>
						<p>支付</p>
					</div>
					<div class="uk-width-1-3 pay_step_over">
						<div class="pay_step_default">
							<span class="uk-badge uk-badge-notification uk-badge-default">3</span>
						</div>
						<p>完成</p>
					</div>
				</div>
				<div class="pay_order_detailstep">
					<div class="pay_order_detail">
						<p class="uk-text-large order_detail_wz">订单详情</p>
						<div class="order_detail_con">
							<p>社区规划与配套高端完善，占地面积9512.7平方米，由A、B两座板式高层组成，户型使用面积60-160平方米之间。已有众多国际级配套设施引入，周边配套齐全，格调高档小资，海派情调浓郁,交通便利。</p>
						</div>
						<div class="uk-grid order_detail_img">
							<img src="${basePath }images/order_detail_img1.png" class="uk-width-1-3" />
							<img src="${basePath }images/order_detail_img2.png" class="uk-width-1-3" />
							<img src="${basePath }images/order_detail_img3.png" class="uk-width-1-3" />
						</div>
					</div>
					<div class="order_pay_prompt">
						<p class="pay_prompt_til">支付注意事项：</p>
						<div class="pay_prompt_con">
							<p>请您务必审慎阅读、充分理解协议中相关条款内容，其中包括：</p>
							<p>1、风险提示条款和特别提示条款；</p>
							<p>2、与您约定法律适用和管辖的条款；</p>
							<p>3、其他以粗体标识的重要条款。</p>
							<p>如您不同意相关协议、公告、规则、操作流程和项目页面承诺，您有权选择不支持；一旦选择支持，即视为您已确知
							并完全同意相关协议。</p>
						</div>
						<div class="pay_prompt_message">
							<span>留言</span>
							<input type="text" />
						</div>
					</div>
					<div class="uk-float-right order_pay_enterinfo">
						<p class="order_pay_realmoney">实付款：<span>￥1000000.00</span>元</p>
						<p class="order_pay_protocol"><input type="checkbox">我已阅读并同意众筹的《支持者协议》</p>
						<a class="uk-button order_pay_enterorderbtn" hdiv="pay_order_detailstep" sdiv="pay_order_paystep">确认订单</a>
					</div>
				</div>
				<div class="pay_order_paystep" style="display: none;">
					<p class="uk-text-large paystep_zfxq_wz">支付详情<span class="uk-icon-caret-up"></span></p>
					<div class="pay_order_detail">
						<p class="uk-text-large order_detail_wz">订单详情</p>
						<div class="order_detail_con">
							<p>社区规划与配套高端完善，占地面积9512.7平方米，由A、B两座板式高层组成，户型使用面积60-160平方米之间。已有众多国际级配套设施引入，周边配套齐全，格调高档小资，海派情调浓郁,交通便利。</p>
						</div>
						<div class="uk-grid order_detail_img">
							<img src="${basePath }images/order_detail_img1.png" class="uk-width-1-3" />
							<img src="${basePath }images/order_detail_img2.png" class="uk-width-1-3" />
							<img src="${basePath }images/order_detail_img3.png" class="uk-width-1-3" />
						</div>
					</div>
					<div class="order_pay_paymoney">
						<div class="pay_paymoney">
							<p class="uk-float-left uk-text-large pay_paymoney_wz">支付金额：</p>
							<p class="uk-float-right uk-text-large pay_paymoney_num">￥1000000.00</p>
						</div>
					</div>
					<div class="order_pay_way">
						<p class="uk-text-large pay_way_wz">付款方式</p>
						<ul class="uk-navbar-nav uk-navbar-center pay_way_nav" data-uk-switcher="{connect:'#pay_way_con'}">
						    <li><a href="">银联支付</a></li>
						    <li><a href="">信用卡支付</a></li>
						    <li><a href="">网银支付</a></li>
						    <li><a href="">支付宝支付</a></li>
						</ul>
						<ul id="pay_way_con" class="uk-switcher">
						    <li>
						    	<div class="uk-grid">
						    		<div class="uk-width-1-4 pay_way_selbank">
						    			<input type="radio" />
						    			<img src="${basePath }images/bank.png">
						    		</div>
						    		<div class="uk-width-1-4 pay_way_selbank">
						    			<input type="radio" />
						    			<img src="${basePath }images/bank.png">
						    		</div>
						    		<div class="uk-width-1-4 pay_way_selbank">
						    			<input type="radio" />
						    			<img src="${basePath }images/bank.png">
						    		</div>
						    		<div class="uk-width-1-4 pay_way_selbank">
						    			<input type="radio" />
						    			<img src="${basePath }images/bank.png">
						    		</div>
						    		<div class="uk-width-1-4 pay_way_selbank">
						    			<input type="radio" />
						    			<img src="${basePath }images/bank.png">
						    		</div>
						    		<div class="uk-width-1-4 pay_way_selbank">
						    			<input type="radio" />
						    			<img src="${basePath }images/bank.png">
						    		</div>
						    		<div class="uk-width-1-4 pay_way_selbank">
						    			<input type="radio" />
						    			<img src="${basePath }images/bank.png">
						    		</div>
						    		<div class="uk-width-1-4 pay_way_selbank">
						    			<input type="radio" />
						    			<img src="${basePath }images/bank.png">
						    		</div>
						    	</div>
						    </li>
						    <li>信用卡支付</li>
						    <li>网银支付</li>
						    <li>支付宝支付</li>
						</ul>
					</div>
					<div class="order_pay_prompt">
						<p class="pay_prompt_til">支付注意事项：</p>
						<div class="pay_prompt_con">
							<p>请您务必审慎阅读、充分理解协议中相关条款内容，其中包括：</p>
							<p>1、风险提示条款和特别提示条款；</p>
							<p>2、与您约定法律适用和管辖的条款；</p>
							<p>3、其他以粗体标识的重要条款。</p>
							<p>如您不同意相关协议、公告、规则、操作流程和项目页面承诺，您有权选择不支持；一旦选择支持，即视为您已确知
							并完全同意相关协议。</p>
						</div>
					</div>
					<div class="uk-float-right order_pay_enterinfo">
						<p class="order_pay_realmoney">实付款：<span>￥1000000.00</span>元</p>
						<p class="order_pay_protocol"><input type="checkbox">我已阅读并同意众筹的《支持者协议》</p>
						<a class="uk-button order_pay_enterorderbtn pay_enterpaybtn" hdiv="pay_order_paystep" sdiv="pay_order_finishstep">确认支付</a>
						<a class="uk-button order_pay_enterorderbtn">取消订单</a>
					</div>
				</div>
				<div class="pay_order_finishstep" style="display:none;">
					<img src="${basePath }images/pay_finish.png" />
					<span class="pay_succinfo">订单支付成功</span>
					<div class="order_pay_backhome">
						<a class="uk-button pay_backhome_btn">返回首页</a>
					</div>
				</div>
			</div>
		</div>
		<cm:footer />
	</body>
</html>
