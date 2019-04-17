<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>分类管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/backStage/pintuer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/backStage/admin.css">
  </head>
<body>
	<input type="hidden" value="${pageContext.request.contextPath}" id="localPath"/>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong class="icon-reorder"> 内容列表</strong>
		</div>
		<div class="padding border-bottom">
			<button type="button" class="button border-yellow"
				onclick="window.location.href='#add'">
				<span class="icon-plus-square-o"></span> 添加分类
			</button>
		</div>
		<table class="table table-hover text-center">
			<tr>
				<th width="5%">ID</th>
				<th width="15%">一级分类</th>
				<th width="10%">排序</th>
				<th width="10%">操作</th>
			</tr>
			<c:if test="${not empty categoryList}">
				<c:forEach var="category" items="${categoryList}" varStatus="status">
					<tr>
						<td>${category.id}</td>
						<td>${category.context}</td>
						<td>${status.count}</td>
						<td><div class="button-group">
								<a class="button border-main" href="cateedit.html"><span
									class="icon-edit"></span> 修改</a> <a class="button border-red"
									href="javascript:void(0)" onclick="return del(1,2)"><span
									class="icon-trash-o"></span> 删除</a>
							</div></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
	<div class="pagelist">
		<a href="${pageContext.request.contextPath}/categoryManage?currentPage=1">首页</a>
		<a href="${pageContext.request.contextPath}/categoryManage?currentPage=${categoryPage.getCurrentPage()-1}">上一页</a>
		<a href="${pageContext.request.contextPath}/categoryManage?currentPage=${categoryPage.getCurrentPage()+1}">下一页</a>
		<a href="${pageContext.request.contextPath}/categoryManage?currentPage=${categoryPage.getTotalPage()}">尾页</a>
		当前页/总页数：${categoryPage.getCurrentPage()}/${categoryPage.getTotalPage()}
	</div>
	<div class="panel admin-panel margin-top">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>添加内容</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="">
				<div class="form-group">
					<div class="label">
						<label>分类标题：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="context" id="categoryContext"/><h3 id="tips"></h3>
					</div>
				</div>
				<div class="form-group">
					<div class="field">
						<button class="button bg-main icon-check-square-o" type="submit" onclick="return addCategory()">
							提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/localjs/category.js"></script>
</html>
