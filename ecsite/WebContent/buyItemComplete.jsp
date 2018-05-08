<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page errorPage="./error/404.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/Script"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>BuyItemComplete画面</title>
<link rel="stylesheet" type="text/css" href="./style/Home.css">

</head>
<body>

<div id="header">
	<div id="pr">
	</div>
</div>
<div id="main">
	<div id="top">
		<p>BuyItemComplete</p>
	</div>
	<div>
		<p>購入手続きが完了いたしました。</p>
		<div>
		<a href='<s:url action="MyPageAction"/>'>マイページ</a><span>から購入履歴の確認が可能です。</span>
			<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>

		</div>
	</div>
</div>

<div id="footer">
	<div id="pr">
	</div>
</div>
</body>
</html>