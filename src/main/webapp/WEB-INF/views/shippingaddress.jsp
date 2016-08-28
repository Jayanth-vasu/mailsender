 
 <%@include file="/WEB-INF/views/header.jsp"%>
 <style>
#wrap {
	background-image: linear-gradient(to bottom, #FFFFFF 0%, rgba(255, 255, 255, .15)
		100%);
}

legend {
	color: #141823;
	font-size: 25px;
	font-weight: bold;
}

.signup-btn {
	background: #79bc64;
	background-image: -webkit-linear-gradient(top, #79bc64, #578843);
	-webkit-border-radius: 4;
	border-radius: 4px;
	text-shadow: 0px 1px 0px #898a88;
	-webkit-box-shadow: 0px 0px 0px #a4e388;
	box-shadow: 0px 0px 0px #a4e388;
	font-family: Arial;
	color: #ffffff;
	font-size: 15px;
	padding: 10px 20px 10px 20px;
	border: solid #3b6e22 1px;
	text-decoration: none;
}

.signup-btn:hover {
	background: #79bc64;
	background-image: -webkit-linear-gradient(top, #79bc64, #5e7056);
}

.navbar-default .navbar-brand {
	color: #fff;
	font-size: 30px;
	font-weight: bold;
}

.form .form-control {
	margin-bottom: 10px;
}

@media ( min-width :768px) {
	#home {
		margin-top: 10px;
	}
	#home .slogan {
		color: #0e385f;
		line-height: 29px;
		font-weight: bold;
	}
}

.top-buffer {
	margin-top: 100px;
}

body, html {
	height: 100%;
	background-repeat: no-repeat;
	font-family: 'Oxygen', sans-serif;
}

.container {
	padding-bottom: 15px;
}

.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
 <div class="container">
 <div class="row">
 <div class="col-xs-6">
   <img	src="<c:url value="/resources/img/car.gif" />" style="width:100%">
   </div>
    <div class="col-xs-6">
      <form class="form-horizontal" role="form">
        <fieldset>

          <!-- Form Name -->
          <h1>Shipping address</h1>

          <!-- Text input-->
          

          <!-- Text input-->
          <div class="form-group">
         
            <div class="col-sm-10">
              <input type="text" placeholder="Street Name" class="form-control input-lg">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
           
            <div class="col-sm-10">
              <input type="text" placeholder="City" class="form-control input-lg">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
          
           <div class="col-sm-10">
              <input type="text" placeholder="State" class="form-control input-lg">
          </div>
</div>

<div class="form-group">
           
            <div class="col-sm-10">
              <input type="text" placeholder="Post Code" class="form-control input-lg">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
          
            <div class="col-sm-10">
              <input type="text" placeholder="Country" class="form-control input-lg">
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-left">
                
                <button type="submit" class="btn btn-primary">Save</button>
                <button type="submit" class="btn btn-default">Cancel</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div>
    
    
    <!-- /.col-lg-12 -->
</div><!-- /.row -->
</div>