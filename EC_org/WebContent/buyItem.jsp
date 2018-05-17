<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content=Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>ItemList</title>
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
		<p>ItemList</p>
	</div>

	<div>
		<s:iterator value="session.buyItemList">
			<div class="itemList">
				<a class="link" href='<s:url action="BuyItemInfoAction"><s:param name="id" value="id"/></s:url>'>
					<img src="<s:property value='itemImage'/>" style="width:120px; height:120px;"><br>
					<s:property value="itemName"/>
				</a>
			</div>
		</s:iterator>
	</div>
	<div class="itemListfi"></div>

	<p>前画面に戻る場合は<a class="link" href='<s:url action="GoHomeAction"/>'>こちら</a></p>
	<p>マイページは<a class="link" href='<s:url action="MyPageAction"/>'>こちら</a></p>


</div>
<div id="footer">
	<div id="pr">
		<s:include value="footer.jsp"/>
	</div>
</div>
</div>
</body>
</html>