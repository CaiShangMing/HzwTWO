<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>雪漫网</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="${pageContext.request.contextPath}/statics/css/btts/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="${pageContext.request.contextPath}/statics/css/btts/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="${pageContext.request.contextPath}/statics/css/btts/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/statics/img/topLogo.ico">
	
	<!-- newPage -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,500' rel='stylesheet' type='text/css'>
    <link href="${pageContext.request.contextPath}/statics/css/newPage/style.css" rel="stylesheet">
	
</head>
<body>
    <div class="navbar navbar-inverse set-radius-zero" >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
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
    <!-- LOGO HEADER END-->
    <section class="menu-section">
        <div class="container">
            <div class="row ">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="${pageContext.request.contextPath}/main" class="menu-top-active">首页</a></li>
                            <li><a href="form.html">标题2</a></li>
                            <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown">标题3层次1 <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="ui.html">层次2</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">层次3</a></li>
                                </ul>
                            </li>
                            <li><a href="tab.html">标题4</a></li>
                            <li><a href="table.html">标题5</a></li>
                            <c:choose>
                            	<c:when test="${not empty LoginUser }">
                            		<li><a href="${pageContext.request.contextPath}/homePage" >个人主页</a></li>
                            	</c:when>
                            </c:choose>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>