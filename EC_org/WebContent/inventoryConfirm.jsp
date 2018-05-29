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
<title>InventoryConfirm</title>
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
	<p>下記の内容を変更してよろしいですか？</p>
	<s:form>
	<ul class="itemList">
		<s:iterator value="buyItemDTOList">
			<s:if test="count != 0">
			
			<li><img style="width:150px; height:150px; border-radius:30%;" src="<s:property value='itemImage'/>" ><br>
					商品名:
					<s:property value="itemName" /><br>

					現在庫数：
					<s:property value="itemStock"/><span>個</span><br>

					追加個数:
					<s:property value="count"/><span>個</span></li><br><br>

					</s:if>
				</s:iterator>
		</ul>
		<table>
			<tr>
				<td><input type="button" class="button" value="戻る" onclick="submitAction('GoItemInventoryAction')" /></td>
				<td><input type="button" class="button" value="完了" onclick="submitAction('ItemInventoryConfirmAction')" /></td>
			</tr>
		</table>
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