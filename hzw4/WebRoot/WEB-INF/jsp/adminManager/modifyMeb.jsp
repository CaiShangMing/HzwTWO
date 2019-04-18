<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
	<input type="hidden" value="${modifyUser.id}" id="userId"/>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong><span class="icon-key"></span> 修改会员</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="">
			 	<div class="form-group">
					<div class="label">
						<label for="sitename">旧名:${modifyUser.username}</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" id="username" name="username"
							size="50" placeholder="请输入新的用户名" required="required" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">新密码：</label>
					</div>
					<div class="field">
						<input type="password" class="input w50" id="userpassword" name="userpassword"
							size="50" placeholder="请输入新密码" required="required" />
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
						<label for="sitename">新的邮箱：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" id="email" name="email"
							size="50" placeholder="请输入新的邮箱地址"
							required="required" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">新的电话：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" id="phone" name="phone" size="50"
							placeholder="请输入新的电话" required="required" />
					</div>
				</div>
				<div class="form-group">
					<div class="field">
						<button class="button bg-main icon-check-square-o" onclick="return modifyMember()" >
							提交
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script src="${pageContext.request.contextPath}/statics/js/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/localjs/modifyMeb.js"></script>
</html>