<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagitoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>ItemList画面</title>
<link rel="stylesheet" type="text/css" href="./style/ListStyle.css">
</head>
<body>

<div id="header">
	<div id="pr">
	</div>
</div>
<div id="main">
	<div id="top">
		<p>ItemList</p>
	</div>
	<div id="products">
		<ul>
			<li><img src="./image/notebook.jpg" width="170px" height="170px"></li>
			<li>商品名:ノートBOOK</li>
			<li>価格:100円</li>
			<li><a href='<s:url action="HomeAction"/>'>商品詳細</a></li>
		</ul>
	</div>
	<div id="products">
		<ul>
			<li><img src="./image/pen.jpg" width="170px" height="170px"></li>
			<li>商品名:pen</li>
			<li>価格:300円</li>
			<li><a href='<s:url action="HomeAction"/>'>商品詳細</a></li>
		</ul>
	</div>
		<div id="products">
		<ul>
			<li><img src="./image/haburasi.jpg" width="170px" height="170px"></li>
			<li>商品名:歯ブラシ</li>
			<li>価格:250円</li>
			<li><a href='<s:url action="HomeAction"/>'>商品詳細</a></li>
		</ul>
	</div>
</div>
<div id="footer">
	<div id="pr">
	</div>
</div>
</body>
</html>