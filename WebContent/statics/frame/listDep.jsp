<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.table1 {
	border: 1px solid #ddd;
	width: 900px;
}

thead {
	background-color: lightblue;
}
</style>
</head>
<body>
	<table border="0" width="900">
		<tr>
			<td align="center" style="font-size: 24px; color: #666">部门管理</td>
		</tr>
		<tr>
			<td align="right"><a
				href="${pageContext.request.contextPath}/department_saveUI.action">添加</a></td>
		</tr>
	</table>
	<br />
	<table cellspacing="0" border="1" class="table1">
		<thead>
			<tr>
				<th width="6%">部门名称</th>
				<th width="7%">编辑</th>
				<th width="7%">删除</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="list" var="d">
				<tr>
					<td align="center"><s:property value="#d.dname" /></td>
					<td align="center"><a
						href="${pageContext.request.contextPath}/department_edit.action?did=<s:property value="#d.did" />"><img
							src="${pageContext.request.contextPath}/statics/images/edit.png" /></a></td>
					<td align="center"><a
						href="${pageContext.request.contextPath}/department_delete.action?did=<s:property value="#d.did" />"><img
							src="${pageContext.request.contextPath}/statics/images/trash.gif" /></a></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
	<br />


	<table border="0" cellspacing="0" cellpadding="0" width="900px">
		<tr>
			<td align="right"><span>第<s:property value="currPage" />/<s:property
						value="totalPage" />页
			</span>&nbsp;&nbsp; <span>总记录数：<s:property value="totalCount" />
			</span>&nbsp;&nbsp; <span>每页显示<s:property value="pageSize" />条
			</span> 
			<span>
				<s:if test="currPage > 1"> 
					<a href="${pageContext.request.contextPath}/department_findAll.action?currPage=1">[首页]</a>&nbsp;&nbsp; 
					<a href="${pageContext.request.contextPath}/department_findAll.action?currPage=<s:property value="currPage-1" />">[上一页]</a>&nbsp;&nbsp;
				</s:if>
				<s:if test="currPage < totalPage">
					<a href="${pageContext.request.contextPath}/department_findAll.action?currPage=<s:property value="currPage+1" />">[下一页]</a>&nbsp;&nbsp; 
					<a href="${pageContext.request.contextPath}/department_findAll.action?currPage=<s:property
						value="totalPage" />">[尾页]</a>&nbsp;&nbsp;
				</s:if>
			</span>
			</td>
		</tr>
	</table>
</body>
</html>