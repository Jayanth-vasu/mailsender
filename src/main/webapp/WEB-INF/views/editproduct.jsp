<%@include file="/WEB-INF/views/header.jsp"%>

<style>
.container{
padding-bottom: 25px;
}

</style>
<div class="container" id="wrap">
	
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<c:url var="addAction" value="/update"></c:url>
			<form:form action="${addAction}" method="POST"
				modelAttribute="smartproducts" accept-charset="utf-8" class="form"
				role="form">

				<h1>Add Products</h1>
				<p></p>
				<div class="row">
					<div class="col-xs-6">
						<form:input path="product_id" class="form-control input-lg"
							 />
						<br>

					</div>
					<div class="col-xs-6">
						<form:input path="product_name" class="form-control input-lg"
							placeholder="Product name" />

						<br>
					</div>
				</div>
				<form:input path="product_category" class="form-control input-lg"
					placeholder="Product Category" />

				<br>


				<form:input path="product_description" required="true"
					class="form-control input-lg" placeholder="Product Description" />

				<br>

				<form:input path="product_price" required="true"
					class="form-control input-lg" placeholder="Product price" />


				<br>


				<div class="row">
					<div class="col-xs-6">

						<button class="btn btn-lg btn-success btn-block signup-btn"
							type="submit" value="submit">Update</button>
					</div>


				</div>
			</form:form>
			<br>
			<div class="row">
				<div class="col-xs-6">
					<a href="viewall"><button
							class="btn btn-lg btn-primary btn-block signup-btn">View
							all</button></a>


				</div>
			</div>
		</div>
	</div>
</div>



</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form  modelAttribute="command" enctype="multipart/form-data">
<table>
	
	
	<tr>
		<td align="left">
			<form:label path="product_id">
				<spring:message text="Product id"/>
			</form:label>
				<td>
		<td align="left">
			<form:input path="product_id"  readonly="true"   disabled="true" />
			
		</td> 
	</tr>
	
	<tr><td>
			<form:label path="product_name">
				<spring:message text="Product name"/>
			</form:label>
				<td>
			<form:input path="product_name" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="product_category">
				<spring:message text="Category"/>
			</form:label>
		</td>
		<td>
			<form:input path="product_category" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="product_description">
				<spring:message text="Description"/>
			</form:label>
		</td>
		<td>
			<form:input path="product_description" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="product_price">
				<spring:message text="price"/>
			</form:label>
		</td>
		<td>
			<form:input path="product_price" />
		</td>
	</tr>
	
	<tr>
		<td align="left">
			<form:label path="image">
				<spring:message text="image"/>
			</form:label>
		</td>
		<td align="left">
			<form:input type="file" path="image" />
		</td>
	</tr>
	
	<tr>
		
			<td>
				<input type="submit"
					value="<spring:message text="Add Product"/>" />
			</td>
		
	</tr>
	</table>
	</form:form>
</body>
</html> --%>