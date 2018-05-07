<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Sctipt-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>UserCreateConfirm画面</title>

<link rel="stylesheet" type="text/css" href="./style/Home.css">

</head>
<body>

<div id="header">
	<div id="top">
	</div>
</div>
<div id="main">
	<div id="top">
		<p>UserCreateConfirm</p>
	</div>
	<div>
		<h3>登録する内容は以下でよろしいですか。</h3>
		<table>
			<s:form action="UserCreateCompleteAction">
			<tr id="box">
				<td>
					<label>ログインID:</label>
				</td>
				<td>
					<s:property value="loginUserId" escape="false"/>
				</td>
			</tr>
			<tr id="box">
				<td>
					<label>ログインPASS:</label>
				</td>
				<td>
					<s:property value="loginPassword" escape="false"/>
				</td>
			</tr>
			<tr id="box">
				<td>
					<label>ユーザー名:</label>
				</td>
				<td>
					<s:property value="userName" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<s:submit value="完了"/>
				</td>
			</tr>
			</s:form>
		</table>
	</div>
</div>
<div id="footer">
	<div id="pr">
	</div>
</div>
</body>
</html>