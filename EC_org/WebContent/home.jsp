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
<title>Home</title>
<link rel="stylesheet" type="text/css" href=".style/home.css">
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
		<div id="text-center">
		<s:if test="#session.login_user_id == null">
			<s:form action="HomeAction">
				<s:submit value="ログイン画面へ"/>
			</s:form>
		</s:if>
		<s:if test ="#session.login_user_id !=null">
			<p>商品は<a class="link" href='<s:url action="BuyItemAction"/>'>こちら</a></p>
			<p>ログアウトする場合は<a class="link" href='<s:url action="LogoutAction"/>'>こちら</a></p>
		</s:if>

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