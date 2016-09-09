$(function(){
    //切换邮箱，手机修改方式.
    $(".E_phone").click(function(){
        $("#PHONE").fadeIn("slow");
        $("#EMAIL").fadeOut("fast");
    });
    $(".P_email").click(function(){
        $("#EMAIL").fadeIn("slow");
        $("#PHONE").fadeOut("fast");
    });
    $(".change_forgetPassword").click(function(){
        $(this).siblings("img").attr("src",""+jsonPath+"common/imgCode?"+new Date().getTime()+"");
    });
});
//倒计时跳转
    var wait2 = 30,t22;
    var c22 = wait2;
    function waitime2(){
        $(".cuttime").text(c22);
        t22 = setTimeout("waitime2()",1000);
        c22--;
        if(c22<0){
            c22=wait;
            stopwait2();
        };
    };
    function stopwait2(){
        clearTimeout(t22);
        window.location.href="log_in.jsp#loginbg_log_in";
    };