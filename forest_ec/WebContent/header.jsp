<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		#navSearch {
			width: 100%;
			height: 30px;
		}
	</style>
</head>
<body>
	<div id="navSearch">
	<s:if test="#session.login_user_id != null">
 		<form method="post" action="SearchItemAction">
	 		<div class="selectCategory">
	 			 <select name="category" class="selectBox">
	 				<option value="0" selected="selected">全てのカテゴリー</option>
	 				<option value="1">本</option>
	 				<option value="2">家電・パソコン</option>
	 			</select>
	 		</div>
	 		<div class="searchText">
	 			<input type="text" value="" class="search" name="searchName" />
	 		</div>
	 		<div class="searchSubmit">
	 			<input type="submit" value="検索" class="submit">
	 		</div>
 		</form>
 	</s:if>
 	</div>
</body>
</html>