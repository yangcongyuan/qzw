$(function(){
	//下一步跳转
	$(".order_pay_enterorderbtn").click(function(){
		next_btn($(".order_pay_enterorderbtn").attr("hdiv"),$(".order_pay_enterorderbtn").attr("sdiv"));
		$(".pay_step_orderinfo").children().removeClass("pay_step_now");
		$(".pay_step_pay").children("div").addClass("pay_step_now");
		$(".pay_step_pay").children().children().addClass("uk-badge-now");
		$('html,body').animate({scrollTop : '120px'}, 800);
	});
	$(".pay_enterpaybtn").click(function(){
		next_btn($(".pay_enterpaybtn").attr("hdiv"),$(".pay_enterpaybtn").attr("sdiv"));
		$(".pay_step_pay").children().removeClass("pay_step_now");
		$(".pay_step_over").children("div").addClass("pay_step_now");
		$(".pay_step_over").children().children().addClass("uk-badge-now");
		$('html,body').animate({scrollTop : '120px'}, 800);
	});
});