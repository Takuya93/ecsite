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
<title>InquiryDelete</title>
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
	
	<s:if test="#session.inquiryDTOList == null"><br>
	<p>問い合わせはありません。</p>
	</s:if>
	
	<s:elseif test="#session.inquiryDTOList != null"><br>
	<p>問い合わせ内容</p>
	
	<table border="1px">
		<tbody>
			<tr>
	 			<th>名前</th>
	 			<th>メールアドレス</th>
	 			<th>お問い合わせの種類</th>
	 			<th>お問い合わせ内容</th>
			</tr>
			
			<s:iterator value="#session.inquiryDTOList">
	 <tr>
			
				<td><s:property value="name"/></td>
			


				<td><s:property value="mail"/></td>
		

		
				
				<td><s:if test='qtype=="company"'>
				会社について
				</s:if>

				<s:if test='qtype=="product"'>
				商品について
				</s:if>
				
				<s:if test='qtype=="support"'>
				アフターサポートについて
				</s:if></td>
		
				
				<td><s:property value="body"/></td>
			</tr>
	     </s:iterator>
		</tbody>
	</table>
	
	<s:form action="InquiryAllDeleteAction">
		<input type="hidden" name="deleteFlg" value="1">
		<s:submit class="button" value="一覧の削除" method="delete"/>
	</s:form>
	
</s:elseif>
<s:form>
	<input type="button" class="button" value="管理者画面へ戻る" onclick="submitAction('GoMasterAction')">
</s:form>
<s:if test="message != null">
		<div class="push"></div>
		<p class="error-message"><s:property value="message"/></p>
</s:if>
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