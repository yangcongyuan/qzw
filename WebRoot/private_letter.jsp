<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="cm" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">
<input type="hidden" id="cenhead" cenhead="wdsx">
<cm:js></cm:js>
<cm:css></cm:css>
<head>
    <meta charset="UTF-8">
    <title>我的私信</title>
    <link rel="stylesheet" href="${basePath}css/private_letter.css">
</head>
<body>
    <cm:header></cm:header>
    <div class="content">
        <cm:header_mycenter></cm:header_mycenter>
        <div class="uk-width-100 title_privateLetter">
            <h1>我的私信</h1>
            <div></div>
        </div>
        <div class="uk-grid uk-grid-collapse private_letter_topbg">
            <div class="uk-width-7-10">
                <div class="uk-width-100">
                    <span class="unread_privateLetter">未读私信<i class="uk-icon-justify uk-icon-envelope-o"></i><i class="uk-badge uk-badge-notification" id="letter_wd_num"></i></span>
                    <span class="read_privateLetter">已读私信<i class="uk-icon-justify uk-icon-envelope-o"></i><i class="uk-badge uk-badge-notification" id="letter_yd_num"></i></span>
                </div>
                <div class="uk-width-100">
                    <div class="line_privateLetter">
                        <span></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="privateLetterContent_privateLetter" id="private_letter_con" data-uk-observe>
            
        </div>
    </div>
    <cm:footer></cm:footer>
</body>
<script>
    require(["app/common"],function(cm){
    	layer.load(0, {shade: 0.3});
    	$.ajax({
            url: jsonPath + "qzw/rest/message/statueList",
            contentType: "application/json; charset=utf-8",
            dataType: "json", 
            type: "post",
            data: JSON.stringify({
            	groupId: userId,
            	statue:"0",
            	currentPage:"0",
            	pageSize:"10"
            }),
            success: function(data, status){
            	layer.closeAll('loading');
               	var wd_num = data.list.length;
               	$("#letter_wd_num").html(wd_num);
                cm.renderHtml("private_letter_wddata",data,"private_letter_con");
            },
            error: function(request, status, message){
                layer.msg("网络异常，请重试！");
            }
        });
    	$.ajax({
            url: jsonPath + "qzw/rest/message/statueList",
            contentType: "application/json; charset=utf-8",
            dataType: "json", 
            type: "post",
            data: JSON.stringify({
            	groupId: userId,
            	statue:"1",
            	currentPage:"0",
            	pageSize:"10"
            }),
            success: function(data, status){
               	var yd_num = data.list.length;
               	$("#letter_yd_num").html(yd_num);
            },
            error: function(request, status, message){
                layer.msg("网络异常，请重试！");
            }
        });
    	//未读私信与已读私信切换效果
        $(".unread_privateLetter").click(function(){
            $(".line_privateLetter span").animate({marginLeft:"360px"},500);
            layer.load(0, {shade: 0.3});
        	$.ajax({
                url: jsonPath + "qzw/rest/message/statueList",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post",
                data: JSON.stringify({
                	groupId: userId,
                	statue:"0",
                	currentPage:"0",
                	pageSize:"10"
                }),
                success: function(data, status){
                	layer.closeAll('loading');
                    cm.renderHtml("private_letter_wddata",data,"private_letter_con");
                    /* $(".delete").click(function(){
                    	alert(1);
                		var letter_del_id = $(this).attr("letter_id");
                		alert(letter_del_id);
                	}); */
                },
                error: function(request, status, message){
                    layer.msg("网络异常，请重试！");
                }
            });
        });
        $(".read_privateLetter").click(function(){
            $(".line_privateLetter span").animate({marginLeft:"670px"},500);
            layer.load(0, {shade: 0.3});
        	$.ajax({
                url: jsonPath + "qzw/rest/message/statueList",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post",
                data: JSON.stringify({
                	groupId: userId,
                	statue:"1",
                	currentPage:"0",
                	pageSize:"10"
                }),
                success: function(data, status){
                	layer.closeAll('loading');
                    cm.renderHtml("private_letter_yddata",data,"private_letter_con");
                },
                error: function(request, status, message){
                    layer.msg("网络异常，请重试！");
                }
            });
        });
        /* $(".angleDown_privateLetter").each(function(){
            $(this).children(".delete").click(function(){
                
            });
            $(this).children(".reply").click(function(){
                layer.confirm('<textarea class="reply_pl"></textarea>', {
                    btn: ['发送','取消'], //按钮
                    title: '房产商',
                    area: '460px'
                }, function(){
                    layer.msg('发送成功！', {icon: 1});
                });
            });
        }); */
    });
