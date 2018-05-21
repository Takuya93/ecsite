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
<div class="course">
	<div id="logo">
		<a href='<s:url action="GoHomeAction"/>'>Dog Castle</a>
	</div>

		<ul id="left">
			<li><a class="head" href='<s:url action="BuyItemAction"/>'>商品</a></li>
			<s:if test="#session.login_user_id !=null">
			<li><a class="head" href='<s:url action="LogoutAction"/>'>ログアウト</a></li>
			</s:if>
			<s:else>
			<li><a class="head" href='<s:url action="HomeAction"/>'>ログイン</a></li>
			</s:else>
		</ul>

	<div id="center">
		<form method="post" action="SearchItemAction">
			<div class="serchText">
				<input type="text" value="" class="search" name="serchName"/>
			</div>
			<div class="searchSubmit">
				<span class="submit"><input type="submit" value="検索" class="submit"></span>
			</div>

		</form>
		</div>



		<ul id="right">
			<s:if test="#session.login_user_id !=null">
			<li><a class="head" href='<s:url action="CartCompAction"/>'>カート</a></li>
			</s:if>
			<li><a class="head" href='<s:url action="MyPageAction"/>'>マイページ</a></li>
			<li><a class="head" href='<s:url action="InquiryAction"/>'>問い合わせ</a></li>


		</ul>

</div>
</body>
</html>