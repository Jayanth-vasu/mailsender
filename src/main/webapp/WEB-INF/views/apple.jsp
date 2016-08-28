<%@include file="/WEB-INF/views/header.jsp"%>


<div class="container">

	<hr>
	<div class="row">
		<div class="col-xs-12">
			<a><center>
					<img
						src=data:image/png;base64,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>
				</center></a>
				<p></p>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-4">
			<div class="thumbnail">

				<img
					src="http://img6a.flixcart.com/image/smartwatch/g/m/g/mlc72hn-a-apple-200x200-imaect6cfh29fevy.jpeg"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<h3>Apple Watch Sport 42 mm Gold Aluminium Case</h3>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 col-xs-12 price">

							<h3>
								<hr>
								<label>Rs. 30,400</label>
							</h3>
							<hr>
						</div>
					</div>
					<p>
					<ul>
						<li>1.5 inch</li>
						<li>Bluetooth Support</li>
						<li>Notifier</li>
						<li>Digital Crown Heart</li>
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
					src="http://img6a.flixcart.com/image/smartwatch/j/b/u/mj3n2hn-a-apple-200x200-imaed4yjfg2fqhfe.jpeg"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<h3>Apple Watch Sport 42 mm Silver Aluminium Case</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-xs-12 price">
							<hr>
							<h3>
								<label>Rs. 32,000</label>
							</h3>
							<hr>
						</div>
					</div>

					<p>
					<ul>
						<li>1.5 inch</li>
						<li>Bluetooth Support</li>
						<li>Notifier</li>
						<li>Digital Crown Heart</li>
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
					src="http://img6a.flixcart.com/image/smartwatch/z/t/h/mj3t2hn-a-apple-200x200-imaect6cuvgzbhxt.jpeg"
					class="img-responsive"></a>
				<div class="caption">
					<div class="row">
						<div class="col-xs-12">
							<h3>Apple Watch Sport 42 mm Space Grey Aluminium Case </h3>
						</div>
						<div class="col-xs-12 price">

							<hr>
							<h3>
								<label>Rs. 30,400</label>
							</h3>
							<hr>
						</div>
					</div>
					<p>
					<ul>
						<li>1.5 inch</li>
						<li>Bluetooth Support</li>
						<li>Notifier</li>
						<li>Digital Crown Heart</li>
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
	
	<div class="row">
		<div class="col-xs-12">
		<div class="col-xs-4">
			<div class="thumbnail">

				<img
					src="http://img6a.flixcart.com/image/smartwatch/z/f/t/mj2x2hn-a-apple-200x200-imaekszm8gjnvrep.jpeg"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<h3>Apple Watch Sport 38 mm Space Grey Aluminium Case </h3>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-xs-12 price">
							<hr>
							<h3>
								<label>Rs. 19,999</label>
							</h3>
							<hr>
						</div>
					</div>

					<p>
					<ul>
						<li>Android & iOS</li>
						<li>Heart Rate Monitor</li>
						<li>Wireless Charging</li>
						<li>Voice Control & Wifi</li>
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

				<img
					src="http://img5a.flixcart.com/image/smartwatch/d/6/h/mlcg2hn-a-apple-200x200-imaect6cusfmwut2.jpeg"
					class="img-responsive">
				<div class="caption">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<h3>Apple Watch Sport 38 mm Silver Aluminium Case </h3>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-xs-12 price">
							<hr>
							<h3>
								<label>Rs. 29,987</label>
							</h3>
							<hr>
						</div>
					</div>

					<p>
					<ul>
						<li>1.37 inch LCD</li>
						<li>Bluetooth Support</li>
						<li>Notifier</li>
						<li>Voice Control & Wifi</li>
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
</div>

<%@include file="/WEB-INF/views/footer.jsp"%>