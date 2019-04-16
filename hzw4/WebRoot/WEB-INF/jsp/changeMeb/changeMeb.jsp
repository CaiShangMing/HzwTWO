<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>会员管理页</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/backStage/pintuer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/backStage/admin.css">
</head>
<body>
	<input type="hidden" value="${pageContext.request.contextPath}" id="localPath"/>
	<!-- 操作路径还没写 -->
	<form method="post" action="" id="listform">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 内容列表</strong>
			</div>
			<div class="padding border-bottom">
				<ul class="search" style="padding-left:10px;">
					<li><a class="button border-main icon-plus-square-o"
						href="${pageContext.request.contextPath}/addMeb" target="right"> 添加会员按钮</a></li>
					<!-- 异步搜索然后显示数据，待修改 -->
					<li><input type="text" placeholder="请输入搜索关键字" name="keywords"
						class="input"
						style="width:250px; line-height:17px;display:inline-block" /> <a
						href="javascript:void(0)" class="button border-main icon-search"
						onclick="changesearch()"> 搜索</a>
					</li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<th width="100" style="text-align:left; padding-left:20px;">会员ID</th>
					<th width="10%">排序</th>
					<th>图片</th>
					<th>名称</th>
					<th>电话</th>
					<th>邮箱</th>
					<th width="10%">注册时间</th>
					<th width="310">操作</th>
				</tr>
				<volist name="list" id="vo">
				<c:if test="${not empty userList }">
					<c:forEach var="user" items="${userList}" varStatus="status" >
						<tr>
							<td style="text-align:left; padding-left:20px;"><input
								type="checkbox" name="id[]" value="${user.id}" />${user.id}</td>
							<td>
								<input type="text" name="sort[1]" value="${status.count}" style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;" />
							</td>
							<td width="10%"><img src="${pageContext.request.contextPath}/statics/img/meb.jpg" alt="" width="70"
								height="50" />
							</td>
							<td>${user.username }</td>
							<td><font color="#00CC99">${user.phone }</font>
							</td>
							<td>${user.email}</td>
							<td>2016-07-01</td>
							<!-- 异步删除，待修改 -->
							<td><div class="button-group">
									<a class="button border-main" href="modify?id=${user.id}"><span
										class="icon-edit"></span> 修改</a> <a class="button border-red"
										href="${pageContext.request.contextPath}/changeMeb" onclick="return del('${user.id}')"><span
										class="icon-trash-o"></span> 删除</a>
								</div>
							</td>
						</tr>
					</c:forEach>
				</c:if>		
				<tr>
				<!-- 全选的js需要保留 -->
					<td style="text-align:left; padding:19px 0;padding-left:20px;"><input
						type="checkbox" id="checkall" /> 全选</td>
					<td colspan="7" style="text-align:left;padding-left:20px;">
					<!-- 批量删除js需要保留 -->
					<a href="${pageContext.request.contextPath}/changeMeb" class="button border-red icon-trash-o"
						style="padding:5px 15px;" onclick="return DelSelect()"> 删除</a>
					<!-- 批量js需要保留，排序，按照ID，名称，日期等等 -->
					<a href="javascript:void(0)" style="padding:5px 15px; margin:0 10px;"
						class="button border-blue icon-edit" onclick="return sorts()"> 排序</a>
					</td>
				</tr>
				<tr>
					<td colspan="8">
						<div class="pagelist">
							<a href="${pageContext.request.contextPath}/changeMeb?currentPage=1">首页</a>
							<a href="${pageContext.request.contextPath}/changeMeb?currentPage=${userPage.getCurrentPage()-1}">上一页</a>
							<a href="${pageContext.request.contextPath}/changeMeb?currentPage=${userPage.getCurrentPage()+1}">下一页</a>
							<a href="${pageContext.request.contextPath}/changeMeb?currentPage=${userPage.getTotalPage()}">尾页</a>
							当前页/总页数：${userPage.getCurrentPage()}/${userPage.getTotalPage()}
						</div>
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
<script src="${pageContext.request.contextPath}/statics/js/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/localjs/changeMeb.js"></script>
</html>

