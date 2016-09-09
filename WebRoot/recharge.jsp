<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<input type="hidden" id="cenhead" cenhead="cz" />
		<cm:js />
		<cm:css />
		<title>充值 - 棋子湾</title>
		<link rel="stylesheet" href="${basePath }css/recharge.css" />
		<link rel="stylesheet" href="${basePath }default/js/uikit/css/components/progress.css" />
		<script type="text/javascript" src="${basePath }js/recharge.js"></script>
	</head>
	<body>
		<cm:header />
		<div class="content">
			<cm:header_mycenter />
			<div class="account_recharge">
				<p class="uk-text-bold uk-text-large recharge_wz">账户充值</p>
				<nav class="uk-navbar recharge_step">
				    <div class="uk-navbar-content uk-navbar-center">
				    	<ul class="uk-grid uk-grid-collapse">
							<li class="uk-width-1-3 recharge_step_default step_now"><span class="step_wz">1.填写充值金额</span><img src="${basePath }default/images/step_arrow_now.png" /></li>
							<li class="uk-width-1-3 recharge_step_default"><span class="step_wz">2.在线支付</span><img src="${basePath }default/images/step_arrow_default.png" /></li>
							<li class="uk-width-1-3 recharge_step_default"><span class="step_wz">3.充值完成</span></li>
						</ul>
				    </div>
				</nav>
				<div class="recharge_step_con">
					<div class="recharge_step_fill">
						<p>所充值账户：<span>15252525252</span></p>
						<p>所充值金额：<input type="text" class="step_fill_money" />元</p>
						<p class="step_fill_cue">请注意：支持国内主流银行储蓄卡充值，在线支付成功后，充值金额会在2小时内到账</p>
						<a class="uk-button step_next" step="2" hdiv="recharge_step_fill" sdiv="recharge_step_pay" >下一步</a>
						<div class="step_remind">
							<p class="uk-text-bold">温馨提示：</p>
							<p>1.充值成功后，余额可能存在延迟现象，一般1到5分钟内到账，如有问题，请咨询客服；</p>
							<p>2.充值金额输入值必须是不小于10且不大于50000的正整数；</p>
							<p>3.您只能用储蓄卡进行充值，如遇到任何支付问题可以查看在线支付帮助；</p>
							<p>4.充值完成后，您可以进入账户充值记录页面进行查看余额充值状态。</p>
						</div>
					</div>
					<div class="recharge_step_pay" style="display: none;">
						<div class="step_pay_orderinfo">
							<p class="uk-float-right step_pay_backbtn"><a class="back_btn" hdiv="recharge_step_pay" sdiv="recharge_step_fill">返回修改</a></p>
							<div class="pay_orderinfo_yes">
								<img src="${basePath }default/images/icon/icon_safe_yes.png" />
								<span class="uk-text-middle pay_orderinfo_cue">您已申请账户余额充值，请立即在线支付！</span>
							</div>
							<p>订单号码：<span class="step_pay_ordernum">2656112312321312323E</span></p>
							<p>支付金额：<span class="step_pay_paynum">50000元</span></p>
						</div>
						<div class="step_pay_sel">
							<ul class="uk-tab sel_pay_tab" data-uk-switcher="{connect:'#sel_pay'}">
							    <li class="uk-active"><a href="">银联支付</a></li>
							    <li><a href="">信用卡支付</a></li>
							    <li><a href="">网银支付</a></li>
							    <li><a href="">支付宝支付</a></li>
							</ul>
							<ul id="sel_pay" class="uk-switcher">
							    <li>
							    	<div class="uk-grid sel_bank">
							    		<div class="uk-width-1-4 pay_bank">
							    			<input type="radio" />
							    			<img src="${basePath }images/bank.png" />
							    		</div>
							    		<div class="uk-width-1-4 pay_bank">
							    			<input type="radio" />
							    			<img src="${basePath }images/bank.png" />
							    		</div>
							    		<div class="uk-width-1-4 pay_bank">
							    			<input type="radio" />
							    			<img src="${basePath }images/bank.png" />
							    		</div>
							    		<div class="uk-width-1-4 pay_bank">
							    			<input type="radio" />
							    			<img src="${basePath }images/bank.png" />
							    		</div>
							    		<div class="uk-width-1-4 pay_bank">
							    			<input type="radio" />
							    			<img src="${basePath }images/bank.png" />
							    		</div>
							    		<div class="uk-width-1-4 pay_bank">
							    			<input type="radio" />
							    			<img src="${basePath }images/bank.png" />
							    		</div>
							    		<div class="uk-width-1-4 pay_bank">
							    			<input type="radio" />
							    			<img src="${basePath }images/bank.png" />
							    		</div>
							    		<div class="uk-width-1-4 pay_bank">
							    			<input type="radio" />
							    			<img src="${basePath }images/bank.png" />
							    		</div>
							    	</div>
							    	<a class="uk-button pay_next" step="3" hdiv="recharge_step_pay" sdiv="recharge_step_finish">确定支付</a>
							    </li>
							    <li>信用卡支付</li>
							    <li>网银支付</li>
							    <li>支付宝支付</li>
							</ul>
						</div>
					</div>
					<div class="recharge_step_finish" style="display: none;">
						<div class="uk-grid uk-grid-collapse">
							<div class="uk-width-1-1 step_finish_succ">
								<p>
									<img src="${basePath }default/images/icon/icon_safe_yes.png" />
									<span class="uk-text-middle">恭喜您，充值成功！</span>
								</p>
								<div class="finish_succ_btns">
									<a href="${basePath }recharge.jsp" class="uk-button finish_succ_btn">继续充值</a>
									<a class="uk-button finish_succ_btn">返回首页</a>
								</div>
								<div class="step_remind finish_remind">
									<p class="uk-text-bold">温馨提示：</p>
									<p>1.充值成功后，余额可能存在延迟现象，一般1到5分钟内到账，如有问题，请咨询客服；</p>
									<p>2.充值金额输入值必须是不小于10且不大于50000的正整数；</p>
									<p>3.您只能用储蓄卡进行充值，如遇到任何支付问题可以查看在线支付帮助；</p>
									<p>4.充值完成后，您可以进入账户充值记录页面进行查看余额充值状态。</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<cm:footer_mycenter />
		</div>
		<cm:footer />
	</body>
</html>