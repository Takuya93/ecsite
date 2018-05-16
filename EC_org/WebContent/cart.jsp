<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/css"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>cart</title>
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
		<p>cart</p>
	</div>
	<div>
		<s:form action="BuyItemCompleteAction">
			<s:iterator value="session.cartDTOList">
			<div class="cart_item">
				<div>
					<img src='<s:property value="session.buyItems.itemImage"/>' style="width:70px; height:70px;">
				</div>
				<div>
					<span>ID:</span>
					<s:property value="id"/>
				</div>
				<div>
					<span>購入者:</span>
					<s:property value="userId"/>
				</div>
				<div>
					<span>値段:</span>
					<s:property value="itemId"/>
				</div>
				<div>
					<span>購入個数:</span>
					<s:property value="buyCount"/>
				</div>
				<div>
					<span>商品名:</span>
					<s:property value="itemName"/>
				</div>
				</div>
				</s:iterator>
				<s:submit value="購入"/>
		</s:form>
		<br><br><br>
		<div>
			<p><a class="link" href='<s:url action="BuyItemAction"/>'>商品一覧</a></p>
		</div>
	<div id="footer">
		<div id="pr">
			<s:include value="footer.jsp"/>
		</div>
	</div>
	</div>



</div>
</div>
</body>
</html>