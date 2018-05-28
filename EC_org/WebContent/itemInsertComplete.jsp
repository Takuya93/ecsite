<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./style/home.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action', url);
			$('form').submit();
		}
	</script>
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
	
	<p>下記の商品を追加しました。</p>
	<br>
	<s:form>
	商品名:
	<s:property value="session.itemName" /><br>
	値段:
	<s:property value="session.itemPrice" /><span>円</span><br>
	在庫:
	<s:property value="session.itemStock" /><span>個</span><br>
	画像パス:
	<s:property value="session.itemImage" /><br>

<table>
<tr>
	<td><input type="button" class="button" value="さらに追加する" onclick="submitAction('GoItemInsertAction')" /></td>
	<td><input type="button" class="button" value="管理者画面に戻る" onclick="submitAction('GoMasterAction')" /></td>
</tr>
</table>
</s:form>

</div>
<div id="footer">
	<div id="pr">
		<s:include value="footer.jsp"/>
	</div>
</div>


</div>
</body>
</html>