<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html; charset=UTF-8" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta http-equiv="refresh" content="3;URL=GoHomeAction"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>500ERROR</title>
<link rel="stylesheet" type="text/css" href=".style/home.css">
</head>
<body>
<div id="header">
	<div id="pr">
		<s:include value="header.jsp"/>
	</div>
</div>

<div id="main">
	<div id="text_center">
		<h2>エラーが発生しました！</h2>
		<p>ホーム画面は<a href="home.jsp">こちら</a></p>

	</div>
</div>

<div id="footer">
	<div id="pr">
		<s:include value="footer.jsp"/>
	</div>
</div>

</body>
</html>