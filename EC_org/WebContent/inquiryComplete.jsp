<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoobar" content="no"/>
<meta http-equiv="refresh" content="3;URL=GoHomeAction"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>InquiryComplete</title>
<link rel="stylesheet" type="text/css" href="./style/home.css">
<link rel="stylesheet" type="text/css" href="./style/inquiry.css">
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
	<table>
	<tbody>
	<tr>
	 <th>名前</th>
	 <th>お問い合わせの種類</th>
	 <th>お問い合わせ内容</th>
	</tr>

	<s:iterator value="#session.inquiryDTOList">
	 <tr>

	  <td><s:property value="name"/></td>

	  <s:if test='qtype=="company"'>
	   <td>会社について</td>
	   </s:if>
	   <s:if test='qtype=="product"'>
	    <td>製品について</td>
	    </s:if>

	    <s:if test='qtype=="support"'>
	     <td>アフターサポートについて</td>
	     </s:if>

	     <td><s:property value="body"/></td>
	     </tr>
	     </s:iterator>


</tbody>
</table>

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