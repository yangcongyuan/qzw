$(function(){
//提交下一步
//    $(".submit").click(function(){
//        next_btn($(this).attr("hdiv"),$(this).attr("sdiv"));
//        var step = $(this).attr("step");
//        $(".step_slide").animate({left:step*200},1000);
//        $(".step_slide").css({"border-top-left-radius":"0","border-bottom-left-radius":"0"});
//        $(".step_animate").show();
//        $(".step_animate").animate({width:step*200},500);
//        $(this).parent().parent().parent().siblings(".stepPlan_passwordSettings").find("li").eq(step-1).removeClass("waterDropActive_passwordSettings");
//        $(this).parent().parent().parent().siblings(".stepPlan_passwordSettings").find("li").eq(step-1).addClass("ed");
//        $(this).parent().parent().parent().siblings(".stepPlan_passwordSettings").find("li").eq(step).addClass("waterDropActive_passwordSettings");
//        $(".stepPlan_passwordSettings2").find("li").eq(step-1).removeClass("waterDropActive_passwordSettings");
//        $(".stepPlan_passwordSettings2").find("li").eq(step-1).addClass("ed");
//        $(".stepPlan_passwordSettings2").find("li").eq(step).addClass("waterDropActive_passwordSettings");
//    });
//切换手机 邮箱验证方式
    $("#P_email").click(function(){
        $("#PHONE").hide();
        $("#EMAIL").fadeIn(600);
    });
    $("#E_phone").click(function(){
        $("#EMAIL").hide();
        $("#PHONE").fadeIn(600);
    });
    $(".change_imgcode").click(function(){
        $(this).parent().siblings().children("img").attr("src",""+jsonPath+"common/imgCode?"+new Date().getTime()+"");
    });
});