<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>雪漫网登录</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
	<meta name="author" content="Muhammad Usman">
	<!-- The styles -->
	<link href="${pageContext.request.contextPath}/statics/css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="${pageContext.request.contextPath}/statics/css/charisma-app.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/css/btts/style.css" rel="stylesheet" />
  	<link rel="shortcut icon" href="${pageContext.request.contextPath}/statics/img/topLogo.ico">
</head>
<body>
<input type="hidden" value="${pageContext.request.contextPath}" id="localPath">
<div class="container-fluid">
	<div class="row-fluid">
		<div class="row-fluid">
			<div class="span12 center login-header">
				<h2>欢迎登录雪漫网</h2>
			</div>
			<!--/span-->
		</div>
		<!--/row-->
		<div class="row-fluid">
			<div class="well span5 center login-box">
				<div class="alert alert-info" id="returnMessage">请使用用户名和密码登录</div>
				<form class="form-horizontal" action="" method="post">
					<fieldset>
						<div class="input-prepend" title="用户名" data-rel="tooltip">
							<span class="add-on"><i class="icon-user"></i>
							</span><input autofocus class="input-large span10" name="username"
								id="username" type="text"   required="required"/>
						</div>
						<div class="clearfix"></div>
						<div class="input-prepend" title="密码" data-rel="tooltip">
							<span class="add-on"><i class="icon-lock"></i>
							</span><input class="input-large span10" name="userpassword" id="password"
								type="password"  required="required" />
						</div>
						<div class="clearfix"></div>
						<p class="center span5">
							<input type="button"  class="btn btn-primary" onclick="javascript:login()" value="登录"/>
						</p>
						<p class="center span5">
							<input type="button" class="btn btn-primary"  onclick="javascript:register();" value="注册"/>
							<!-- 不直接使用超链接进行后台跳转是为了页面样式统一，通过使用按钮进行跳转 -->
						</p>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>
<section class="footer-section" >
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				&copy; 2018 My web site <a href="#" target="_blank" title="雪漫网">雪漫网</a>
			</div>
		</div>
	</div>
</section>
<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/statics/js/jquery-1.7.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/localjs/loginAndRegister.js"></script>
</body>
</html>