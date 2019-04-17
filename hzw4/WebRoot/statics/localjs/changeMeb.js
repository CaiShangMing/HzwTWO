$(document).ready(function(){
});
//单个删除
function del(id) {
	var localPath=$("#localPath").val();
	if (confirm("您确定要删除吗?")) {
		var userId=id;
		$.ajax({
			url:localPath+"/delUser",
			type:"post",
			data:{"id":userId},
			dataType:"json",
			async:false,
			success:function(data){
				if(data.delMessage=="ok"){
					alert("删除成功");
				/*	//其实在async为true的时候，return是否为true或者false对超链接中的
					//href是否发生跳转是没有影响的，因为此时可能ajax还没有执行完，但是
					//function已经执行完，并且返回了true值。*/					
				}else if(data.delMessage=="fail"){
					alert("删除失败");
				}else{
					alert("修改出错了");
				}
			}
		});
	}else{
		return false;
	}
}

//全选
$("#checkall").click(function() {
	$("input[name='id[]']").each(function() {
		if (this.checked) {
			this.checked = false;
		} else {
			this.checked = true;
		}
	});
});
//批量删除
function DelSelect() {
	var localPath=$("#localPath").val();
	var Checkbox = false;
	var list=[];
	var i=-1;
	$("input[name='id[]']").each(function() {
		if (this.checked == true) {
			Checkbox = true;
			i++;
			list[i]=this.value;	
		}
	});
	if (Checkbox) {
		var t = confirm("您确认要删除选中的内容吗？");
		if (t == false)
			return false;
		$.ajax({
			url:localPath+"/checkDel",
			type:"post",
			data:{"userId":list},
			dataType:"json",
			success:function(data){
				if(data.checkDelMessage=="ok"){
					alert("删除成功");
				}else if(data.checkDelMessage=="fail"){
					alert("删除失败");
				}else{
					alert("删除出错了");
				}
			}
		});
	} else {
		alert("请选择您要删除的内容!");
		return false;
	}
}
//批量排序
function sorts() {
	var Checkbox = false;
	$("input[name='id[]']").each(function() {
		if (this.checked == true) {
			Checkbox = true;
		}
	});
	if (Checkbox) {
		$("#listform").submit();
	} else {
		alert("请选择要操作的内容!");
		return false;
	}
}

//批量首页显示
function changeishome(o) {
	var Checkbox = false;
	$("input[name='id[]']").each(function() {
		if (this.checked == true) {
			Checkbox = true;
		}
	});
	if (Checkbox) {
		$("#listform").submit();
	} else {
		alert("请选择要操作的内容!");
		return false;
	}
}
//同步请求：属性async=false的例子，异步请求默认为true
function checkAccount3(){
    var result = "3:2";
    $.ajax({
        url : path+'/user/checkAccount.do',
        type : "post",
        data : {},
        async : false,
        success : function(data) {
            result = "3:1";
        }
    });
    return result;
}