<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/script"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>

<title>404ERROR</title>

<link rel="stylesheet" type="text/css" href="./style/Home.css">
</head>

<body>
<div id ="header">
	<ul>
		<li><a href='<s:url action="GoHomeAction"/>'>ホーム</a></li>
		<li><a href=itemList.jsp>商品</a></li>
		<li><a href='<s:url action="MyPageAction"/>'>マイページ</a></li>
		<li><a href='<s:url action="LogoutAction"/>'>ログアウト</a></li>
	</ul>
</div>
<div id="main">
<div id ="top">
	<p>ERROR</p>
</div>
<div id ="text-center">
	<h1>お探しのページが見つかりません</h1>
		<p>ホーム画面は
			<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
	</div>
</div>
<div id="footer">
	<a href='<s:url action="LogoutAction"/>'>ログアウト</a>
</div>


</body>
</html>