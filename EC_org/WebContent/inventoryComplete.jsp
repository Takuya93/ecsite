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
<meta http-equiv="refresh" content="3;URL=GoMasterAction"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>InventoryComplete</title>
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
	<p>下記の内容を変更しました。</p>
	<s:form>
	<ul class="itemList">
	<s:iterator value="buyItemDTOList">
	<li><img class="image" style="width:150px; height:150px; border-radius:30%;" src="<s:property value='ItemImage'/>" ><br>

			商品名:
			<s:property value="itemName" /><br>
			追加個数:
			<s:property value="count"/><span>個</span><br>
			在庫:
			<s:property value="total_count" /><span>個</span><br></li>
	</s:iterator>
	</ul>
	
	<input type="button" class="button" value="管理者画面に戻る" onclick="submitAction('GoMasterAction')"/> 
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