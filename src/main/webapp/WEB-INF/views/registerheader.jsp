<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JV Smartwatches</title>
<meta name="viewport" content="width= device-width,initial-scale= 1.0">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<!-- Website Font style -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
</head>
<body>
<style>
.navbar-brand {
	height: 5px;
	padding: 05px 10px;
}

.navbar-right {
	float: right !important;
	margin-right: 10px;
}

body, html {
	height: 100%;
	background-repeat: no-repeat;
	
	font-family: 'Oxygen', sans-serif;
}



</style>
	<nav class="navbar navbar-inverse navbar-fixed-top">


	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#myNavbar">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<p></p>
		<p></p>
		<a class="navbar-brand" href="#">JV Smartwatches</a>
	</div>
	<div class="collapse navbar-collapse" id="myNavbar">
		<ul class="nav navbar-nav navbar-left">
			<li><a href="index">HOME</a></li>
			<li><a href="#services">ABOUT</a></li>
			<li><a href="#portfolio">CONTACT US</a></li>

		</ul>
	
	</div>


	</nav>
	<c:if test= "${!empty name}">
		<ul class="nav navbar-nav navbar-right">
			<li><a href="memberShip.obj"><span
					class="glyphicon glyphicon-user"></span> Welcome "${name}"</a></li>
			</ul>
		
		</c:if>
		
		
		<c:if test="${empty name}">
		<ul class="nav navbar-nav navbar-right">
			<li><a href="memberShip.obj"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>
					Login</a></li>
					<li><a href="product"><span class="glyphicon glyphicon-log-in"></span>
					Product</a></li>
		</ul>
		</c:if>
		
	</div>


	</nav>

	<div class="container">
		<div class="row top-buffer">

			<div class="col-xs-2">
				<a><img
					src="<c:url value="/resources/img/jv1.jpg" />"></a>
			</div>


			<div class="col-xs-10">
				<a><img
					src="<c:url value="/resources/img/samsumgposter.png" />"
					style="width: 100%"></a>
			</div>
		</div>
		<hr>
	</div>
