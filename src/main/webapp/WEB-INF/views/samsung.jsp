<%@include file="/WEB-INF/views/header.jsp"%>

<div class="container">

	<hr>
	<div class="row">
		<div class="col-xs-12">
			<a><center>
					<img
						src="data:image/png;base64,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">
				</center></a>
				<p></p>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-4">
			<div class="thumbnail">

				<img
					src="http://img6a.flixcart.com/image/smartwatch/2/y/h/sm-r7200zkainu-samsung-200x200-imaef6h5ntznvc4b.jpeg"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<h3>SAMSUNG Gear S2 Dark Grey Smartwatch (Grey Strap)</h3>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 col-xs-12 price">

							<h3>
								<hr>
								<label>Rs. 22,400</label>
							</h3>
							<hr>
						</div>
					</div>
					<p>
					<ul>
						<li>1.2 inch Super AMOLED</li>
						<li>Bluetooth Support</li>
						<li>Notifier</li>
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
					src="http://img6a.flixcart.com/image/smartwatch/z/e/h/sm-r7320wdainu-samsung-200x200-imaeh28gycxywmst.jpeg"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<h3>SAMSUNG Gear S2 Classic Platinum Smartwatch (Black Strap)</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-xs-12 price">
							<hr>
							<h3>
								<label>Rs. 31,900</label>
							</h3>
							<hr>
						</div>
					</div>

					<p>
					<ul>
						<li>1.2 inch Super AMOLED</li>
						<li>Bluetooth Support</li>
						<li>Notifier</li>
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

		<div class="col-xs-4">
			<div class="thumbnail">

				<a href=''><img
					src="http://img5a.flixcart.com/image/smartwatch/t/p/y/sm-r7320zdainu-samsung-200x200-imaeh28gt6ggatbc.jpeg"
					class="img-responsive"></a>
				<div class="caption">
					<div class="row">
						<div class="col-xs-12">
							<h3>SAMSUNG Gear S2 Classic Rose Gold Smartwatch (White Strap)</h3>
						</div>
						<div class="col-xs-12 price">

							<hr>
							<h3>
								<label>Rs. 34,500</label>
							</h3>
							<hr>
						</div>
					</div>
					<p>
					<ul>
						<li>1.2 inch Super AMOLED</li>
						<li>Bluetooth Support</li>
						<li>Notifier</li>
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
	<%@include file="/WEB-INF/views/footer.jsp"%>