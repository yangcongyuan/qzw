<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<input type="hidden" id="head" head="zrfy" />
		<cm:js />
		<cm:css />
		<title>房价公示 - 棋子湾</title>
		<link rel="stylesheet" href="${basePath }css/attorn_fjgs.css" />
		<link rel="stylesheet" href="${basePath }default/js/uikit/css/components/progress.css" />
	</head>
	<body>
		<cm:header />
		<div class="content">
			<div class="uk-grid uk-grid-collapse zrfy_img_show">
				<div class="uk-width-4-10 uk-overlay uk-overlay-hover">
					<img class="zrfy_img_one" src="${basePath }images/zrfy_img_1.png" />
					<div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等</div>
				</div>
				<div class="uk-width-4-10">
					<div class="uk-overlay uk-overlay-hover">
						<img class="zrfy_img_two" src="${basePath }images/zrfy_img_2.png" />
						<div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等</div>
					</div>
					<div class="uk-overlay uk-overlay-hover">
						<img class="zrfy_img_three" src="${basePath }images/zrfy_img_3.png" />
						<div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等</div>
					</div>
				</div>
				<div class="uk-width-2-10 uk-overlay uk-overlay-hover">
					<img class="zrfy_img_four" src="${basePath }images/zrfy_img_4.png" />
					<div class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等海南海景房价格走势讯息等等</div>
				</div>
			</div>
		</div>
		<div class="fjgs_list">
			<div class="uk-grid uk-grid-collapse fjgs_con">
				<div class="uk-width-1-3">
					<i class="common_division"></i>
					<p>海南房产均价<br/><span>1000元/m²</span></p>
				</div>
				<div class="uk-width-1-3">
					<i class="common_division"></i>
					<p>棋子湾房产均价<br/><span>1000元/m²</span></p>
				</div>
				<div class="uk-width-1-3">
					<i class="common_division"></i>
					<p>棋子湾周边房产均价<br/><span>1000元/m²</span></p>
				</div>
			</div>
		</div>
		<div class="zrfy_xmlist">
			<div class="fjzs_img">
				<img src="${basePath }images/attorn_fjzs_img.png" />
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