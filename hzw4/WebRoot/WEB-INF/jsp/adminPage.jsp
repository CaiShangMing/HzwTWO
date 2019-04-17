<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>雪漫网管理员页面</title>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/statics/img/topLogo.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/backStage/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/backStage/admin.css">
	
</head>
<body style="background-color:#f2f9fd;">
	<input type="hidden" value="${pageContext.request.contextPath}" id="localPath"/>
	<div class="header bg-main">
		<div class="logo margin-big-left fadein-top">
			<h1>
				<img src="${pageContext.request.contextPath}/statics/img/backStage/y.jpg" class="radius-circle rotate-hover"
					height="50" alt="" />后台管理中心
			</h1>
		</div>
		<div class="head-l">
			<a class="button button-little bg-green"
				href="${pageContext.request.contextPath}/main" target="_self"><span
				class="icon-home"></span> 前台首页</a>
				&nbsp;&nbsp;<a class="button button-little bg-red"
				href="${pageContext.request.contextPath}/loginOut"><span class="icon-power-off"></span> 退出登录</a>
		</div>
	</div>
	<div class="leftnav">
		<div class="leftnav-title">
			<strong><span class="icon-list"></span>菜单列表</strong>
		</div>
		<h2>
			<span class="icon-user"></span>基本设置
		</h2>
		<ul style="display:block">
			<li><a href="${pageContext.request.contextPath}/webSet" target="right" ><span class="icon-caret-right"></span>网站设置</a>
			</li>
			<li><a href="#" target="right" ><span class="icon-caret-right"></span>修改密码</a>
			</li>
			<li><a href="#" target="right"><span class="icon-caret-right"></span>单页管理</a>
			</li>
			<li><a href="#" target="right"><span class="icon-caret-right"></span>首页轮播</a>
			</li>
			<li><a href="#" target="right"><span class="icon-caret-right"></span>留言管理</a>
			</li>
			<li><a href="${pageContext.request.contextPath}/changeMeb" target="right"><span class="icon-caret-right"></span>会员管理</a>
			</li>
		</ul>
		<h2>
			<span class="icon-pencil-square-o"></span>栏目管理
		</h2>
		<ul>
			<li><a href="${pageContext.request.contextPath}/contextManage" target="right"><span class="icon-caret-right"></span>内容管理</a>
			</li>
			<li><a href="#" target="right"><span class="icon-caret-right"></span>添加内容</a>
			</li>
			<li><a href="${pageContext.request.contextPath}/categoryManage" target="right"><span class="icon-caret-right"></span>分类管理</a>
			</li>
		</ul>
	</div>
	<ul class="bread">
		<li><a href="${pageContext.request.contextPath}/main"  class="icon-home">
				首页</a>
		</li>
		<li><a href="#" id="a_leader_txt">网站信息</a>
		</li>
	</ul>
	<div class="admin">
	<!-- 进入iframe框架显示页面 -->
		<iframe scrolling="auto" rameborder="0" src="${pageContext.request.contextPath}/changeMeb" name="right"
			width="100%" height="100%" id="iframeSrc"></iframe>
	</div>
</body>
<script src="${pageContext.request.contextPath}/statics/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/localjs/adminPage.js"></script>
</html>
