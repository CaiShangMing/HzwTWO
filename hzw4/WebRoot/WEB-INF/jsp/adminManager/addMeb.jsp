<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/backStage/pintuer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/backStage/admin.css">
</head>
<body>
	<input type="hidden" value="${pageContext.request.contextPath}" id="localPath"/>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong><span class="icon-key"></span> 添加会员</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="">
			 	<div class="form-group">
					<div class="label">
						<label for="sitename">会员名 : </label>
					</div>
					<div class="field">
						<input type="text" class="input w50" id="username" name="username"
							size="50" placeholder="请输入用户名" required="required" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">原始密码：</label>
					</div>
					<div class="field">
						<input type="password" class="input w50" id="userpassword" name="userpassword"
							size="50" placeholder="请输入密码" required="required" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">确认新密码：</label>
					</div>
					<div class="field">
						<input type="password" class="input w50" id="repeatuserpassword"name="repeatuserpassword"
							size="50" placeholder="请再次输入新密码"
							required="required"  />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">请输入邮箱地址：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" id="email" name="email"
							size="50" placeholder="请输入邮箱地址"
							required="required" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">请输入电话：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" id="phone" name="phone" size="50"
							placeholder="请输入电话" required="required" />
					</div>
				</div>
				<div class="form-group">
					<div class="field">
					<!-- 一直无法调用这个方法，明天再试试 -->
						<button class="button bg-main icon-check-square-o" onclick="return addMember()" >
							提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script src="${pageContext.request.contextPath}/statics/js/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/localjs/addMeb.js"></script>
</html>