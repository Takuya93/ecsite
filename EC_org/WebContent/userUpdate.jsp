<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>UserUpdate</title>
<link rel="stylesheet" type="text/css" href="./style/home.css">
</head>
<body>
<div class="mainbody">
<div id="header">
	<div id="pr">
		<s:include value="header.jsp"/>
	</div>
</div>
<div id="main">
	<div id="top"></div>
	<s:form action = "UserUpdateAction">
	<table class="Form">
		<tr>
			<td>ログインID:</td><td><input type="text" name="loginUserId" value="<s:property value="session.loginUserId"/>"></td>
		</tr>
		<tr>
			<td>パスワード:</td><td><input type="password" name="loginPassword" value="<s:property value="session.loginPassword"/>"></td>
		</tr>
		<tr>
			<td>ユーザー名:</td><td><input type="text" name="userName" value="<s:property value="session.userName"/>"></td>
		</tr>
		</table>
	<div id="text-center">
		<s:submit class="button" value="登録"/>
	</div>
	</s:form>
</div>
<div id="top"></div>
<div id="footer">
	<div id="pr">
		<s:include value="footer.jsp"/>
	</div>
</div>








</div>
</body>
</html>