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

<script>

function myFunction() {
    var pass1 = document.getElementById("pass1").value;
    var pass2 = document.getElementById("pass2").value;
    var status = "success";
    if (pass1 != pass2) {
        //alert("Passwords Do not match");
        document.getElementById("pass1").style.borderColor = "#E34234";
        document.getElementById("pass2").style.borderColor = "#E34234";
        status = "failure";
        alert("Passwords does not Match!!!");
    }
    
    return status;
}

</script>

<div class="container" id="wrap">

	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			
			<form:form modelAttribute="userDetails" accept-charset="utf-8" onsubmit="return myFunction()"  method="post"
				class="form" role="form">
				
				<h1>Sign Up</h1>
				<p></p>
				<div class="row">
					<div class="col-xs-6">
						<form:input path="user_firstname" pattern="[a-zA-Z]{3,30}"
							required="true" class="form-control input-lg"
							placeholder="First Name" />
						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('user_firstname')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>
						<br />
					</div>
					<div class="col-xs-6">
						<form:input path="user_lastname" pattern="[a-zA-Z]{3,30}"
							required="true" class="form-control input-lg"
							placeholder="Last Name" />
						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('user_lastname')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>
						<br />
					</div>
				</div>
				<form:input path="mail_id"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="true"
					class="form-control input-lg" placeholder="Your Email" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mail_id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />


				<form:input path="mobile_number" pattern="[9|7|8][0-9]{9}"
					required="true" class="form-control input-lg"
					placeholder="Your Mobile Number" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mobile_number')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />



				<form:password id="pass1" path="password" required="true"
					class="form-control input-lg" placeholder="Password" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />


				<form:password id="pass2" path="confirm_password" required="true"
					class="form-control input-lg" placeholder="Confirm Password" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('confirm_password')}"
					var="err">
					<div>
						<span>alert(${err.text})</span>
					</div>
				</c:forEach>
				<br />



				<div class="row">
					<div class="col-xs-4">

						<button class="btn btn-lg btn-primary btn-block signup-btn"
							name="_eventId_submit" type="submit" value="submit">Create
							my account</button>


					</div>
				</div>
			</form:form>

		</div>
	</div>
</div>
<%@include file="/WEB-INF/views/footer.jsp"%>