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
<title>MyPage</title>
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
	<div id="top"></div>
	
		<p><s:property value="session.loginUser.userName"/>'s MyPage</p>
	
	<div>
		<s:if test="myPageList == null">
			<h3>ご購入情報はありません。</h3>
		</s:if>
		<s:elseif test="message == null">
			<h3>ご購入情報は以下になります。</h3>
			<table border="1px">
			<tr>
				<th>商品名</th>
				<th>値段</th>
				<th>購入個数</th>
				<th>支払い方法</th>
				<th>購入日</th>
			</tr>
			<s:iterator value="myPageList">
				<tr>
					<td><s:property value="itemName"/></td>
					<td><s:property value="totalPrice"/></td>
					<td><s:property value="totalCount"/></td>
					<td><s:property value="payment"/></td>
					<td><s:property value="insert_date"/></td>
				</tr>
			</s:iterator>
			</table>
			<s:form action="PurchaseHistoryAction">
				<input type="hidden" name="deleteFlg" value="1">
				<s:submit class="button" value="削除" method="delete"/>
			</s:form>
		</s:elseif>
		
		<s:if test="message !== null">
			<h3><s:property value="message"/></h3>
		</s:if>
		<br><br><br>

		<div id="text-center">
			<p><a class="link" href='<s:url action="GoHomeAction"/>'>Homeへ戻る場合はこちら</a>
		</div>

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