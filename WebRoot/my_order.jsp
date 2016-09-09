<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<input type="hidden" id="cenhead" cenhead="myorder" />
		<cm:js />
		<cm:css />
		<title>我的订单 - 棋子湾</title>
		<link rel="stylesheet" href="${basePath }css/my_order.css" />
	</head>
	<body>
		<cm:header />
		<div class="content">
			<cm:header_mycenter />
			<div class="uk-grid uk-grid-collapse gfzl">
				<p class="gfzl_wz">购房总览</p>
				<div class="uk-width-100 housePurchase_myCenter">
		            <div class="uk-width-100">
		                <ul class="uk-list orderAndDispaymentAndComplete_myCenter">
		                    <li class="orderLately_myCenter">
		                        <div class="uk-button-dropdown" data-uk-dropdown>
		                            <button class="uk-button">最近订单<i class="uk-icon-caret-down"></i></button>
		                            <div class="uk-dropdown uk-dropdown-top uk-dropdown-small">
		                                <ul class="uk-nav uk-nav-dropdown">
		                                    <li><a href="" class="orderActive_myCenter">1</a></li>
		                                    <li><a href="">2</a></li>
		                                    <li><a href="">3</a></li>
		                                    <li><a href="">4</a></li>
		                                </ul>
		                            </div>
		                        </div>
		                    </li>
		                    <li class="disPayment_myCenter">待付款<i class="uk-badge uk-badge-notification">1</i></li>
		                    <li class="completed_myCenter">已完成</li>
		                    <li class="allOrderHref_myCenter"><i class="common_division"></i>全部订单</li>
		                </ul>
		                <div class="housePurchaseTable_myCenter">
		                    <div class="orderNumber_myCenter">订单编号：092019223131121212123222</div>
		                    <ul>
		                        <li>
		                            <img src="${basePath}images/housePurchaseIcon_myCenter.png" alt="" class="housePurchaseIcon_myCenter">
		                        </li>
		                        <li>
		                            <p class="houseInformation_myCenter"><i>#B-3栋  1-102</i><br><i>四室两厅</i><br><i>建筑面积200²</i></p>
		                        </li>
		                        <li class="dealTime_myCenter">2016-04-09   10:16:45</li>
		                        <li class="dealUserName_myCenter">曾祥轩<i class="uk-icon-justify uk-icon-child"></i></li>
		<!--
		                        <li class="housePurchasePlan_myCenter">
		                            <p>购房进度</p>
		                            <div class="housePurchasePlanLine_myCenter">
		                                <span></span>
		                                <span></span>
		                            </div>
		                            <p>100%</p>
		                        </li>
		-->
		                        <li class="paymentMoney_myCenter">
		                            <p>支付金额：200万</p>
		                            <p>已完成</p>
		                        </li>
		                    </ul>
		                </div>
		                <div class="housePurchaseTable_myCenter">
		                    <div class="orderNumber_myCenter">订单编号：092019223131121212123222</div>
		                    <ul>
		                        <li>
		                            <img src="${basePath}images/housePurchaseIcon_myCenter.png" alt="" class="housePurchaseIcon_myCenter">
		                        </li>
		                        <li>
		                            <p class="houseInformation_myCenter"><i>#B-3栋  1-102</i><br><i>四室两厅</i><br><i>建筑面积200²</i></p>
		                        </li>
		                        <li class="dealTime_myCenter">2016-04-09   10:16:45</li>
		                        <li class="dealUserName_myCenter">曾祥轩<i class="uk-icon-justify uk-icon-child"></i></li>
		                        <!--<li class="housePurchasePlan_myCenter">
		                            <p>购房进度</p>
		                            <div class="housePurchasePlanLine_myCenter">
		                                <span></span>
		                                <span></span>
		                            </div>
		                            <p>100%</p>
		                        </li>-->
		                        <li class="paymentMoney_myCenter">
		                            <p>支付金额：200万</p>
		                            <p>已完成</p>
		                        </li>
		                    </ul>
		                </div>
		            </div>
		        </div>
			</div>
			<cm:footer_mycenter />
		</div>
		<cm:footer />
	</body>
</html>