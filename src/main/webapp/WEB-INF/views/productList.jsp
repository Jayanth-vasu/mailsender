<%@include file="/WEB-INF/views/header.jsp"%>


	<style>
.panel-table .panel-body {
	padding: 0;
}

.panel-table .panel-body .table-bordered {
	border-style: none;
	margin: 0;
}

.panel-table .panel-body .table-bordered>thead>tr>th:first-of-type {
	text-align: center;
	width: 100px;
}

.panel-table .panel-body .table-bordered>thead>tr>th:last-of-type,
	.panel-table .panel-body .table-bordered>tbody>tr>td:last-of-type {
	border-right: 0px;
}

.panel-table .panel-body .table-bordered>thead>tr>th:first-of-type,
	.panel-table .panel-body .table-bordered>tbody>tr>td:first-of-type {
	border-left: 0px;
}

.panel-table .panel-body .table-bordered>tbody>tr:first-of-type>td {
	border-bottom: 0px;
}

.panel-table .panel-body .table-bordered>thead>tr:first-of-type>th {
	border-top: 0px;
}
</style>

<div class="container">

<div class="row ">
<div class="col-xs-12">

<h1><center>Product List</center></h1>

	<form:form modelAttribute="smartproducts" enctype="multipart/form-data">
		<c:if test="${!empty listProducts}">
			
				<div class="row">
					<div class="col-xs-12">
						<div class="panel-heading"></div>
					</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered table-list">
						<thead>
							<tr>

								<th class="hidden-xs">Product ID</th>
								<th>Product image</th>
								<th>Product Name</th>
								<th>Category ID</th>
								<th>Description</th>
								<th>Price</th>
								<th><em class="fa fa-cog"></em></th>
							</tr>
						</thead>

						<c:forEach items="${listProducts}" var="pd">
							<tbody>
								<tr>
                                   
									<td class="hidden-xs">${pd.product_id}</td>
									<td><img src="<c:url value="/resources/img/${pd.image_name}" />">
									<td>${pd.product_name}</td>
									<td>${pd.product_category}</td>
									<td>${pd.product_description}</td>
									<td>${pd.product_price}</td>
									<td align="justify"><a class="btn btn-primary"
										href="<c:url value='/edit/${pd.product_id}' />"><em
											class="fa fa-pencil"></em></a> <a class="btn btn-danger"
										href="<c:url value='/remove/${pd.product_id}' />"><em
											class="fa fa-trash"></em></a></td>
								</tr>
							</tbody>
						</c:forEach>
					</table>

				</div>
		
		</c:if>

	</form:form>
	</div>
	</div>
	</div>
	
</body>
</html>