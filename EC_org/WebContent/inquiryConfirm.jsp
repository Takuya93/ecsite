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
<title>InquiryConfirm</title>
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
	<p>登録内容は以下で間違いないですか。</p>
	
	<table>
		<s:form action="InquiryCompleteAction">
		<tr>
			<td><span>名前:</span></td>
				<td><s:property value="name"/></td>
			</tr>

			<tr>
				<td><span>メールアドレス:</span></td>
				<td><s:property value="mail"/></td>
			</tr>

			<tr>
				<td><span>問い合わせの種類:</span></td>
				<td><s:if test='qtype=="company"'>
				会社について
				</s:if>

				<s:if test='qtype=="product"'>
				商品について
				</s:if>
				
				<s:if test='qtype=="support"'>
				アフターサポートについて
				</s:if></td>
			</tr>
			<tr>
				<td><span>問い合わせ内容:</span></td>
				<td><s:property value="body"/></td>
			</tr>
			<tr>
				<td><input type="button" class="button" value="戻る" onclick="submitAction('InquiryAction')" /></td>
				<td>
				<input type="hidden" name="master_id"/>
				<input type="button" class="button" value="完了" onclick="submitAction('InquiryCompleteAction')" />
				</td>
			</tr>
			</s:form>
	
	</table>


</div>


</div>
</body>
</html>