$(function(){
	//下一步跳转
	$(".step_next").click(function(){
		next_btn($(".step_next").attr("hdiv"),$(".step_next").attr("sdiv"));
		$(".step_now img").attr("src","common/images/step_arrow_finish.png");
		$(".recharge_step li:nth-child(2)").css("background","#ffdf92");
		$(".recharge_step li:nth-child(2) span").css("color","#ed510a");
		$(".recharge_step li:nth-child(2) img").attr("src","common/images/step_arrow_now.png");
		$('html,body').animate({scrollTop : '230px'}, 800);
	});
	$(".pay_next").click(function(){
		next_btn($(".pay_next").attr("hdiv"),$(".pay_next").attr("sdiv"));
		$(".recharge_step li:last-child").css("background","#ffdf92");
		$(".recharge_step li:last-child span").css("color","#ed510a");
		$(".recharge_step li:nth-child(2) img").attr("src","common/images/step_arrow_finish.png");
		$('html,body').animate({scrollTop : '230px'}, 800);
	});
	
	//上一步跳转
	$(".back_btn").click(function(){
		back_btn($(".back_btn").attr("hdiv"),$(".back_btn").attr("sdiv"));
		$(".step_now img").attr("src","common/images/step_arrow_now.png");
		$(".recharge_step li:nth-child(2)").css("background","#e3e3e3");
		$(".recharge_step li:nth-child(2) span").css("color","#aaaaaa");
		$(".recharge_step li:nth-child(2) img").attr("src","common/images/step_arrow_default.png");
		$('html,body').animate({scrollTop : '230px'}, 800);
	});
	
});