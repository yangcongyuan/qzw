$(function(){
//提交下一步
    /*$(".submit").click(function(){
        next_btn($(this).attr("hdiv"),$(this).attr("sdiv"));
        var step = $(this).attr("step");
        $(".step_slide").animate({left:"50%"},1000);
        $(".step_slide").css({"border-top-left-radius":"0","border-bottom-left-radius":"0"});
        $(".step_animate").show();
        $(".step_animate").animate({width:"50%"},500);
        $(".stepPlan_bindPhone").find("li").eq(step-1).removeClass("waterDropActive_bindPhone");
        $(".stepPlan_bindPhone").find("li").eq(step-1).addClass("ed");
        $(".stepPlan_bindPhone").find("li").eq(step).addClass("waterDropActive_bindPhone");
        $(".stepPlan_passwordSettings2").find("li").eq(step-1).removeClass("waterDropActive_passwordSettings");
        $(".stepPlan_passwordSettings2").find("li").eq(step-1).addClass("ed");
        $(".stepPlan_passwordSettings2").find("li").eq(step).addClass("waterDropActive_passwordSettings");
    });*/
//刷新图形验证码
    $(".change_imgcode").click(function(){
        $(this).parent().siblings().children("img").attr("src",""+jsonPath+"common/imgCode?"+new Date().getTime()+"");
    });
});