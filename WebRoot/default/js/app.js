require.config({
    //urlArgs:"v=" +(new Date()).getTime(),
    baseUrl:'default/js',
    paths:{
        "jquery":"lib/jquery",
        "bootstrap":"lib/bootstrap.min",
        "cropper":"lib/cropper.min",
        "demo":"lib/demo",
        "mousewheel":"lib/jquery.mousewheel",
        "uikit":"uikit/js/uikit",
        "layer":"layer/layer",
        "cookie":"lib/jquery.cookie",
        "echart":"lib/echarts.common.min"
    },
    shim:{
        "cookie":{
            deps:["jquery"]
        },
        "layer": {
   		 	exports:"layer"
        }
    },
    config: {
        "uikit": {
            "base": "uikit"
        }
    },
    waitSeconds: 0
});
require(['layer'], function(layer) {
	//通过require加载layer时，需配置layer.js的文件路径
	layer.config({
		  path: 'default/js/layer/' 
	});
});

//屏蔽console.log
if (typeof console === "undefined" || typeof console.log === "undefined") {
 console = {};
 console.log = function() {};
}

//验证码刷新事件
$('body').on("click",".validation_code",function(){
	$(this).attr('src', basePath+'ImageCode?'+Math.random());
});

require(["jquery"],function($){
//    //登录注册弹窗
//        $(".login_log_in").click(function(){
//            $(".two_btn").fadeOut("fast");
//            $("#loginbox_log_in").slideDown();
//            $('html,body').animate({scrollTop: '121px'}, 500);
//        });
//        $(".register_log_in").click(function(){
//            $(".two_btn").fadeOut("fast");
//            $("#registerboxPhone_log_in").slideDown();
//            $('html,body').animate({scrollTop: '121px'}, 500);
//        });
//        $(".close").click(function(){
//            $(this).parent().parent().slideUp();
//            $(".two_btn").fadeIn();
//            $(this).parent().parent().find("input").val("");
//        });
//    //手机、邮箱注册切换
//        $(".emailRegister").click(function(){
//            $("#registerboxPhone_log_in").slideUp();
//            $("#registerboxEmail_log_in").slideDown();
//        });
//        $(".phoneRegister").click(function(){
//            $("#registerboxEmail_log_in").slideUp();
//            $("#registerboxPhone_log_in").slideDown();
//        });
      //当点击退出时，清空 cookie 中的 token，并发送退出 ajax 请求，最后跳转到登录页面
        $('.exit').click(function () {
            layer.confirm('确定退出系统吗？', {
        		btn: ['确定','取消'] //按钮
        	}, function(){
        		sessionStorage.removeItem("userId");
        		sessionStorage.removeItem("cellPhone");
            	window.location.href = 'index.jsp';
        	}, function(){
        		layer.close();
            });
            return false;
        });
});
//公共错误码校验
function resultCheckCode(code,msg){
	if(code == "110" || code == "120"){
		layer.msg(msg);
		return false;
	}
	return true;
}
//公共上一步、下一步跳转
function next_btn(hdiv,sdiv){
	$("."+hdiv).fadeOut(500);
	$("."+sdiv).fadeIn(500);
}
function back_btn(hdiv,sdiv){
	$("."+hdiv).fadeOut(500);
	$("."+sdiv).fadeIn(500);
}

//将form数据转换为json格式
$.fn.serializeJson=function(){  
    var inputs=$(this).find("input,textarea,select");  
    var o = {};  
    $.each(inputs,function(i,n){  
        switch(n.nodeName.toUpperCase()){  
            case "INPUT":  
                if($(n).is(":checkbox")){  
                    if($(n).is(":checked")){  
                        o[n.name]=true;  
                    }else{  
                        o[n.name]=false;  
                    }  
                }else if($(n).is(":radio")){  
                    if($(n).is(":checked")){  
                        o[n.name]=n.value;  
                    }  
                }else if($(n).is(":file")){  
                    return true;
                }else{
                     if(n.name){
                       o[n.name]=n.value;   
                     }  
                }  

                break;  
            case "TEXTAREA":  
                o[n.name]=$(n).val();  
                break;  
            case "SELECT":  
                o[n.name]=n.value;  
                break;  
        }  
    });  
    return o;  
};
//获取url传参值。
function getQueryString(name){ 
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
    var r = window.location.search.substr(1).match(reg); 
    if(r != null){
        return decodeURI(r[2]); 
    };
    return null; 
}; 

//刷新当前页面
function refresh(){
	window.location.reload()
}