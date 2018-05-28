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
<link rel="shortcut icon" href="./image/fabicon.ico" type="image/vnd.microsoft.icon">
</head>
<body>
<div class="course">
	<div id="logo">
	<s:if test="#session.masterId !=null">
		<a href='<s:url action="GoMasterAction"/>'>Dog Castle</a>
	</s:if>
	<s:else>
		<a href='<s:url action="GoHomeAction"/>'>Dog Castle</a>
	</s:else>
	</div>

		<ul id="left">
			<s:if test="#session.masterId !=null">
			<li><a class="head" href='<s:url action="GoItemInventoryAction"/>'>商品変更</a></li>
			<li><a class="head" href='<s:url action="GoItemInsertAction"/>'>商品追加</a></li>
			</s:if>
			<s:else>
			<li><a class="head" href='<s:url action="BuyItemAction"/>'>商品</a></li>
			<s:if test="#session.login_user_id !=null">
			<li><a class="head" href='<s:url action="LogoutAction"/>'>ログアウト</a></li>
			</s:if>
			<s:else>
			<li><a class="head" href='<s:url action="HomeAction"/>'>ログイン</a></li>
			</s:else>
			</s:else>
		</ul>

	<div id="center">
		<s:if test="#session.masterId != null">
		<a href='<s:url action="LogoutAction"/>'>ログアウト</a>
		</s:if>
		<s:else>
		<form method="post" action="SearchItemAction" class="headerForm">
				<input type="text" value="" class="search" name="searchName"/>
				<input type="submit" value="検索" class="button">
		</form>
		</s:else>
		</div>



		<ul id="right">
			<s:if test="#session.masterId !=null">
			<li><a class="head" href='<s:url action="GoItemDeleteAction"/>'>商品削除</a></li>
			<li><a class="head" href='<s:url action="InquiryAllDeleteAction"/>'>問い合わせ確認</a></li>
			</s:if>
			<s:else>
			<s:if test="#session.login_user_id !=null">
			<li><a class="head" href='<s:url action="CartCompAction"/>'>カート</a></li>
			</s:if>
			<li><a class="head" href='<s:url action="GoMyPageAction"/>'>マイページ</a></li>
			<li><a class="head" href='<s:url action="InquiryAction"/>'>問い合わせ</a></li>
			</s:else>


		</ul>

</div>
</body>
</html>