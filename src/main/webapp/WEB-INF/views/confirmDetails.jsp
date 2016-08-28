<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Details</title>
</head>

<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br />
			<br />
			<form:form modelAttribute="userDetails">
				<form:label path="user_firstname">User first name:</form:label>${userDetails.user_firstname}
					<br />
				<br />
				<form:label path="user_lastname">User last name:</form:label>${userDetails.user_lastname}
					<br />
				<br />
				<form:label path="mail_id">Email :</form:label>${userDetails.mail_id}
					<br />
					<br />
				<form:label path="mobile_number">Mobile number :</form:label>${userDetails.mobile_number}
					<br />
					<br />
				<form:label path="password">Password :</form:label>${userDetails.password}
					<br />
				<br />
				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</form:form>
		</fieldset>
	</div>
</body>

</html>