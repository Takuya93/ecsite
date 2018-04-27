<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/script"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>Login画面</title>
<style type="text/css">
body{
	margin:0;
	padding:0;
	line-height:1.6;
	letter-spacing:1px;
	font-famly:Verdana,Helvetica,sans-selif;
	font-size:12px;
	color:#333;
	background:#fff;
}
table{
	text-align:center;
	margin:0 auto;
}
#top{
	width:780px;
	margin:30px auto;
	border:1px solid #333;
}
#header{
	width:100%;
	height:80px;
	background-color:black;
}
#main{
	width:100%;
	height:500px;
	text-align:center;
}
#footer{
	width:100%;
	height:80px;
	background-color:black;
	clear:both;
}
#text-link{
	display:inline-block;
	text-align:right;
}
</style>
</head>
<body>


</body>
<div id="header">
	<div id="pr">
	</div>
</div>
<div id="main">
	<div id="top">
		<p>Login</p>
	</div>
	<div>
		<h3>商品を購入する際にはログインをお願いします。</h3>
		<s:form action="LoginAction">
			<s:textfield name="loginUserId"/>
			<s:password name="loginPassword"/>
			<s:submit value="ログイン"/>
		</s:form>
		<br/>
		<div id="text-link">
			<p>新規ユーザー登録は
				<a href='<s:url action="UserCreateAction"/>'>こちら</a></p>
			<p>Homeへ戻る場合は
				<a href='<s:url action="GoHomeActuion"/>'>こちら</a>
		</div>
	</div>
</div>

<div id="footer">
	<div id="pr">
	</div>
</div>
</html>