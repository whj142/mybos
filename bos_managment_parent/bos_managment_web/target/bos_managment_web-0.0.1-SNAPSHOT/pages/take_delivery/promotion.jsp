<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>宣传任务</title>
		<!-- 导入jquery核心类库 -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
		<!-- 导入easyui类库 -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/easyui/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/easyui/themes/icon.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/easyui/ext/portal.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/default.css">
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui/ext/jquery.portal.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui/ext/jquery.cookie.js"></script>
		<script src="${pageContext.request.contextPath}/js/easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(function() {
				// 宣传任务表格			
				$("#grid").datagrid({
					columns: [
						[{
							field: 'id',
							title: '编号',
							width: 100,
							checkbox: true
						}, {
							field: 'title',
							title: '宣传概要（标题）',
							width: 200
						}, {
							field: 'titleImg',
							title: '宣传图片',
							width: 200
						},{
							field: 'startDate',
							title: '发布时间',
							width: 100
						}, {
							field: 'endDate',
							title: '实效时间',
							width: 100
						}, {
							field: 'updateTime',
							title: '更新时间',
							width: 100
						}, {
							field: 'updateUnit',
							title: '更新单位',
							width: 100
						}, {
							field: 'updateUser',
							title: '更新人',
							width: 100
						}, {
							field: 'status',
							title: '状态',
							width: 100
						}]
					],
					pagination: true,
					toolbar: [{
							id: 'searchBtn',
							text: '查询',
							iconCls: 'icon-search'
						}, {
							id: 'addBtn',
							text: '增加',
							iconCls: 'icon-add',
							handler: function() {
								location.href = "${pageContext.request.contextPath}/pages/take_delivery/promotion_add.html";
							}
						}, {
							id: 'editBtn',
							text: '修改',
							iconCls: 'icon-edit',
							handler: function() {
								alert('修改宣传任务');
							}
						}, {
							id: 'deleteBtn',
							text: '作废',
							iconCls: 'icon-cancel',
							handler: function() {
								alert('作废');
							}
						},{
							id: 'saveBtn',
							text: '保存',
							iconCls: 'icon-save',
							handler: function() {
								alert('保存成功');
							}
						},
						{
							id: 'cancelBtn',
							text: '取消',
							iconCls: 'icon-no',
							handler: function() {
								alert('取消宣传任务');
							}
						}

					],
					pagination:true,
					fit:true
				});
			});
		</script>
	</head>

	<body class="easyui-layout">
		<div region="center" style="overflow:auto;padding:5px;">
			<table id="grid"></table>
		</div>
	</body>

</html>