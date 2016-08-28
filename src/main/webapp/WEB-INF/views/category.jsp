<%@include file="/WEB-INF/views/header.jsp"%>

<style>
.container{
padding-bottom: 25px;
}
.form-control {
width:300px;
}

</style>
<div class="container" id="wrap">
	
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<c:url var="addAction" value="/category/add"></c:url>
			<form:form action="${addAction}" method="POST"
				modelAttribute="category" accept-charset="utf-8" class="form"
				role="form">

				<h1>Add Category</h1>
				<p></p>
				<div class="row">
					<div class="col-xs-12">
						<form:input path="category_id" class="form-control input-md"
							  />
						<br>

					</div>
					</div>
					<div class="row">
					<div class="col-xs-12">
						<form:input path="category_name" class="form-control input-md"
							placeholder="Category name" />

						<br>
					</div>
				</div>
				<%-- <form:input path="product_category" class="form-control input-lg"
					placeholder="Product Category" />

				<br>


				<form:input path="product_description" required="true"
					class="form-control input-lg" placeholder="Product Description" />

				<br>

				<form:input path="product_price" required="true"
					class="form-control input-lg" placeholder="Product price" />


				<br> --%>


				<div class="row">
					<div class="col-xs-6">

						<button class="btn btn-lg btn-success btn-block signup-btn"
							type="submit" value="submit">Add Category</button>
					</div>


				</div>
			</form:form>
			<br>
			<div class="row">
				<div class="col-xs-6">
					<a href="viewallcategory"><button
							class="btn btn-lg btn-primary btn-block signup-btn">View
							all</button></a>


				</div>
			</div>
		</div>
	</div>
</div>



</body>
</html>