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

<h1><center>Category List</center></h1>

	<form:form modelAttribute="category" >
		<c:if test="${!empty listCategory}">
			
				<div class="row">
					<div class="col-xs-12">
						<div class="panel-heading"></div>
					</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered table-list">
						<thead>
							<tr>

								<th class="hidden-xs">Category ID</th>
								<th>Category Name</th>
								
								<th><em class="fa fa-cog"></em></th>
							</tr>
						</thead>

						<c:forEach items="${listCategory}" var="pd">
							<tbody>
								<tr>
                                   
									<td class="hidden-xs">${pd.category_id}</td>
									<td>${pd.category_name}</td>
									<%-- <td>${pd.product_category}</td>
									<td>${pd.product_description}</td>
									<td>${pd.product_price}</td> --%>
									<td align="justify"><a class="btn btn-primary"
										href="<c:url value='/edit/category/${pd.category_id}' />"><em
											class="fa fa-pencil"></em></a> <a class="btn btn-danger"
										href="<c:url value='/remove/${pd.category_id}' />"><em
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