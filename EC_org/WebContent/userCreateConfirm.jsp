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
<title>UserCreateConfirm</title>
<link rel="stylesheet" type="text/css" href="./style/home.css"/>
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
	</div>
	<div>
		<h3>登録内容は以下でよろしいですか。</h3>
		
			<s:form action="UserCreateCompleteAction">
			<table border="1ps">
				<tr id="box">
						<td>
							<label>ユーザー名:</label>
						</td>
						<td>
							<s:property value="userName" escape="false" />
						</td>
					</tr>
				<tr id="box">
						<td>
							<label>ログインID:</label>
						</td>
						<td>
							<s:property value="loginUserId" escape="false" />
						</td>
					</tr>
					<tr id="box">
						<td>
							<label>ログインPASS:</label>
						</td>
						<td>
							<s:property value="loginPassword" escape="false" />
						</td>
					</tr>
					</table>
						<div id="text-center">
							<s:submit class="button" value="完了" />
						</div>
					
				</s:form>
		
	</div>
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