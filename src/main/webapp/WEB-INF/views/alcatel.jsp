<%@include file="/WEB-INF/views/header.jsp"%>

<div class="container">

	<hr>
	<div class="row">
		<div class="col-xs-12">
			<a><center>
					<img
						src="data:image/jpeg;base64,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">
				</center></a>
				<p></p>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-4">
			<div class="thumbnail">

				<img
					src="http://img6a.flixcart.com/image/smartwatch/y/h/z/sm03-alcatel-200x200-imaejwfzxfpwykas.jpeg"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<h3>Alcatel Go Watch White & Light Grey Smartwatch (White Strap)</h3>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 col-xs-12 price">

							<h3>
								<hr>
								<label>Rs. 5,999</label>
							</h3>
							<hr>
						</div>
					</div>
					<p>
					<ul>
						<li>1.22 inch LCD</li>
						<li>Android 4.3+, iOS 7+</li>
						<li>Bluetooth Support</li>
						<li>Accelerometer</li>
					</ul>
					</p>


					<div class="row">
						<div class="col-md-6">
							<a href="sportwatch" class="btn btn-primary btn-product">
								view</a>
						</div>
						<div class="col-md-6">
							<a href="#" class="btn btn-success btn-product"><span
								class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
						</div>
					</div>


					<p></p>
				</div>
			</div>
		</div>
		<div class="col-xs-4">
			<div class="thumbnail">

				<img
					src="http://img6a.flixcart.com/image/smartwatch/2/c/n/sm03-alcatel-200x200-imaejwfzargazwqn.jpeg"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<h3>Alcatel Go Watch Black & Dark Red Smartwatch   (Black Strap)</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-xs-12 price">
							<hr>
							<h3>
								<label>Rs. 5,999</label>
							</h3>
							<hr>
						</div>
					</div>

					<p>
					<ul>
						<li>1.22 inch LCD</li>
						<li>Android 4.3+, iOS 7+</li>
						<li>Bluetooth Support</li>
						<li>Accelerometer</li>
					</ul>
					</p>
					<div class="row">
						<div class="col-md-6">
							<a class="btn btn-primary btn-product"> view</a>
						</div>
						<div class="col-md-6">
							<a href="#" class="btn btn-success btn-product"><span
								class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
						</div>
					</div>
					<p></p>
				</div>
			</div>
		</div>
		</div>
		</div>
<%@include file="/WEB-INF/views/footer.jsp"%>