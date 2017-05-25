<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Samuhik Vivah , Free group wedding in Kushinagar(U.P)</title>
<meta name="description" content="Samuhik Vivah free wedding foundation for poor family arrange free wedding services in Kushinagar (U.P) Gath Bandhan Samuhik Shadi,Samuhik Vivah in Kushinagar (U.P), free group marriage  in Kushinagar (U.P)">
<meta name="keywords" content="Gath Bandhan Samuhik Vivah, free Group wedding,free wedding services in Kushinagar (U.P), Samuhik Shadi,Samuhik Vivah in Kushinagar (U.P), free group marriages  in Kushinagar (U.P)">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="author" content="Samuhik Vivah">
<meta name="Copyright" content="Samhuik Vivah">
<meta name="robots" content="index, follow">
<meta name="Robots" content="index, all">
<meta name="YahooSeeker" content="index, follow">
<meta name="Slurp" content="noydir">
<meta name="msnbot" content="index, follow">
<meta name="googlebot" content="index, follow">
<meta name="allow-search" content="yes">
<meta name="revisit-after" content="4 days">
<meta name="Rating" content="General">
<meta http-equiv="Content-Language" content="en">
<meta name="mssmarttagspreventparsing" content="true">
<meta name="document-type" content="public">
<meta name="distribution" content="global">
<meta name="Generator" content="notePad">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta charset="UTF-8">

<!-- Favicons -->
<link rel="shortcut icon" href="resources/css/icon.png">
<link type="text/css" rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="resources/css/common.css" />
</head>
<html>
<head>
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
</head>
<body onload='document.loginForm.username.focus();'>

	<div id="login-box">

		<h2>Admin Login</h2>

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form name='loginForm'
		  action="<c:url value='/login' />" method='POST'>

		  <table>
			<tr>
				<td>User:</td>
				<td><input type='text' name='username' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit"
					value="submit" /></td>
			</tr>
			<tr>
				<td colspan='2'><a href="/logout">Back To Home</a></td>
			</tr>

		  </table>

		  <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />

		</form>
	</div>

</body>
</html>