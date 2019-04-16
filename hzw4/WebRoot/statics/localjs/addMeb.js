$(document).ready(function(){
});
function addMember(){
	var localPath=$("#localPath").val();
	var username=$("#username").val();
	var pattenName=new RegExp(/^[\u4e00-\u9fa5_a-zA-Z0-9_]{2,6}$/);
	var userpassword=$("#userpassword").val();
	var pattenPass=new RegExp(/^[a-zA-Z0-9_]{6,12}$/);
	var repeatuserpassword=$("#repeatuserpassword").val();
	var email=$("#email").val();
	var pattenEmail=new RegExp(/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/);
	var phone=$("#phone").val();
	var pattenPhone=new RegExp(/^1[34578]\d{9}$/);
	if(!pattenName.test(username)){
		alert("用户名填写不正确");
		return false;
	}
	if(!pattenPass.test(userpassword)){
		alert("密码填写不正确");
		return false;
	}
	if(!repeatuserpassword==userpassword){
		alert("重复密码填写不正确");
		return false;
	}
	if(!pattenEmail.test(email)){
		alert("邮箱填写不正确");
		return false;
	}
	if(!pattenPhone.test(phone)){
		alert("电话填写不正确");
		return false;
	}
	$.ajax({
		url : "localPath" + "/isRegister",
		type : "post",
		data : {
			"username" : username,
			"userpassword" : userpassword,
			"email" : email,
			"phone" : phone
		},
		dataType : "json",
		success : function(data) {
			if (data.blurMessage == "ok") {
				alert("添加会员成功");
			} else if (data.blurMessage == "nameExist") {
				alert(username + "用户名已存在，请更换");
			} else if (data.blurMessage == "fail") {
				alert("添加会员失败");
			} else {
				alert("出错了");
			}
			return false;
		}
	});	
}
