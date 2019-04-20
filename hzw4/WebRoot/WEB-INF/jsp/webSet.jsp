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
<title>网站信息</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/backStage/pintuer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/backStage/admin.css">
</head>
<body>
	<input type="hidden" value="${pageContext.request.contextPath}" id="localPath"/>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong><span class="icon-pencil-square-o"></span> 网站信息</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="">
				<div class="form-group">
					<div class="label">
						<label>网站标题：</label>
					</div>
					<div class="field">
						<input type="text" class="input" name="stitle" id="websettheme" value="${currentWebSet. websettheme}"  required="required"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>网站LOGO：</label>
					</div>
					<div class="field">
						<input type="text"  name="slogo" class="input tips"
							style="width:25%; float:left;" value="${currentWebSet.websetlogo}" data-toggle="hover"
							data-place="right" data-image="" id="websetlogo" required="required"/> <input type="button"
							class="button bg-blue margin-left" id="image1" value="+ 浏览上传">
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>网站关键字：</label>
					</div>
					<div class="field">
						<textarea class="input" name="skeywords" style="height:80px" id="websetkeyword">${currentWebSet.websetkeyword}</textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>网站描述：</label>
					</div>
					<div class="field">
						<textarea class="input" name="sdescription" id="websetdescribe">${currentWebSet.websetdescribe}</textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>管理员：</label>
					</div>
					<div class="field">
						<input type="text" class="input" name="s_name"  id="websetmanager"value="${currentWebSet.websetmanager}" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>手机：</label>
					</div>
					<div class="field">
						<input type="text" class="input" name="s_phone" id="websetphone"value="${currentWebSet.websetphone}" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>QQ：</label>
					</div>
					<div class="field">
						<input type="text" class="input" name="s_qq" id="websetqq"value="${currentWebSet.websetqq }" required="required" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group" style="display:none">
					<div class="label">
						<label>QQ群：</label>
					</div>
					<div class="field">
						<input type="text" class="input" name="s_qqu" id="websetqqgroup"value="${currentWebSet.websetqqgroup}" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>Email：</label>
					</div>
					<div class="field">
						<input type="text" class="input" name="s_email" id="websetemail"value="${currentWebSet.websetemail }" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>地址：</label>
					</div>
					<div class="field">
						<input type="text" class="input" name="s_address" id="websetaddress"value="${currentWebSet.websetaddress }" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>版权信息：</label>
					</div>
					<div class="field">
						<textarea name="scopyright" class="input" style="height:120px;" id="websetcopyright">${currentWebSet.websetcopyright}</textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
				<!-- 在这里实现了模板切换 -->
					<input type="hidden" id="websetid" value="${currentWebSet.websetid}">
					<div class="label">
						<label>基础信息选择</label>
					</div>
					<div class="field">
					<input type="text" class="input" name="s_id" value="当前使用第${currentWebSet.websetid}套" />
						<!-- 在select中默认选中当前使用的基础信息模板，解决了在下拉框中重复出现默认选中的ID序号 -->
						<select id="selectWebSet" >
							<c:forEach var="currentWebSetId" items="${allWebSetId}">
							<!-- 第一种方法 -->
								<option value="${currentWebSetId}" <c:if test="${currentWebSetId eq currentWebSet.websetid}">selected="selected"</c:if>>${currentWebSetId}</option> 
							<!-- 第二种方法 -->
								<%-- <c:choose>
									<c:when test="${currentWebSetId eq currentWebSet.websetid }">
											<option selected="selected" value="${currentWebSetId}">${currentWebSetId}</option>
									</c:when>
									<c:otherwise>
										<option value="${currentWebSetId}">${currentWebSetId}</option>
									</c:otherwise>
								</c:choose>		 --%>	
							</c:forEach>	
						</select>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-check-square-o" type="button" onclick="return addWebSet()">
							添加</button>
						<button class="button bg-main icon-check-square-o" type="button" onclick="return modifyWebSet()">
							修改</button>
						<button class="button bg-main icon-check-square-o" type="button" onclick="return deleteWebSet()">
							删除</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script src="${pageContext.request.contextPath}/statics/js/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/localjs/webset.js" type="text/javascript"></script>
</html>