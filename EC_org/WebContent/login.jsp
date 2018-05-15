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
<title>Login</title>
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
	<div id="top">
		<p>Login</p>
	</div>
	<div>
		<h3>ログインをお願いします。</h3>
		<table>
			<s:form action="LoginAction">
				<tr>
					<td><s:textfield name="loginUserId" placeholder="IDを入力"/></td>
					<td><s:if test="errorMessage1 != ''"/><s:property value="errorMessage1" escape="false"/></td>
				</tr>
				<tr>
					<td><s:password name="loginPassword" placeholder="パスワードを入力"/></td>
					<td><s:if test="errorMessage2 != ''"/><s:property value="errorMessage2" escape="false"/></td>
				</tr>
				<tr>
					<td><s:submit value="ログイン"/></td>
				</tr>
			</s:form>
		</table>

		<br><br><br>
		<div id="text-link">
			<p>新規ユーザー登録は<a class="link" href='<s:url action="UserCreateAction"/>'>こちら</a></p>
			<p>Homeへ戻る場合は<a class="link" href='<s:url action="GoHomeAction"/>'>こちら</a></p>
		</div>
	</div>
</div>
<div id="footer">
	<div id="pr">
		<s:include value="footer.jsp"/>
	</div>
</div>
</div>
</body>
</html>