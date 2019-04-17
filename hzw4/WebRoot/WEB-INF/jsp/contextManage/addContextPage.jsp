<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<meta name="renderer" content="webkit">
	<title>添加内容页</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/backStage/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/backStage/admin.css">
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>增加内容</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="">
				<div class="form-group">
					<div class="label">
						<label>标题：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="" name="title"
							data-validate="required:请输入标题" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>图片：</label>
					</div>
					<div class="field">
						<input type="text" id="url1" name="img" class="input tips"
							style="width:25%; float:left;" value="" data-toggle="hover"
							data-place="right" data-image="" /> <input type="button"
							class="button bg-blue margin-left" id="image1" value="+ 浏览上传"
							style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>

				<if condition="$iscid eq 1">
				<div class="form-group">
					<div class="label">
						<label>分类标题：</label>
					</div>
					<div class="field">
						<select name="category" class="input w50">
							<option value="">请选择分类</option>
							<option value="">产品分类</option>
							<option value="">产品分类</option>
							<option value="">产品分类</option>
							<option value="">产品分类</option>
						</select>
						<div class="tips"></div>
					</div>
				</div>
				</if>
				<div class="form-group">
					<div class="label">
						<label>内容：</label>
					</div>
					<div class="field">
						<textarea name="content" class="input"
							style="height:100px; border:1px solid #ddd;"></textarea>
						<div class="tips"></div>
					</div>
				</div>

				<div class="clear"></div>
				 <div class="form-group">
					<div class="label">
						<label>文章链接：</label>
					</div>
					<div class="field">
						<input type="text" class="input" name="link" value="" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>推荐指数：</label>
					</div>
					<div class="field">
						<input type="text" class="input" name="recommend" value="" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>发布时间：</label>
					</div>
					<div class="field">
						<input type="text" class="laydate-icon input w50" name="datetime"
							placeholder="默认当前" readonly="readonly"
							style="padding:10px!important; height:auto!important;border:1px solid #ddd!important;" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>作者：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="author" value="" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>点击次数：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="shares" value=""
							data-validate="member:只能为数字" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-check-square-o" type="submit">
							提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
