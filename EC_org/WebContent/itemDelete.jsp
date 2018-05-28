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
<title>ItemDelete</title>
<link rel="stylesheet" type="text/css" href="./style/home.css"/>
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
	<p>削除する商品を選択してください。</p>
	
	
		<s:form action="ItemDeleteAction">
		<ul class="itemList">
		<s:iterator value="buyItemDTOList">
				<li><img class="image" style="width:150px; height:150px; border-radius:30%;" src="<s:property value='itemImage'/>" ><br>

				<s:property value="itemName" /><br>

				<span>値段:</span>
				<s:property value="itemPrice" /><span>円</span><br>

				<span>現在の在庫:</span>
				<s:property value="item_stock"/><span>個</span><br>

				<input class="check-box" type="checkbox" name="deleteName" value="<s:property value='itemName'/>"></li>
			
		</s:iterator>
		</ul>
		<tr><td><s:submit class="button" value="商品を削除する"/></td></tr>
		</s:form>
</div>
<div id="top"></div>
<div id="footer">
	<div id="pr">
		<s:include value="footer.jsp"/>
	</div>
</div>

</div>
</body>
</html>