<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<input type="hidden" id="cenhead" cenhead="tx" />
		<cm:js />
		<cm:css />
		<title>提现 - 棋子湾</title>
		<link rel="stylesheet" href="${basePath }css/withdraw.css" />
		<link rel="stylesheet" href="${basePath }default/js/uikit/css/components/progress.css" />
		<script type="text/javascript" src="${basePath }js/withdraw.js"></script>
	</head>
	<body>
		<cm:header />
		<div class="content">
			<cm:header_mycenter />
			<div class="account_recharge">
				<p class="uk-text-bold uk-text-large recharge_wz">账户提现</p>
				<nav class="uk-navbar recharge_step">
				    <div class="uk-navbar-content uk-navbar-center">
				    	<ul class="uk-grid uk-grid-collapse">
							<li class="uk-width-1-2 recharge_step_default step_now"><span class="step_wz">1.填写提现金额</span><img src="${basePath }default/images/step_arrow_now.png" /></li>
							<%-- <li class="uk-width-1-3 recharge_step_default"><span class="step_wz">2.在线支付</span><img src="${basePath }default/images/step_arrow_default.png" /></li> --%>
							<li class="uk-width-1-2 recharge_step_default"><span class="step_wz">2.提现完成</span></li>
						</ul>
				    </div>
				</nav>
				<div class="recharge_step_con">
					<div class="recharge_step_fill">
						<p>到账银行卡：<span class="step_fill_bankcard">中国银行(3766)</span><span><a class="step_file_change">更换</a></span></p>
						<p class="step_fill_txje">提现金额：<input type="text" class="step_fill_money" />元</p>
						<p class="step_fill_cue">请注意：按提取金额的0.2%收取手续费，单笔手续费小于0.2元的按照0.2元收费</p>
						<a class="uk-button step_next" step="2" hdiv="recharge_step_fill" sdiv="recharge_step_finish" >下一步</a>
						<div class="step_remind">
							<p class="uk-text-bold">温馨提示：</p>
							<p>1.提现成功后，一般根据银行制返盘1到3个工作日内到账，如有问题，请咨询客服；</p>
							<p>2.提现金额输入值必须是不小于10且不大于50000的正整数；</p>
							<p>3.您所提现账户只能为储蓄卡，如遇到任何提现问题可以查看在线提现帮助；</p>
							<p>4.提现完成后，您可以进入账户查看余额。</p>
						</div>
					</div>
					<div class="recharge_step_finish" style="display: none;">
						<div class="uk-grid uk-grid-collapse">
							<div class="uk-width-1-1 step_finish_succ">
								<p>
									<img src="${basePath }default/images/icon/icon_safe_yes.png" />
									<span class="uk-text-middle">恭喜您，提现成功！</span>
								</p>
								<div class="step_remind finish_remind">
									<p class="uk-text-bold">温馨提示：</p>
									<p>1.提现成功后，一般根据银行制返盘1到3个工作日内到账，如有问题，请咨询客服；</p>
									<p>2.提现金额输入值必须是不小于10且不大于50000的正整数；</p>
									<p>3.您所提现账户只能为储蓄卡，如遇到任何提现问题可以查看在线提现帮助；</p>
									<p>4.提现完成后，您可以进入账户查看余额。</p>
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