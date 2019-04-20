$(document).ready(function(){
	var localPath=$("#localPath").val();
	$("#selectWebSet").change(function(){
		var selectWebSetId=$("#selectWebSet").val();
		$.ajax({
			url:localPath+"/changeWebSetId",
			type:"post",
			data:{"selectWebSetId":selectWebSetId},
			dataType:"json",
			success:function(data){
				if(data.changeWebSetMessage=="ok"){
					$("#websettheme").val(data.currentWebSet.websettheme);
					$("#websetlogo").val(data.currentWebSet.websetlogo);
					$("#websetkeyword").val(data.currentWebSet.websetkeyword);
					$("#websetdescribe").val(data.currentWebSet.websetdescribe);
					$("#websetmanager").val(data.currentWebSet.websetmanager);
					$("#websetphone").val(data.currentWebSet.websetphone);
					$("#websetqq").val(data.currentWebSet.websetqq);
					$("#websetqqgroup").val(data.currentWebSet.websetqqgroup);
					$("#websetemail").val(data.currentWebSet.websetemail);
					$("#websetaddress").val(data.currentWebSet.websetaddress);
					$("#websetcopyright").val(data.currentWebSet.websetcopyright);
					$("#websetid").val("当前使用第"+data.currentWebSet.websetid+"套");
				}else if(data.changeWebSetMessage=="noChange"){
					alert("当前选择一致，不用更换");
				}else{
					alert("切换失败");
				}
			}
		});
	});
});
function addWebSet(){
	var localPath=$("#localPath").val();
	var websettheme=$("#websettheme").val();
	var websetlogo=$("#websetlogo").val();
	var websetkeyword=$("#websetkeyword").val();
	var websetdescribe=$("#websetdescribe").val();
	var websetmanager=$("#websetmanager").val();
	var websetphone=$("#websetphone").val();
	var websetqq=$("#websetqq").val();
	var websetqqgroup=$("#websetqqgroup").val();
	var websetemail=$("#websetemail").val();
	var websetaddress=$("#websetaddress").val();
	var websetcopyright=$("#websetcopyright").val();
	$.ajax({
		url:localPath+"/addWebSet",
		type:"post",
		data:{"websettheme":websettheme,"websetlogo":websetlogo
			,"websetkeyword":websetkeyword,"websetdescribe":websetdescribe
			,"websetmanager":websetmanager,"websetphone":websetphone
			,"websetqq":websetqq,"websetqqgroup":websetqqgroup
			,"websetemail":websetemail,"websetaddress":websetaddress
			,"websetcopyright":websetcopyright},
		dataType:"json",
		success:function(data){
			if(data.addWebSetMessage=="ok"){
				alert("添加成功");
			}else if(data.addWebSetMessage=="exist"){
				alert("该套装已经存在，请执行修改");
			}else if(data.addWebSetMessage=="error"){
				alert("系统出错，请稍后重试或联系管理员");
			}else{
				alert("添加失败，请稍后重试或联系管理员");				
			}
			window.location.href=localPath+"/webSet";
		}
			
	});
}
function modifyWebSet(){
	var localPath=$("#localPath").val();
	var websetid=$("#websetid").val();
	var websettheme=$("#websettheme").val();
	var websetlogo=$("#websetlogo").val();
	var websetkeyword=$("#websetkeyword").val();
	var websetdescribe=$("#websetdescribe").val();
	var websetmanager=$("#websetmanager").val();
	var websetphone=$("#websetphone").val();
	var websetqq=$("#websetqq").val();
	var websetqqgroup=$("#websetqqgroup").val();
	var websetemail=$("#websetemail").val();
	var websetaddress=$("#websetaddress").val();
	var websetcopyright=$("#websetcopyright").val();
	$.ajax({
		url:localPath+"/modifyWebSet",
		type:"post",
		data:{"websetid":websetid,"websettheme":websettheme,"websetlogo":websetlogo,
			"websetkeyword":websetkeyword,"websetdescribe":websetdescribe,
			"websetmanager":websetmanager,"websetphone":websetphone,
			"websetqq":websetqq,"websetqqgroup":websetqqgroup,
			"websetemail":websetemail,"websetaddress":websetaddress,
			"websetcopyright":websetcopyright},
		dataType:"json",
		success:function(data){
			if(data.modifyWebSetMessage=="ok"){
				alert("修改成功");
			}else if(data.modifyWebSetMessage=="error"){
				alert("出错了，请联系管理员");
			}else{
				alert("修改失败");
			}
			window.location.href=localPath+"/webSet";
		}
	});
}