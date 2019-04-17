$(document).ready(function(){
	var path=$("#localPath").val();
	$(".leftnav h2").click(function() {
		$(this).next().slideToggle(200);
		$(this).toggleClass("on");
	});
	$(".leftnav ul li a").click(function() {
		$("#a_leader_txt").text($(this).text());
		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
	});

});