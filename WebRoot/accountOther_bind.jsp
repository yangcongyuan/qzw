<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>第三方账号绑定</title>
    <link rel="stylesheet" href="${basePath}css/accountOther_bind.css">
</head>
<body>
    <cm:header></cm:header>
    <div class="content">
        <cm:header_mycenter></cm:header_mycenter>
        <div class="main_accountOtherBind">
            <h1>账号绑定</h1>
            <div class="uk-width-100 QQBox_accountOtherBind">
                <img src="${basePath}images/QQ_accountOtherBind.png" alt="">
                <p>绑定QQ账号</p>
                <p class="binded">已绑定</p>
                <a href="" class="uk-float-right">解除绑定</a>
            </div>
            <div class="uk-width-100 weixBox_accountOtherBind">
                <img src="${basePath}images/weix_accountOtherBind.png" alt="">
                <p>绑定微信账号</p>
                <p class="didbind">未绑定</p>
<!--                <a href="" class="uk-float-right">解除绑定</a>-->
            </div>
            <div class="uk-width-100 weiboBox_accountOtherBind">
                <img src="${basePath}images/weibo_accountOtherBind.png" alt="">
                <p>绑定新浪微博</p>
                <p class="didbind">未绑定</p>
<!--                <a href="" class="uk-float-right">解除绑定</a>-->
            </div>
        </div>
        <cm:footer_mycenter></cm:footer_mycenter>
    </div>
    <div class="cover">
        <div class="bindSucceedBox">
            <img src="${basePath}images/weix_accountOtherBind.png" alt="">
            <p>绑定微信账号</p>
            <div class="uk-width-100 bindSucceed">
                <div class="uk-align-center">
                    <img src="${basePath}images/bindSucceed.png" alt="">
                    <p>绑定成功</p>
                </div>
            </div>
        </div>
    </div>
    <div class="removeCover">
        <div class="bindSucceedBox">
            <img src="${basePath}images/weix_accountOtherBind.png" alt="">
            <p>解除微信账号</p>
            <div class="uk-width-100 bindSucceed">
                <div class="uk-align-center">
                    <img src="${basePath}images/bindSucceed.png" alt="">
                    <p>解除成功</p>
                </div>
            </div>
        </div>
    </div>
    <cm:footer></cm:footer>
</body>
</html>