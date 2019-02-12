<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>宛先情報入力確認</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="contents">
	<h1>宛先情報入力確認画面</h1>
	<s:form action="CreateDestinationCompleteAction">
	<table class="vertical-list-table">
	<tr>
		<th scope="row"><s:label value="姓"/></th>
		<td><s:property value="familyName"/><s:hidden name="familyName" value="%{familyName}"/></td>
	</tr>

	<tr>
		<th scope="row"><s:label value="名"/></th>
		<td><s:property value="firstName"/><s:hidden name="firstName" value="%{firstName}"/></td>
	</tr>

	<tr>
		<th scope="row"><s:label value="姓ふりがな"/></th>
		<td><s:property value="familyNameKana"/><s:hidden name="familyNameKana" value="%{familyNameKana}"/></td>

	</tr>

	<tr>
		<th scope="row"><s:label value="名ふりがな"/></th>
		<td><s:property value="firstNameKana"/><s:hidden name="firstNameKana" value="%{firstNameKana}"/></td>
	</tr>

	<tr>
		<th scope="row"><s:label value="性別"/></th>
		<td><s:property value="sex"/><s:hidden name="sex" value="%{sex}"/></td>
	</tr>

	<tr>
		<th scope="row"><s:label value="住所"/></th>
		<td><s:property value="userAddress"/><s:hidden name="userAddress" value="%{userAddress}"/></td>
	</tr>

	<tr>
		<th scope="row"><s:label value="電話番号"/></th>
		<td><s:property value="telNumber"/><s:hidden name="telNumber" value="%{telNumber}"/></td>
	</tr>

	<tr>
		<th scope="row"><s:label value="メールアドレス"/></th>
		<td><s:property value="email"/><s:hidden name="email" value="%{email}"/></td>
	</tr>
	</table>
	<div class="submit_btn_box">
		<div id=".contents-btn-set">
			<s:submit value="登録" class="submit_btn" />
		</div>
	</div>
	</s:form>
	<s:form action="CreateDestinationAction">
		<s:submit value="戻る" class="submit_btn"/>
		<s:hidden name="familyName" value="%{familyName}" />
		<s:hidden name="firstName" value="%{firstName}" />
		<s:hidden name="familyNameKana" value="%{familyNameKana}" />
		<s:hidden name="firstNameKana" value="%{firstNameKana}" />
		<s:hidden name="sex" value="%{sex}" />
		<s:hidden name="userAddress" value="%{userAddress}" />
		<s:hidden name="telNumber" value="%{telNumber}" />
		<s:hidden name="email" value="%{email}" />
	</s:form>
</div>
<s:include value="footer.jsp"/>
</body>
</html>