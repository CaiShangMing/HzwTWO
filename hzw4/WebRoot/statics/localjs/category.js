function addCategory(){
	var localPath=$("#localPath").val();
	var context=$("#categoryContext").val();
	if(null!=context){
		$.ajax({
			url:localPath+"/addCategory",
			type:"post",
			data:{"context":context},
			dataType:"json",
			success:function(data){
				if(data.categoryMessage=="ok"){
					alert("添加成功");
					window.location.href=realPath+"/categoryManage";
				}else if(data.categoryMessage=="fail"){
					alert("添加失败");
				}else if(data.categoryMessage=="repeat"){
					alert("该分类已经存在");
				}else if(data.categoryMessage=="error"){
					alert("出错了");
				}
			}
		});
	}else{
		alert("提交内容不能为空");
	}	
}
$(document).ready(function(){
	var localPath=$("#localPath").val();
	$("#categoryContext").blur(function(){
		var context=$("#categoryContext").val();
		$.ajax({
			url:localPath+"/addCategoryBlur",
			type:"post",
			data:{"context":context},
			dataType:"json",
			success:function(data){
				if(data.addCategoryBlurMessage=="ok"){
					$("#tips").html("可以使用");
				}else{
					$("#tips").html("已经存在");
				}
			}
		});
	});
});