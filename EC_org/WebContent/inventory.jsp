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
<title>Inventory</title>
<link rel="stylesheet" type="text/css" href="./style/home.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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

<p>変更したい商品を選択してください</p><br>

<table>
		<s:form>
		<ul class="itemList">
		<s:iterator value="buyItemDTOList">
	
				<li><img class="image" style="width:150px; height:150px; border-radius:30%;" src="<s:property value='itemImage'/>" ><br>
				<s:property value="itemName" /><br>
				<span>値段:</span>
				<s:property value="itemPrice" /><span>円</span><br>
				<span>在庫:</span>
				<s:property value="itemStock"/><span>個</span><br>

				<span>変更する数:</span>


				<script>
					document.write("<select name='count'>");
					document.write("<option value='0' selected='selected'>-</option>");
					for(i=1; i<11 ;i++){
						document.write("<option value='");
						document.write(i);
						document.write("'>");
						document.write(i);
						document.write("</option>");
					};

					document.write("</select>");
				</script></li>
		</s:iterator>
		</ul>
		<tr>
				<td>
				<input type="button" class="button" value="在庫数の変更" onclick="submitAction('ItemInventoryAction')" /></td>
			</tr>

		</s:form>
		</table>
	
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