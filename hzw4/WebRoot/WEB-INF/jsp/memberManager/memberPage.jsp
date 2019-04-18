<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta charset="utf-8">
    <title>雪漫网个人主页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
	<meta name="description" content=""/>
    <meta name="author" content=""/>

 <link href="${pageContext.request.contextPath}/statics/css/btts/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="${pageContext.request.contextPath}/statics/css/btts/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="${pageContext.request.contextPath}/statics/css/btts/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/statics/img/topLogo.ico">    
    <link href="${pageContext.request.contextPath}/statics/css/strass/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/statics/css/strass/site.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/css/strass/bootstrap-responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="js/html5.js"></script>
    <![endif]-->
</head>
  <body>
    <div class="navbar navbar-inverse set-radius-zero" >
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html">
                    <img src="${pageContext.request.contextPath}/statics/img/logo4.png" />
                </a>
            </div>
            <div class="right-div">
                <c:choose>
                	<c:when test="${not empty LoginUser}">
                         <a href="${pageContext.request.contextPath}/loginOut" class="btn btn-info pull-right">退出</a>
                	</c:when>
                	<c:otherwise>
                		 <a href="${pageContext.request.contextPath}/login" class="btn btn-info pull-right">登录</a>
                	</c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<div class="well sidebar-nav">
					<ul class="nav nav-list">
						<li class="nav-header"><i class="icon-wrench"></i>
							个人主页</li>
							<!-- 可以在这里修改点击的样式,添加class="active" -->
						<li class="active"><a href="#">详细信息</a>
						</li>
						<li class="active"><a href="#">个人信息</a>
						</li>
						<li class="active"><a href="${pageContext.request.contextPath}/loginOut">退出</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="span9">
				<div class="row-fluid">
					<div class="page-header">
						<h1>
							${LoginUser.username}<small>-历史记录</small>
						</h1>
					</div>
					<table class="table table-striped table-bordered table-condensed">
						<thead>
							<tr>
								<th>标题</th>
								<th>内容</th>
								<th>作者</th>
								<th>直达</th>
								<th>类别</th>
								<th>归属</th>
								<th>状态</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr class="list-users">
								<td>1</td>
								<td>Admin</td>
								<td>travis@provider.com</td>
								<td>xxx-xxx-xxxx</td>
								<td>My City</td>
								<td>Admin</td>
								<td><span class="label label-success">上线</span>
								</td>
								<td>
									<div class="btn-group">
										<a class="btn btn-mini dropdown-toggle" data-toggle="dropdown"
											href="#">Actions <span class="caret"></span>
										</a>
										<ul class="dropdown-menu">
											<li><a href="#"><i class="icon-pencil"></i> Edit</a>
											</li>
											<li><a href="#"><i class="icon-trash"></i> Delete</a>
											</li>
											<li><a href="#"><i class="icon-user"></i> Details</a>
											</li>
											<li class="nav-header">Permissions</li>
											<li><a href="#"><i class="icon-lock"></i> Make <strong>Admin</strong>
											</a>
											</li>
											<li><a href="#"><i class="icon-lock"></i> Make <strong>Moderator</strong>
											</a>
											</li>
											<li><a href="#"><i class="icon-lock"></i> Make <strong>User</strong>
											</a>
											</li>
										</ul>
									</div></td>
							</tr>
						</tbody>
					</table>
					<div class="pagination">
						<ul>
							<li><a href="#">Prev</a>
							</li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a>
							</li>
							<li><a href="#">3</a>
							</li>
							<li><a href="#">4</a>
							</li>
							<li><a href="#">Next</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@include file="/WEB-INF/jsp/common/foot.jsp"%>
     