</script>
<script type="text/html" id="private_letter_wddata">
	{{if count == "0"}}
		<p class="letter_zw">暂无私信！</p>
	{{/if}}

	{{each list as v}}
	<div class="privateLetter">
    	<div class="userNameAndTime_privateLetter uk-position-relative">
        	<%-- <img src="${basePath}images/userIcon_privateLetter.png" alt=""> --%>
        	<p class="userName">{{v.title}}</p>
       		<div class="time uk-float-right uk-button-dropdown" data-uk-dropdown="{mode:'click',pos:'left-top'}">
            	<i class="uk-icon-justify uk-icon-angle-down"></i>
            	<div class="uk-dropdown uk-dropdown-bottom">
                	<ul class="uk-nav uk-nav-dropdown angleDown_privateLetter">
						<li class="signread" letter_read_id="{{v.id}}">标为已读</li>
						<%-- <li class="reply" letter_reply_id="{{v.recId}}">回复私信</li> --%>
                    	<li class="delete" letter_del_id="{{v.messageId}}">删除私信</li>
                    </ul>
                </div>
            </div>
            <p class="time uk-float-right">{{v.messageData}}</p>
            <p class="content_privateLetter">{{v.message}}</p>
    	</div>
   	</div>
	{{/each}}
   <%--
   <div class="uk-grid uk-grid-collapse uk-float-right jszmx_table_fy">
   		<ul class="uk-pagination" data-uk-pagination="{items:100, itemsOnPage:10}">
   		</ul>
  		<p class="tzcz"><span>跳转到</span><input type="text">页</p>
   </div>
   --%>
</script>
<script type="text/html" id="private_letter_yddata">
	{{if count == "0"}}
		<p class="letter_zw">暂无私信！</p>
	{{/if}}

	{{each list as v}}
	<div class="privateLetter">
    	<div class="userNameAndTime_privateLetter uk-position-relative">
        	<%-- <img src="${basePath}images/userIcon_privateLetter.png" alt=""> --%>
        	<p class="userName">{{v.title}}</p>
       		<div class="time uk-float-right uk-button-dropdown" data-uk-dropdown="{mode:'click',pos:'left-top'}">
            	<i class="uk-icon-justify uk-icon-angle-down"></i>
            	<div class="uk-dropdown uk-dropdown-bottom">
                	<ul class="uk-nav uk-nav-dropdown angleDown_privateLetter">
						<%-- <li class="reply" letter_reply_id="{{v.recId}}">回复私信</li> --%>
                    	<li class="delete" letter_del_id="{{v.messageId}}">删除私信</li>
                    </ul>
                </div>
            </div>
            <p class="time uk-float-right">{{v.messageData}}</p>
            <p class="content_privateLetter">{{v.message}}</p>
    	</div>
   	</div>
	{{/each}}
   <%--
   <div class="uk-grid uk-grid-collapse uk-float-right jszmx_table_fy">
   		<ul class="uk-pagination" data-uk-pagination="{items:100, itemsOnPage:10}">
   		</ul>
  		<p class="tzcz"><span>跳转到</span><input type="text">页</p>
   </div>
   --%>
</script>
<script>
	//删除私信
	$(document).on("click",".delete",function(){
		var letter_del_id = $(this).attr("letter_del_id");
		layer.confirm('您确定删除此条私信吗？', {
            btn: ['确定','取消'], //按钮
            title: '温馨提示'
        }, function(){
        	layer.load(0, {shade: 0.3});
    		$.ajax({
                url: jsonPath + "qzw/rest/message/deleteById",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post",
                data: JSON.stringify({
                	messageId: letter_del_id
                }),
                success: function(data, status){
                	layer.closeAll('loading');
                	layer.msg('删除成功！', {icon: 1});
                	setTimeout("refresh()",1500);
                },
                error: function(request, status, message){
                    layer.msg("网络异常，请重试！");
                }
            });
        });
	});
	//标为已读
	$(document).on("click",".signread",function(){
		var letter_read_id = $(this).attr("letter_read_id");
		layer.confirm('是否将此条私信标为已读？', {
            btn: ['确定','取消'], //按钮
            title: '温馨提示'
        }, function(){
        	layer.load(0, {shade: 0.3});
    		$.ajax({
                url: jsonPath + "qzw/rest/message/updateById",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post",
                data: JSON.stringify({
                	id: letter_read_id,
                	statue:"1"
                }),
                success: function(data, status){
                	layer.closeAll('loading');
                	setTimeout("refresh()",500);
                },
                error: function(request, status, message){
                    layer.msg("网络异常，请重试！");
                }
            });
        });
	 });
	//回复私信
	$(document).on("click",".reply",function(){
		var letter_reply_id = $(this).attr("letter_reply_id");
		layer.prompt({
			  title: '输入任何口令，并确认',
			  formType: 1 //prompt风格，支持0-2
		},function(){
        	layer.load(0, {shade: 0.3});
    		$.ajax({
                url: jsonPath + "qzw/rest/message/insert",
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                type: "post",
                data: JSON.stringify({
                	sendId: "1",
                	recId: letter_reply_id,
                	
                }),
                success: function(data, status){
                	layer.closeAll('loading');
                	setTimeout("refresh()",500);
                },
                error: function(request, status, message){
                    layer.msg("网络异常，请重试！");
                }
            });
        });
	 });
</script>
</html>