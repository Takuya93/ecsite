<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
</head>
<body>

<ul>
	<li><a href='<url action="LoginAction"/>'>ログイン</a></li>
	<li><a href='<url action="MyPageAction"/>'>マイページ</a></li>
	<li><a href='<url action="CartAction"/>'>カート</a></li>
	<li><a href='<url action="BuyItemAction"/>'>商品</a></li>
</ul>



</body>
</html>