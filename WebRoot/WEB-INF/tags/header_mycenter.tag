<%@ tag pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ attribute name="theme" type="java.lang.String" required="false"%>

<style>
.safe_nav{
	width:1200px;
	margin:0 auto;
}
.safe_nav nav{
	background: #006ec5;
	margin:30px 0;
	border-radius:10px;
}
.safe_nav .uk-navbar-nav > li{
	margin:10px 5px;
}
.safe_nav .uk-navbar-nav > li > a{
	font-weight:700;
	font-family: "microsoft Yahei", sans-serif;
}
.safe_nav .uk-navbar-nav > li > a:hover{
	border-bottom:0;
	padding:0 14px;
	border-left:1px solid #dadada;
	border-right:1px solid #dadada;
	border-top:1px solid #fff;
	border-bottom:1px solid #fff;
}
.navdown .uk-dropdown, .uk-dropdown-blank{
	width:86px !important;
}
.safe_nav .uk-navbar-nav > li{
	color:#000;
}
.safe_nav .uk-navbar-nav > li.uk-open > a{
	background: #fff;
	font-weight: 700;
	border-left:1px solid #dadada;
	border-right:1px solid #dadada;
	border-top:1px solid #fff;
	border-bottom:1px solid #fff;
	padding:0 14px;
	color:#000;
}
.safe_nav .uk-dropdown-navbar{
	background:#fff;
	border:1px solid #dadada;
	border-top:0;
	border-bottom-left-radius:10px;
	border-bottom-right-radius:10px;
}
.navdown .uk-dropdown{
	padding:0 15px;
	font-size:12px;
	text-align:center;
}
.navdown .uk-dropdown .uk-nav > li > a{
	padding:5px 18px;
}
.navdown .uk-dropdown li.navdown_active a{
	background:#f9f9f9;
	color:#006ec5;
}
.navdown .uk-dropdown li.navdown_active a:hover{
	background:#f9f9f9;
}
.navdown .uk-dropdown li a:hover{
	background:#fff;
	color:#006ec5;
	padding:5px 18px;
}
.navdown .uk-dropdown li:last-child a:hover{
	border-bottom-left-radius:10px;
	border-bottom-right-radius:10px;
}
.safe_nav .uk-navbar-nav > li > a{
	color:#fff;
}
.safe_nav .uk-navbar-nav > li>a:hover{
	background: #fff;
	font-weight: 700;
	color:#000;
}
.safe_nav .uk-navbar-nav > li.uk-active > a{
	background: #006ec5;
	color:#000;
}
.navdown .uk-dropdown.xmgl_nav .uk-nav > li > a{
	padding:5px 0;
}
.navdown .uk-dropdown li:last-child a{
	border-bottom-right-radius: 10px;
	border-bottom-left-radius: 10px;
}
</style>

<div class="safe_nav">
	<nav class="uk-navbar">
	    <ul class="uk-navbar-nav">
	        <li class="uk-parent navdown" data-uk-dropdown="{boundary:'#boundary'}"><a href="${basePath }my_center.jsp">个人主页</a></li>
		       <%--  <li class="uk-parent navdown" data-uk-dropdown="{boundary:'#boundary'}">
		        	<a>账户管理</a>
		        	<div class="uk-dropdown uk-dropdown-navbar uk-dropdown-top">
		        		<ul class="uk-nav uk-nav-navbar">
		        			<li cenhead="zhzx"><a href="${basePath }account_center.jsp">账户中心</a></li>
		        			<li cenhead="szmx"><a href="${basePath }incomepay_detail.jsp">收支明细</a></li>
		        			<li cenhead="myorder"><a href="${basePath }my_order.jsp">我的订单</a></li>
		        			<li cenhead="tx"><a href="${basePath }withdraw.jsp">提现</a></li>
		        			<li cenhead="cz"><a href="${basePath }recharge.jsp">充值</a></li>
		        			<li cenhead="jfmx"><a href="${basePath }integral_detail.jsp">积分明细</a></li>
		        			<!-- <li cenhead="yqjl"><a href="">邀请奖励</a></li> -->
		        		</ul>
		        	</div>
		        </li> --%>
	        <li class="uk-parent navdown" data-uk-dropdown="{boundary:'#boundary'}">
	        	<a>个人设置</a>
	        	<div class="uk-dropdown uk-dropdown-navbar uk-dropdown-top">
	        		<ul class="uk-nav uk-nav-navbar">
	        			<li cenhead="grzl"><a href="${basePath}personal_data.jsp">个人资料</a></li>
	        			<li cenhead="aqzx"><a href="${basePath }safe_center.jsp">安全中心</a></li>
	        			<!-- <li cenhead="zhbd"><a href="">账号绑定</a></li> -->
	        		</ul>
	        	</div>
	        </li>
	        <!-- <li class="uk-parent navdown" data-uk-dropdown><a>购房总览</a></li> -->
	        <li class="uk-parent navdown" data-uk-dropdown="{boundary:'#boundary'}">
	        	<a>购房总览</a>
	        	<div class="uk-dropdown uk-dropdown-navbar uk-dropdown-top xmgl_nav">
	        		<ul class="uk-nav uk-nav-navbar">
	        			<li cenhead="zcxm"><a href="${basePath }support_project.jsp">我购买的房源</a></li>
						<li cenhead="gzxm"><a href="${basePath }follow_project.jsp">我关注的房源</a></li>
	        		</ul>
	        	</div>	
	        </li>
	        <li class="uk-parent navdown" data-uk-dropdown="{boundary:'#boundary'}">
                <a>我的消息</a>
                <div class="uk-dropdown uk-dropdown-navbar uk-dropdown-top">
                    <ul class="uk-nav uk-nav-navbar">
                        <%-- <li cenhead="xmpl"><a href="${basePath }project_comment.jsp">项目评论</a></li>
                        <li cenhead="xmdt"><a href="${basePath }project_news.jsp">项目动态</a></li> --%>
                        <li cenhead="wdsx"><a href="${basePath}private_letter.jsp">我的私信</a></li>
                    </ul>
                </div>
            </li>
	        <%-- <li class="uk-parent navdown" data-uk-dropdown="{boundary:'#boundary'}"><a href="${basePath}my_invitation.jsp">我的邀请</a></li> --%>
	    </ul>
	</nav>
</div>