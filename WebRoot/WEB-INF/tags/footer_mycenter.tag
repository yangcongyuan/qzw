<%@ tag pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ attribute name="theme" type="java.lang.String" required="false"%>
<%@ attribute name="src" type="java.lang.String" required="false"%>

<style>
.follow_like figure:hover{
    box-shadow: 5px 10px 10px rgba(0,0,0,.3);
}
.follow_like .uk-overlay-background{
	background: rgba(237,81,10,.5);
}
.follow_like figcaption p{
	overflow : hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 7;
	-webkit-box-orient: vertical;
}
.footer_follow,.footer_like{
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	padding:15px;
	margin:30px 0;
}
.footer_like{
	margin-bottom:0;
}
.follow_like_til{
	font-size:20px;
}
.follw_like_more{
	height:13px;
	margin-top:10px;
	margin-right:10px;
}
.follw_like_more a{
	color:#006ec5;
	font-size:14px;
	display: block;
	margin-top:-4px;
}
.footer_follow img{
	height:411px;
}
</style>
<div class="follow_like" id="my_follow_fycon">
     
</div>
<script>
	$(document).ready(function (){
		var nofooter = $("#cenhead").attr("nofooter");
		if(nofooter){
			$(".footer_follow").css("display","none");
		}
	});
	require(["app/common"],function(cm){
    	$.ajax({
            url: jsonPath + "qzw/rest/attention/getList",
            contentType: "application/json; charset=utf-8",
            dataType: "json", 
            type: "post",
            data: JSON.stringify({
            	userId: userId,
            	currentPage:"0",
            	pageSize:"4"
            }),
            success: function(data, status){
            	cm.renderHtml("my_follow_fydata",data,"my_follow_fycon");
            },
            error: function(request, status, message){
                layer.msg("网络异常，请重试！");
            }
        });
	});
</script>
<script type="text/html" id="my_follow_fydata">
{{if count == "0"}}
{{else}}
<div class="footer_follow">
<p class="follow_like_til">我关注的房源<span class="follw_like_more uk-float-right"><i class="common_division"></i><a href="${basePath}follow_project.jsp">更多</a></span></p>
<div class="uk-grid uk-grid-medium">
{{each list as v}}
   <div class="uk-width-1-4">
       <figure class="uk-overlay uk-overlay-hover">
           <img class="uk-overlay-scale" src="${picPath}{{v.listImg}}" />
           <figcaption class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
               <p>{{v.lrDesc}}</p>
           </figcaption>
           <a class="uk-position-cover" href="${basePath}house_detail.jsp?aparId={{v.aparId}}"></a>
       </figure>
   </div>
{{/each}}
</div>
</div>

{{/if}}

</script>