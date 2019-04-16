<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>雪漫网注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<link href="${pageContext.request.contextPath}/statics/css/register2/style.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/statics/img/topLogo.ico">
</head>
<body class="loginbody">
<div class="dataEye">
	<input type="hidden" value="${pageContext.request.contextPath}" id="localPath"/>
	<div class="loginbox registbox">
		<div class="logo-a">
			<a href="${pageContext.request.contextPath}/login" title="雪漫网">
				<img src="${pageContext.request.contextPath}/statics/img/logo4.png">
			</a>
		</div>
		<div class="login-content reg-content">
			<div class="loginbox-title">
				<h3>注册</h3>
			</div>
			<form id="signupForm" >
				<div class="login-error"></div>
				<div class="row">
					<input type="text"  class="input-text-user noPic input-click" name="username" id="username" placeholder="用户名" required="required"><span id="pattenUsername"></span>
				</div>
				<div class="row">
					<input type="password"class="input-text-password noPic input-click" name="password" id="password" placeholder="密码" required="required"><span id="pattenPassword"></span>
				</div>
				<div class="row">
					<input type="password"class="input-text-password noPic input-click" name="passwordAgain" id="passwordAgain" placeholder="重复密码" required="required"><span id="pattenPasswordAgain"></span>
				</div>
				<div class="row">
					<input type="text" class="input-text-user noPic input-click" name="phone" id="phone" placeholder="电话" required="required"><span id="pattenPhone"></span>
				</div>
				<div class="row">
					<input type="text"  class="input-text-user noPic input-click" name="email" id="email" placeholder="邮箱" required="required"><span id="pattenEmail"></span>
				</div>
				<div class="row btnArea">
				<!-- 为了保持页面样式一致，不适用直接submit的方式，而是使用异步刷新跳转的方式 -->
					<input type="submit" class="login-btn" id="submit"   style="text-decoration: none;" value="注册"onclick="return isRegister()"/>
				</div>
				<div class="row btnArea">
					<input type="reset" value="重置"class="login-btn"/>
				</div>
			</form>
		</div>
		<div class="go-regist">
			已有帐号,请<a href="${pageContext.request.contextPath}/login" class="link">登录</a>
		</div>
	</div>
	
<div id="footer">
	<div class="dblock">
		<div class="inline-block"><img src="${pageContext.request.contextPath}/statics/img/logo4.png"></div>
		<div class="inline-block copyright">
			<p><a href="${pageContext.request.contextPath}/main" style="text-decoration: none;">关于我们</a> | <a href="#" style="text-decoration: none;">微博</a></p>
			<p> Copyright © 2018 雪漫网</p>
		</div>
	</div>
</div>
</div>
</body>
<script src="${pageContext.request.contextPath}/statics/js/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/localjs/isRegister.js" type="text/javascript"></script>
</html>