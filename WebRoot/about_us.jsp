<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<input type="hidden" head="gywm" id="head">
<cm:js />
<cm:css />
<head>
    <meta charset="UTF-8">
    <title>关于我们</title>
    <link rel="stylesheet" href="${basePath}css/about_us.css">
</head>
<body style="background: #fff !important;">
    <cm:header />
    <div class="content">
        <div class="firstFloor_au">
            <img src="${basePath}images/about_us_1.jpg" alt="">
            <div>
                <img src="${basePath}images/about_us_2.png" alt="" class="uk-hidden-small">
                <div class="firstFloorMain_au">
                    <div><img src="${basePath}images/gsjj_au.png" alt=""></div>
                    <div>
                    	<p>盖聚于2015年10月9日正式诞生，旨在打造出门槛极低、新奇好玩、全民参与的众筹平台。盖聚优选聚集好的创意，找到好玩、有趣的项目。项目初期，出资人在产品设计、生产、定价等环节，能与筹资人建立起深层次的互动，并能决定产品未来，这些过程都体现出了真实参与感，满足用户的消费升级需求。出资人其身份不仅是消费者、投资者，更是参与者。</p>
                    	<p>盖聚不仅仅是一个筹资平台，更是一个孵化平台，能为筹资人提供从资金、生产、销售到营销、法律、审计等各种资源，扶持项目快速成长。</p>
                    	<p class="uk-text-bold">盖聚助力,梦想扬帆远航！</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="secondFloor_au">
            <!--<img src="${basePath}images/wmsm_au.png" alt="">
            <div>我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命我们的使命。</div>-->
            <ul class="uk-thumbnav uk-grid-width-1-2 uk-grid-width-large-1-4">
                <li class="uk-active"><img src="${basePath}images/second_au_1.png" alt=""></li>
                <li class="uk-active"><img src="${basePath}images/second_au_2.png" alt=""></li>
                <li class="uk-active"><img src="${basePath}images/second_au_3.png" alt=""></li>
                <li class="uk-active"><img src="${basePath}images/second_au_4.png" alt=""></li>
            </ul>
        </div>
        <div class="thirdlyFloor_au">
            <img src="${basePath}images/lxwm_au.png" alt="">
            <div class="uk-flex uk-flex-center">
                <ul class="linkUs_au">
                    <li class="uk-flex uk-flex-center uk-flex-middle">
                        <img src="${basePath}images/Telephone_au.png" alt="">
                        <div class="uk-flex uk-flex-middle uk-flex-center">400-6699-090</div>
                    </li>
                    <li class="uk-flex uk-flex-center uk-flex-middle">
                        <img src="${basePath}images/email_au.png" alt="">
                        <div class="uk-flex uk-flex-middle uk-flex-center">kmgaiju@kmgaiju.com</div>
                    </li>
                    <li class="uk-flex uk-flex-center uk-flex-middle">
                        <img src="${basePath}images/position_au.png" alt="">
                        <div class="uk-flex uk-flex-middle uk-flex-center">云南省昆明经开区昌宏路36号经开区金融中心A—304、307室</div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <cm:footer />
</body>
<script>
    $(function(){
        $(".linkUs_au").find("li").each(function(){
            $(this).mouseenter(function(){
                $(this).children("div").stop(true,true).fadeIn().css({"display":"flex"});
            }).mouseleave(function(){
                $(this).children("div").stop(true,true).fadeOut();
            });
        })
    });
</script>
</html>