$(document).ready(function(){
	var localPath=$("#localPath").val();
	/*
	 * 异步验证用户名是否存在并设置用户名添加规则
	 * */
	$("#username").blur(function(){
		$("#pattenUsername").html("");
		var username=$("#username").val();
		var patten=new RegExp(/^[\u4e00-\u9fa5_a-zA-Z0-9_]{2,6}$/);
		if(null!=username &&username!=""){
			if(patten.test(username)){
				$("#pattenUsername").html("");
				$.ajax({
					url:localPath+"/registerBlur",
					type:"post",
					data:{"username":username},
					dataType:"json",
					success:function(data){
						if(data.blurMessage=="ok"){
							$("#pattenUsername").html("");
						}else{
							$("#pattenUsername").html("用户名已存在，请更换");
						}
					}
				});
			}else{
				$("#pattenUsername").html("用户名必须是2至6位字符，可以是数字，中文，字母。");
			}
		}
	});
	/*
	 * 异步验证密码是否符合规则
	 */
	$("#password").blur(function(){
		$("#pattenPassword").html("");
		var password=$("#password").val();
		var pattenPass=new RegExp(/^[a-zA-Z0-9_]{6,12}$/);
		if(!pattenPass.test(password)){
			$("#pattenPassword").html("密码必须是6至12位之间，可以是数字或字母，区分大小写");
		}
	});
	/*
	 * 异步验证两次输入密码是否一致
	 */
	$("#passwordAgain").blur(function(){
		var password=$("#password").val();
		var passwordAgain=$("#passwordAgain").val();
		if(password==passwordAgain){
			$("#pattenPasswordAgain").html("");
		}else{
			$("#pattenPasswordAgain").html("两次输入密码不一致");
		}
	});
	/*
	 * 异步验证手机号码是否符合规则
	 */
	$("#phone").blur(function(){
		$("#pattenPhone").html("");
		var phone=$("#phone").val();
		var pattenPhone=new RegExp(/^1[34578]\d{9}$/);
		if(!pattenPhone.test(phone)){
			$("#pattenPhone").html("手机号码的必须是以13/14/15/17/18开头的11位数字");
		}else{
			$("#pattenPhone").html("");
		}
	});
	/*
	 * 异步验证邮箱是否符合规则
	 */
	$("#email").blur(function(){
		$("#pattenEmail").html("");
		var email=$("#email").val();
		var pattenEmail=new RegExp(/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/ );
		if(!pattenEmail.test(email)){
			$("#pattenEmail").html("邮箱格式不正确，正确示例：1234@qq.com");
		}else{
			$("#pattenEmail").html("");
		}
	});
});
function isRegister(){
	var localPath=$("#localPath").val();
	var username=$("#username").val();
	var pattenName=new RegExp(/^[\u4e00-\u9fa5_a-zA-Z0-9_]{2,6}$/);
	var password=$("#password").val();
	var pattenPass=new RegExp(/^[a-zA-Z0-9_]{6,12}$/);
	var passwordAgain=$("#passwordAgain").val();
	var phone=$("#phone").val();
	var pattenPhone=new RegExp(/^1[34578]\d{9}$/);
	var email=$("#email").val();
	var pattenEmail=new RegExp(/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/);
	if(pattenName.test(username)&&password==passwordAgain&&pattenPass.test(password)&&pattenPhone.test(phone)&&pattenEmail.test(email)){
		$.ajax({
			url:localPath+"/isRegister",
			type:"post",
			data:{"username":username,"userpassword":password,"email":email,"phone":phone},
			dataType:"json",
			success:function(data){
				if(data.blurMessage=="ok"){
					alert("注册成功，马上登录吧");
					window.location.href=localPath+"/login";
					/*
					 * 为什么要return false，还没找到原因
					 */
					return false;
				}else if(data.blurMessage=="nameExist"){
					alert(username+"用户名已存在，请更换");
					window.location.href=localPath+"/register";
					return false;
				}else if(data.blurMessage=="fail"){
					alert("用户注册失败");
					window.location.href=localPath+"/register";
					return false;
				}else{
					alert("出错了");
					window.location.href=localPath+"/register";
					return false;
				}
			}
		});	
	}else{
		alert("注册信息不正确，请注意提示");
		window.location.href=localPath+"/register";
		return false;
	}
};