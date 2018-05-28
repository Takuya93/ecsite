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
<title>master</title>
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

	<ul class="masterList">
		<li><p><a href='<s:url action="GoItemInventoryAction"/>'>商品個数</a></p></li>
		<li><p><a href='<s:url action="GoItemInsertAction"/>'>商品追加</a></p></li>
		<li><p><a href='<s:url action="GoItemDeleteAction"/>'>商品削除</a></p></li>
		<li><p><a href='<s:url action="InquiryAllDeleteAction"/>'>問い合わせ</a></p></li>
	</ul>



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