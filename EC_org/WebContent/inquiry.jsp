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
<title>Inquiry</title>
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
	<div id="inquiry_box">
	<ul class="inquiry">
	<li><h2>お問い合わせ</h2></li>
	<s:form method="post" action="InquiryCompleteAction">
	<li><label for="name">名前:</label><input type="text" name="name" size="20"></li>
	<li><label for="qtype">種類:</label>
	<select name="qtype">
		<option value="company">会社について</option>
		<option value="product">製品について</option>
		<option value="support">アフターサポートについて</option>
	</select></li>

	<li><label for="body">お問い合わせ内容</label></li>
	<s:textarea name="body" size="400"/>
	<li><s:submit value="送信"/></li>
	</s:form>
	</ul>
	</div>

</div>
<div id="footer">
	<div id="pr">
		<s:include value="footer.jsp"/>
	</div>
</div>

</div>
</body>
</html>