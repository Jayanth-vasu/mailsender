<%@include file="/WEB-INF/views/header.jsp"%>
 <style>
 .btn-label {
	position: relative;
	left: -12px;
	display: inline-block;
	padding: 6px 12px;
	background: rgba(0, 0, 0, 0.15);
	border-radius: 3px 0 0 3px;
}

.btn-labeled {
	padding-top: 0;
	padding-bottom: 0;
}

.btn {
	margin-bottom: 10px;
}
 
 
 </style>
 
 <div class="container">
 <div class="row">
		<div class="col-xs-12">
			<a><center>
					<img
						src="https://img1a.flixcart.com/www/email/images/20160505-130640-moto360newlogo.jpg">
				</center></a>
				<p></p>
		</div>
	</div>
 </div>
 <div class="container">
 <div class="row">
<c:if test="${empty pageContext.request.userPrincipal.name}"> 
 <c:forEach items="${brand}" var="br">
	
	
		<div class="col-xs-4">
			<div class="thumbnail">

				<img src="<c:url value="/resources/img/${br.image_name}" />"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<h3>${br.product_name}</h3>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 col-xs-12 price">

							<h3>
								<hr>
								<label>${br.product_price}</label>
							</h3>
							<hr>
						</div>
					</div>
					<p>
					<ul>
						<li>Built-in GPS</li>
						<li>MultiApp Compatibility</li>
						<li>Music Storage</li>
						<li>Any Light Display</li>
					</ul>
					</p>


					<div class="row">
						<div class="col-md-6">
							<a href="<c:url value='/view/${br.product_id}' />" class="btn btn-primary btn-product">
								view</a>
						</div>
						<div class="col-md-6">
							<a href="<c:url value='/addtocart/${br.product_id}' />" class="btn btn-success btn-product"><span
								class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
						</div>
					</div>


					<p></p>
				</div>
			</div>
		</div>
	
	
		 </c:forEach>
		
		 </c:if>
		 </div>
		 </div>
		 
		 <div class="container">
 <div class="row">
 <sec:authorize access="hasRole('ROLE_USER')">
 <c:forEach items="${brand}" var="br">
	
	
		<div class="col-xs-4">
			<div class="thumbnail">

				<img src="<c:url value="/resources/img/${br.image_name}" />"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<h3>${br.product_name}</h3>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 col-xs-12 price">

							<h3>
								<hr>
								<label>${br.product_price}</label>
							</h3>
							<hr>
						</div>
					</div>
					<p>
					<ul>
						<li>Built-in GPS</li>
						<li>MultiApp Compatibility</li>
						<li>Music Storage</li>
						<li>Any Light Display</li>
					</ul>
					</p>


					<div class="row">
						<div class="col-md-6">
							<a href="<c:url value='/view/${br.product_id}' />" class="btn btn-primary btn-product">
								view</a>
						</div>
						
				
						<div class="col-md-6">
							<a href="<c:url value='/addtocart/${br.product_id}' />" class="btn btn-success btn-product"><span
								class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
						</div>
					
					</div>


					<p></p>
				</div>
			</div>
		</div>
	
	
		 </c:forEach>
		
		</sec:authorize>
		 </div>
		 </div>
		 
		 
		 
		 
		 <div class="container">
 <div class="row">
		 <sec:authorize access="hasRole('ROLE_ADMIN')">
 <c:forEach items="${brand}" var="br">
	
		<div class="col-xs-4">
			<div class="thumbnail">

				<img src="<c:url value="/resources/img/${br.image_name}" />"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<h3>${br.product_name}</h3>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 col-xs-12 price">

							<h3>
								<hr>
								<label>${br.product_price}</label>
							</h3>
							<hr>
						</div>
					</div>
					<p>
					<ul>
						<li>Built-in GPS</li>
						<li>MultiApp Compatibility</li>
						<li>Music Storage</li>
						<li>Any Light Display</li>
					</ul>
					</p>


					<div class="row">
						<div class="col-md-6">
							<a href="<c:url value='/edit/${br.product_id}' />"><button type="button" class="btn btn-labeled btn-success">
											<span class="btn-label"><i
												class="glyphicon glyphicon-pencil"></i></span>Edit Product
										</button>
									</a>
						</div>
						<div class="col-md-6">
							<a href="<c:url value='/remove/${br.product_id}' />"><button type="button" class="btn btn-labeled btn-danger">
											<span class="btn-label"><i
												class="glyphicon glyphicon-remove"></i></span>Delete Product
										</button></a>
						</div>
					</div>


					<p></p>
				</div>
			</div>
		</div>
		
	
	
		 </c:forEach>
			  </sec:authorize>
		 </div>
		 </div>
	