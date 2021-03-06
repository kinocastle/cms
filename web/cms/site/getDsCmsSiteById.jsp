<%@page language="java" pageEncoding="UTF-8" import="java.util.*,dswork.web.MyRequest,
dswork.cms.service.DsCmsSiteService"%><%
MyRequest req = new MyRequest(request);
Long id = req.getLong("keyIndex");
request.setAttribute("po", ((DsCmsSiteService)dswork.spring.BeanFactory.getBean("dsCmsSiteService")).get(id));
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<%@include file="/commons/include/getById.jsp"%>
</head>
<body>
<table border="0" cellspacing="0" cellpadding="0" class="listLogo">
	<tr>
		<td class="title">明细</td>
		<td class="menuTool">
			<a class="back" onclick="window.history.back();return false;" href="#">返回</a>
		</td>
	</tr>
</table>
<div class="line"></div>
<table border="0" cellspacing="1" cellpadding="0" class="listTable">
	<tr>
		<td class="form_title">拥有者</td>
		<td class="form_input">${fn:escapeXml(po.own)}</td>
	</tr>
	<tr>
		<td class="form_title">站点名称</td>
		<td class="form_input">${fn:escapeXml(po.name)}</td>
	</tr>
	<tr>
		<td class="form_title">目录名称</td>
		<td class="form_input">${fn:escapeXml(po.folder)}</td>
	</tr>
	<tr>
		<td class="form_title">链接</td>
		<td class="form_input">${fn:escapeXml(po.url)}</td>
	</tr>
	<tr>
		<td class="form_title">图片</td>
		<td class="form_input">${fn:escapeXml(po.img)}</td>
	</tr>
	<tr>
		<td class="form_title">开启日志(0否,1是)</td>
		<td class="form_input">${fn:escapeXml(po.enablelog)}</td>
	</tr>
	<tr>
		<td class="form_title">开启移动版(0否,1是)</td>
		<td class="form_input">${fn:escapeXml(po.enablemobile)}</td>
	</tr>
	<tr>
		<td class="form_title">meta关键词</td>
		<td class="form_input">${fn:escapeXml(po.metakeywords)}</td>
	</tr>
	<tr>
		<td class="form_title">meta描述</td>
		<td class="form_input">${fn:escapeXml(po.metadescription)}</td>
	</tr>
</table>
</body>
</html>
