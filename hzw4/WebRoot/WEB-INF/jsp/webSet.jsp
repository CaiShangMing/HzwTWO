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
						<input type="text" class="input" name="stitle" id="websettheme" value="${currentWebSet. websettheme}" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>网站LOGO：</label>
					</div>
					<div class="field">
						<input type="text" id="url1" name="slogo" class="input tips"
							style="width:25%; float:left;" value="${currentWebSet.websetlogo}" data-toggle="hover"
							data-place="right" data-image="" id="websetlogo"/> <input type="button"
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
						<input type="text" class="input" name="s_qq" id="websetqq"value="${currentWebSet.websetqq }" />
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
					<div class="label">
						<label>基础信息选择</label>
					</div>
					<div class="field">
					<input type="text" class="input" name="s_id" value="第${currentWebSet.websetid}套" />
						<select id="selectWebSet">
							<option selected="selected" value="${currentWebSet.websetid}">${currentWebSet.websetid}</option>
							<c:forEach var="currentWebSetId" items="${allWebSetId}">
							<!-- 未完成判断当前，出现重复数字 -->
								<c:if test="${currentWebSetId ne 2 }">
									<option value="${ currentWebSetId}">
										${ currentWebSetId}
									</option>
								</c:if>
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
						<button class="button bg-main icon-check-square-o" type="submit" onclick="return webset()">
							确定</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script src="${pageContext.request.contextPath}/statics/js/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/localjs/webset.js" type="text/javascript"></script>
</html>