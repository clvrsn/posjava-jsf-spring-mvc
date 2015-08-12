<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title></title>
<link href="<c:url value="/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/css/style.css" />" rel="stylesheet"
	type="text/css" />

</head>
<c:set var="lb_email">
	<fmt:message key="lb_email" />
</c:set>
<c:set var="lb_password">
	<fmt:message key="lb_password" />
</c:set>
<c:set var="email_login_invalid">
	<fmt:message key="lb_password" />
</c:set>

<c:set var="action">
	<c:url value='/cmd/login.do'/>
</c:set>


<body>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<c:url value="/" />"><img
					src="<c:url value="/img/logo.png" />" /></a>
			</div>
		</div>
	</nav>
	<div class="container">

		<c:if test="${not empty msg}">
			<div class="alert alert-${msg_type}" role="alert">${msg}</div>
		</c:if>
		<c:if test="${not empty param.error}">
			<div class="alert alert-warning" role="alert">
				<c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
			</div>
		</c:if>

		<form:form id="form" action="${action}" method="POST">

			<c:if test="${not empty param.out}">
				<div>You've logged out successfully.</div>
			</c:if>
			<c:if test="${not empty param.time}">
				<div>You've been logged out due to inactivity.</div>
			</c:if>

			Username:<br> <input type="text" name="username" value="" /><br>
			<br> Password:<br> <input type="password" name="password"
				value="" /> <input value="Login" name="submit" type="submit" />
		</form:form>



	</div>
	<!-- /container -->
</body>
</html>