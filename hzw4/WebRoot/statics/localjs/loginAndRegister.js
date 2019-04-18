/*
 *前端登录页面异步验证登录信息
 **/
function login(){
	var localPath=$("#localPath").val();
	var username=$("#username").val();
	var userpassword=$("#password").val();
	$.ajax({
		url:localPath+"/isLogin",
		type:"post",
		data:{"username":username,"userpassword":userpassword},
		dataType:"json",
		success:function(data){
			if(data.message=="ok"){
				window.location.href=localPath+"/main";
			}else{
				$("#returnMessage").html(data.message);
			}
		}
	});
}
/*进行后台跳转*/
function register(){
	var path=$("#localPath").val();
	window.location.href=path+"/loginAndRegister/register";
}