<%@ tag pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%--<% String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>--%>
<% String jsonPath = "http://220.165.7.60/"; %>
<% String picPath = "http://220.165.7.60:8787/"; %>
<% String basePath = "http://220.165.7.60/"; %>

<%--<% String jsonPath = "http://localhost:8080/"; %>--%>
<%--<% String picPath = "http://220.165.7.60:8787/"; %>--%>
<%--<% String basePath = "http://localhost:8080/"; %>--%>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
 <meta name="viewport" content="width=device-width,user-scalable=no" />
 
<c:set var="basePath" value="<%=basePath%>" scope="request"/>
<c:set var="jsonPath" value="<%=jsonPath%>" scope="request"/>
<c:set var="picPath" value="<%=picPath%>" scope="request"/>

<script type="text/javascript" src="${basePath }default/js/lib/jquery.js"></script>
<script type="text/javascript" src="${basePath }default/js/lib/require.js"></script>
<script type="text/javascript" src="${basePath }default/js/app.js"></script>

<script>
var basePath = "${basePath }";
var jsonPath = "${jsonPath }";
var picPath = "${picPath}";
	$(document).ready(function(){
		//公共导航栏处理
		var head = $("#head").attr("head");
		if(head){
			$(".margin_nav li").each(function(){
				var headli = $(this).attr("head");
				if(head == headli){
					$(".margin_nav li").removeClass("uk-active");
					$(this).addClass("uk-active");
				}
			});
		}else{
			//$(".margin_nav li:first-child").addClass("uk-active");
		}
		
		//个人中心公共导航栏处理
		var cenhead = $("#cenhead").attr("cenhead");
		$(".uk-dropdown li").each(function(){
			var cenheadli = $(this).attr("cenhead");
			if(cenhead == cenheadli){
				$(this).addClass("navdown_active");
			}
		});
	});
</script>