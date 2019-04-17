<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp" %>
<style type="text/css">
	.panel
	{
		padding: 80px 20px 0px;
		min-height: 400px;
		cursor: default;
	}
	.text-center
	{
		margin: 0 auto;
		text-align: center;
		border-radius: 10px;
		max-width: 900px;
		-moz-box-shadow: 0px 0px 5px rgba(0,0,0,.3);
		-webkit-box-shadow: 0px 0px 5px rgba(0,0,0,.3);
		box-shadow: 0px 0px 5px rgba(0,0,0,.1);
	}
	h2
	{
		padding-top: 20px;
		font-size: 20px;
	}
	.padding-big
	{
		padding: 20px;
	}
</style>
<div class="panel">
<div class="text-center">
  <h2><stong>很抱歉，您要找的页面不存在</stong></h2>
	<div class="padding-big"> <a href="${pageContext.request.contextPath}/main" class="btn btn-primary" >返回首页</a>
	</div>
</div>
</div>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
