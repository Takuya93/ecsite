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
	</div>
	<div>
		<s:form action="BuyItemCompleteAction">
		<table border="1">
			<s:iterator value="session.cartDTOList">
			<tr>
				<td><span>商品名:</span><s:property value="itemName"/></td>
				<td><span>値段:</span><s:property value="itemPrice"/></td>
				<td><span>購入個数:</span><s:property value="buyCount"/></td>
			</tr>
			</s:iterator>
				</table>
			<div id="text-center">

			<span>合計金額:</span><s:property value="session.totalPriceAll"/>
			
			<div style="text-center">
				<span style="display:inline;float:left;">
					<input type="hidden" name="deleteFlg" value="1">
					<s:submit class="button" name="deleteFlg" value="削除"/>
				</span>
				<span style="display:inline;float:left;">
					<s:submit class="button" value="購入"/>
				</span>
			</div>
			</div>
		</s:form>

		<br><br><br>
		<div>
			<p><a class="link" href='<s:url action="BuyItemAction"/>'>商品一覧</a></p>
		</div>
</div>
<div id="top"></div>
	<div id="footer">
		<div id="pr">
			<s:include value="footer.jsp"/>
		</div>
	</div>
	</div>
</div>
</body>
</html>