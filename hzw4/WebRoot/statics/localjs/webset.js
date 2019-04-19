$(document).ready(function(){
	var localPath=$("#localPath").val();
	$("#selectWebSet").change(function(){
		var selectWebSetId=$("#selectWebSet").val();
		$.ajax({
			url:localPath+"/changeWebSetId?t="+$.now(),
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
function webset(){
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
}