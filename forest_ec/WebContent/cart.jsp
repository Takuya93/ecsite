<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta charset="utf-8">
	<title>Cart画面</title>
	<style type="text/css">

		/* ========TAG LAYOUT======== */
		body {
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Verdana, Helvetica, sans-serif;
		   font-size:12px;
		   color:#333;
		   background:#fff;
		}

		table {
			text-align:center;
			margin:0 auto;
		}

		/* ========ID LAYOUT======== */
		#top {
		   width:780px;
		   margin:30px auto;
		   border:1px solid #333;
		}

		#header {
		   width: 100%;
		   height: 80px;
		   background-color: black;
		}

		#main {
		   width: 100%;
		   height: 500px;
		   text-align: center;
		}

		#footer {
			width: 100%;
			height: 80px;
			background-color: black;
			clear:both;
		}

		#text-link {
			display: inline-block;
			text-align: right;
		}

		.cart_item {
			width: 100px;
			height: 180px;
			float: left;
		}
	</style>
</head>
<body>
	<div id="header">
	 	<div id="pr">
	 		<s:include value="header.jsp"></s:include>
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>Login</p>
		</div>
			<s:form action="BuyItemCompleteAction">
				<s:iterator value="session.cartDTOList">
				<div class="cart_item">
					<div>
						<span>ID:</span>
						<s:property value="id"/>
					</div>
					<div>
						<span>購入者:</span>
						<s:property value="userId"/>
					</div>
					<div>
						<span>商品番号:</span>
						<s:property value="itemId"/>
					</div>
					<div>
						<span>値段:</span>
						<s:property value="totalPrice" />
					</div>
					<div>
						<span>購入数:</span>
						<s:property value="buyCount"/>
					</div>
					<div>
						<span>商品名:</span>
						<s:property value="itemName" />
					</div>
				</div>
				</s:iterator>
				<s:submit value="購入"></s:submit>
			</s:form>
			<div>
				<p>商品は<a href='<s:url action="BuyItemAction" />'>こちら</a></p>
			</div>
	</div>
	<div id="footer">
	 	<div id="pr">
		</div>
	</div>
</body>
</html>