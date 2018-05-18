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
<title>header</title>
<link rel="stylesheet" type="text/css" href="./style/home.css">
</head>
<body>
	<ul>
		<li><a class="image" href='<s:url action="GoHomeAction"/>'><img src="./image/home.jpg" width="80%" height="80%"></a></li>
		<s:if test="#session.login_user_id !=null">
		<li><a class="head" href='<s:url action="LogoutAction"/>'>ログアウト</a></li>
		</s:if>
		<s:else>
		<li><a class="head" href='<s:url action="HomeAction"/>'>ログイン</a></li>
		</s:else>
		<li><a class="head" href='<s:url action="MyPageAction"/>'>マイページ</a></li>
		<li><a class="head" href='<s:url action="BuyItemAction"/>'>商品</a></li>
		<s:if test="#session.login_user_id !=null">
		<li><a class="head" href='<s:url action="CartCompAction"/>'>カート</a></li>
		</s:if>
	</ul>

</body>
</html>