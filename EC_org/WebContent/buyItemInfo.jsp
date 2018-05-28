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
<title>BuyItemMoreInfo</title>
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

	</div>
	<div>
		<s:form action="CartAction">
		<div>
			<img src='<s:property value="session.buyItems.itemImage"/>' style="width:200px; height:200px; border-radius:20%">
		</div>
		<div>
			<label>ID:</label>
			<s:property value="session.buyItems.id"/>
		</div>
		<div>
			<label>商品名:</label>
			<s:property value="session.buyItems.itemName"/>
		</div>
		<div>
			<label>値段:</label>
			<s:property value="session.buyItems.itemPrice"/>
		</div>
		<div>
			<label>購入個数:</label>
			<select name="count">
					<option value="1" selected="selected">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
			</select>
		</div>

		<s:submit class="button" value="カートに入れる"/>
	</s:form>
	<s:if test="#session.id !=null">
	<p>ログアウトするには<a class="link" href='<s:url action="LogoutAction" />'>こちら</a></p>
	</s:if>
	</div>
	<div id="top"></div>
</div>
<div id="footer">
	<div id="pr">
		<s:include value="footer.jsp"/>
	</div>
</div>


</div>
</body>
</html>