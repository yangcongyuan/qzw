<%@ tag pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ attribute name="theme" type="java.lang.String" required="false"%>
<link rel="stylesheet" href="${basePath}default/js/uikit/css/components/search.css">

<div class="header">
    <div class="common_top uk-hidden-small">
        <div class="top_content">
            <div class="uk-grid">
                <div class="uk-width-1-2">热线电话：400-6699-090</div>
                <div class="uk-width-1-2 uk-text-right notlogin">你好，请 <a class="login" href="${basePath}log_in.jsp?click=L#loginbg_log_in">登录</a>  <a href="${basePath}log_in.jsp?click=R#loginbg_log_in" class="register">免费注册</a></div>
            	<div class="uk-width-1-2 uk-text-right alreadylogin" style="display: none;">你好，<a class="login" href="${basePath}my_center.jsp"><span class="loginName"></span></a><a class="exit" id="exit">退出</a></div>
            </div>
        </div>
    </div>
    <div class="header_common_nav">
        <div class="nav_content">
            <div class="uk-grid">
                <div class="uk-width-1-4 uk-hidden-small"><a href="${basePath }index.jsp" class="uk-hidden-small"><img src="${basePath }images/logo.png"></a></div>
                <div class="uk-width-2-4 shiftNav">
                    <nav class="uk-navbar">
                        <ul class="uk-navbar-nav margin_nav uk-hidden-small">
                            <li head="sy"><a href="${basePath }index.jsp">首页</a></li>
                            <li head="fylb"><a href="${basePath }house_list.jsp">房源列表</a></li>
                            <%-- <li head="zrfy"><a href="${basePath }attorn_house.jsp">转让房源</a></li> --%>
                            <li head="zxzx"><a href="${basePath}latest_news.jsp">最新资讯</a></li>
                            <li head="bzzx"><a href="${basePath}help_center.jsp">帮助中心</a></li>
                            <li head="gywm"><a href="${basePath}about_us.jsp">关于我们</a></li>
                        </ul>
                        <a href="#header_common_nav" class="uk-navbar-toggle uk-visible-small" data-uk-offcanvas style="height: 60px;"></a>
                        <div class="uk-navbar-brand uk-navbar-center uk-visible-small" style="height: 60px;">
                            <a href="${basePath }index.jsp"><img src="${basePath }default/images/logo.png" title="UIkit" alt="UIkit"></a>
                        </div>
                    </nav>
                </div>
                <div class="uk-width-1-4 margin_search uk-hidden-small">
                    <div class="uk-search uk-float-right" data-uk-search>
                        <input class="uk-search-field" type="search" placeholder="搜索" id="SeachInput">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="header_common_nav" class="uk-offcanvas">
    <div class="uk-offcanvas-bar uk-offcanvas-bar-show">
        <ul class="uk-nav uk-nav-offcanvas uk-nav-parent-icon" data-uk-nav="{multiple:true}">
            <li class="uk-parent"><a href="${basePath }index.jsp">首页</a></li>
            <li class="uk-parent"><a href="${basePath }house_list.jsp">房源列表</a></li>
            <li class="uk-parent"><a href="${basePath}latest_news.jsp">最新资讯</a></li>
            <li class="uk-parent"><a href="${basePath}help_center.jsp">帮助中心</a></li>
            <li class="uk-parent"><a href="${basePath}about_us.jsp">关于我们</a></li>
            <li class="uk-nav-header">热线电话</li>
            <li class="uk-parent"><a href="tel:4000-000-000">4000-000-000</a></li>
            <li class="uk-parent notlogin"><a href="${basePath}log_in.jsp?click=L#loginbg_log_in">登录</a></li>
            <li class="uk-parent alreadylogin" style="display: none;"><a><span class="loginName"></span></a></li>
            <li class="uk-parent registerParent"><a href="${basePath}log_in.jsp?click=R#loginbg_log_in">注册</a></li>
            <li class="uk-parent exitParent" style="display: none;"><a class="exit" style="margin-left: 0;">退出</a></li>
            <!--<div class="uk-search">
                <input class="uk-search-field" type="search" placeholder="搜索" id="SeachInputOff">
            </div>-->
        </ul>
    </div>
</div>
<script>
	var userId = sessionStorage.userId;
	var userName = sessionStorage.userName;
    function JTrim(s)
    {
        return s.replace(/(^\s*)|(\s*$)/g, "");
    }
	require(["uikit!search,autocomplete","app/common"],function(UI,cm){
		if(userId){
            $(".registerParent").hide();
            $(".exitParent").show();
			$(".notlogin").css("display","none");
			$(".loginName").html(userName);
			$(".alreadylogin").css("display","block");
		};
        $("#SeachInput").focus(function(){
            document.onkeydown=function(event){
                var e = event || window.event || arguments.callee.caller.arguments[0];
                /*if(e && e.keyCode==27){    //按 Esc 
                    alert(111);
                }
                if(e && e.keyCode==113){   //按 F2 
                    alert(222);
                }*/
                if(e && e.keyCode==13){    //enter 键
                    var SeachMain = document.getElementById('SeachInput').value;
                    if(JTrim(SeachMain) != "")
                    {
                        window.location.href = "${basePath}house_list.jsp?searchMain=" + SeachMain;
                        $("#SeachInputOff").val("");
                    }else{
                        layer.msg("请输入您的搜索内容！");
                    }
                };
            };
        });
        /*$("#SeachInputOff").focus(function(){
            document.onkeydown=function(event){
                var e = event || window.event || arguments.callee.caller.arguments[0];
                if(e && e.keyCode==27){    //按 Esc 
                    alert(111);
                }
                if(e && e.keyCode==113){   //按 F2 
                    alert(222);
                }
                if(e && e.keyCode==13){    //enter 键
                    var SeachMain2 = document.getElementById('SeachInputOff').value;
                    if(JTrim(SeachMain2) != "")
                    {
                        window.location.href = "${basePath}house_list.jsp?searchMain=" + SeachMain2;
                        $("#SeachInputOff").val("");
                    }else{
                        layer.msg("请输入您的搜索内容！");
                    }
                };
            };
        });*/
	});
</script>