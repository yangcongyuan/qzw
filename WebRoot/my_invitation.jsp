<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>我的邀请</title>
    <link rel="stylesheet" href="${basePath}css/my_invitation.css">
</head>
<body>
    <cm:header></cm:header>
    <div class="content">
        <cm:header_mycenter></cm:header_mycenter>
        <div class="myInvitationBg_myInvitation uk-overflow-hidden">
            <h1>我的邀请</h1>
            <table class="uk-table myInvitation">
                <thead>
                    <tr>
                        <th class="uk-text-center uk-width-1-5">我的邀请码：<i>dada21313</i></th>
                        <th class="uk-text-center uk-width-1-5">邀请用户</th>
                        <th class="uk-text-center uk-width-1-5">邀请时间</th>
                        <th class="uk-text-center uk-width-1-5">投资总额</th>
                        <th class="uk-text-center uk-width-1-5">奖励</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="uk-text-center uk-width-1-5"><i>复制我的邀请码</i></td>
                        <td class="uk-text-center uk-width-1-5">156****1234</td>
                        <td class="uk-text-center uk-width-1-5">2016-06-01</td>
                        <td class="uk-text-center uk-width-1-5">10000000000</td>
                        <td class="uk-text-center uk-width-1-5">充气军*1</td>
                    </tr>
                    <tr>
                        <td class="uk-text-center uk-width-1-5"><i>复制我的邀请码</i></td>
                        <td class="uk-text-center uk-width-1-5">156****1234</td>
                        <td class="uk-text-center uk-width-1-5">2016-06-01</td>
                        <td class="uk-text-center uk-width-1-5">10000000000</td>
                        <td class="uk-text-center uk-width-1-5">充气军*1</td>
                    </tr>
                    <tr>
                        <td class="uk-text-center uk-width-1-5"><i>复制我的邀请码</i></td>
                        <td class="uk-text-center uk-width-1-5">156****1234</td>
                        <td class="uk-text-center uk-width-1-5">2016-06-01</td>
                        <td class="uk-text-center uk-width-1-5">10000000000</td>
                        <td class="uk-text-center uk-width-1-5">充气军*1</td>
                    </tr>
                    <tr>
                        <td class="uk-text-center uk-width-1-5"><i>复制我的邀请码</i></td>
                        <td class="uk-text-center uk-width-1-5">156****1234</td>
                        <td class="uk-text-center uk-width-1-5">2016-06-01</td>
                        <td class="uk-text-center uk-width-1-5">10000000000</td>
                        <td class="uk-text-center uk-width-1-5">充气军*1</td>
                    </tr>
                    <tr>
                        <td class="uk-text-center uk-width-1-5"><i>复制我的邀请码</i></td>
                        <td class="uk-text-center uk-width-1-5">156****1234</td>
                        <td class="uk-text-center uk-width-1-5">2016-06-01</td>
                        <td class="uk-text-center uk-width-1-5">10000000000</td>
                        <td class="uk-text-center uk-width-1-5">充气军*1</td>
                    </tr>
                    <tr>
                        <td class="uk-text-center uk-width-1-5"><i>复制我的邀请码</i></td>
                        <td class="uk-text-center uk-width-1-5">156****1234</td>
                        <td class="uk-text-center uk-width-1-5">2016-06-01</td>
                        <td class="uk-text-center uk-width-1-5">10000000000</td>
                        <td class="uk-text-center uk-width-1-5">充气军*1</td>
                    </tr>
                </tbody>
            </table>
            <div class="uk-grid uk-grid-collapse uk-float-right jszmx_table_fy">
                <ul class="uk-pagination" data-uk-pagination="{items:3, itemsOnPage:3}">
                </ul>
                <p class="tzcz"><span>跳转到</span><input type="text">页</p>
            </div>
        </div>
        <cm:footer_mycenter></cm:footer_mycenter>
    </div>
    <cm:footer></cm:footer>
    <script>
    	require(["uikit!pagination"],function(UI){
    		
    	});
    </script>
</body>
</html>