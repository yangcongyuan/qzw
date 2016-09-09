<%@ tag pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ attribute name="theme" type="java.lang.String" required="false"%>


<link rel="stylesheet" href="${basePath}default/js/uikit/css/components/accordion.css">
<script src="${basePath}default/js/uikit/js/uikit/components/accordion.js"></script>

<div class="common_footer">
    <div class="footer_content">
        <ul class="uk-grid footerbox uk-hidden-medium uk-hidden-small">
            <li class="uk-width-1-1 uk-width-large-1-4">
                <h2>关于我们</h2>
                <p>盖聚于2015年10月9日正式诞生，旨在打造出门槛极低、新奇好玩、全民参与的众筹平台。</p>
                <p>盖聚优选聚集好的创意，找到好玩、有趣的项目。</p>
                <p>盖聚不仅仅是一个筹资平台，更是一个孵化平台，能为筹资人提供从资金、生产、销售到营销、法律、审计等各种资源，扶持项目快速成长。</p>
                <p class="uk-text-large uk-text-bold">盖聚助力,梦想扬帆远航！</p>
            </li>
            <li class="uk-width-1-1 uk-width-large-1-4">
                <h2>关注我们</h2>
                <%-- <p>关注微信公众订阅号</p>
                <img src="${basePath }images/dy_2v.jpg" > --%>
                <div class="uk-tab-center">
	                <ul class="uk-subnav uk-tab uk-subnav-pill footer_2vSwitcher" data-uk-switcher="{connect:'#2vSwitcher'}">
	                	<li><a>微信公众订阅号</a></li>
	                	<li><a>微信公众服务号</a></li>
	                </ul>
                </div>
                <ul id="2vSwitcher" class="uk-switcher">
                	<li><img src="${basePath }images/dy_2v.jpg" ></li>
                	<li><img src="${basePath }images/fw_2v.jpg" ></li>
                </ul>
            </li>
            <li class="uk-width-1-1 uk-width-large-1-4">
                <h2>联系我们</h2>
                <p>客服热线</p>
                <h1 class="phone-400">400-6699-090</h1>
                <p>周一至周五 09:30－17:00</p>
                <p>（国家法定假日除外）</p>
                <p>Email：kmgaiju@kmgaiju.com</p>
                <p>Add：云南省昆明经开区昌宏路36号经开区金融中心A—304、307室</p>
            </li>
            <li class="uk-width-1-1 uk-width-large-1-4">
                <h2>合作伙伴</h2>
            </li>
        </ul>
    </div>
    <p class="beian">Copyright © 2004-2015 盖聚 版权所有|投资有风险，购买需谨慎</p>
</div>