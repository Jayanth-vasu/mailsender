<%@include file="/WEB-INF/views/header.jsp"%>

 <div class="container">
 <div class="row">

 <c:forEach items="${listProducts}" var="pr">
	
	
		<div class="col-xs-3">
			<div class="thumbnail">

				<img src="<c:url value="/resources/img/${pr.image_name}" />"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<h3>${pr.product_name}</h3>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 col-xs-12 price">

							<h3>
								<hr>
								<label>${pr.product_price}</label>
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
							<a href="<c:url value='/view/${pr.product_id}' />" class="btn btn-primary btn-product">
								view</a>
						</div>
						<div class="col-md-6">
							<a href="<c:url value='/addtocart/${pr.product_id}' />" class="btn btn-success btn-product"><span
								class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
						</div>
					</div>


					<p></p>
				</div>
			</div>
		</div>
	
	
		 </c:forEach>
		
		
		 </div>
		 </div>