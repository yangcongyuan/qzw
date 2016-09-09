$(function(){
//提交下一步
    /*$(".submit").click(function(){
        next_btn($(this).attr("hdiv"),$(this).attr("sdiv"));
        var step = $(this).attr("step");
        $(".step_slide").animate({left:step*200},1000);
        $(".step_slide").css({"border-top-left-radius":"0","border-bottom-left-radius":"0"});
        $(".step_animate").show();
        $(".step_animate").animate({width:step*200},500);
        $(".stepPlan_payPassword").find("li").eq(step-1).removeClass("waterDropActive_payPassword");
        $(".stepPlan_payPassword").find("li").eq(step-1).addClass("ed");
        $(".stepPlan_payPassword").find("li").eq(step).addClass("waterDropActive_payPassword");
        $(".stepPlan_payPassword2").find("li").eq(step-1).removeClass("waterDropActive_payPassword");
        $(".stepPlan_payPassword2").find("li").eq(step-1).addClass("ed");
        $(".stepPlan_payPassword2").find("li").eq(step).addClass("waterDropActive_payPassword");
    });*/
//切换手机 邮箱验证方式
    $("#P_email").click(function(){
        $("#PHONE").hide();
        $("#EMAIL").fadeIn(600);
    });
    $("#E_phone").click(function(){
        $("#EMAIL").hide(100);
        $("#PHONE").fadeIn(600);
    });
//图形验证刷新
    $(".change_imgcode").click(function(){
        $(this).parent().siblings().children("img").attr("src",""+jsonPath+"common/imgCode?"+new Date().getTime()+"");
    });
});