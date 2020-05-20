$(function(){
	let bannerAction = setInterval(ba, 3000);	//3초 마다 순환
	$(".container").hover(function(){	//hover시 멈춤
		clearInterval(bannerAction);
	}, function(){
		bannerAction = setInterval(ba, 3000);
	});
	for(let i=0; i<3; i++){
		$("#c1Below2 > div").eq(i).css("background-image", "url('imgs/img"+ (i+1) +".jpg')");
	}
	$("div#c1Above > div").click(function(){
		$("div#c1Above > div").removeClass("active");
		$(this).addClass("active");
		$("div#content1 > div:not(:first)").hide();
		$("div#content1 > div").eq($(this).index() + 1).show();
	});
	$("#pFoot > button").click(function(){
		$("#popup").fadeOut();
	});
});

function ba(){	//메소드
	$(".container").animate({"left":"-1200px"}, 1000, function(){
		$(".container").css("left",0);	//돌고 초기화
		$(".container > div:first").appendTo(".container");	//첫번째 배너 맨뒤로 보내기(순환)
	});
}