<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SignUp.aspx.vb" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="www.root/CSS/loginStyle.css" rel="stylesheet" />
</head>
<body style ="background-image: url(www.root/images/bg.jpg); background-size:cover ; overflow : hidden">
   
    <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Have an account?</h3>
		      	<form  class="signup-form" runat ="server">
					  <div class="form-group">
		      			<input id="txtUpName" type="text" runat="server" class="form-control" placeholder="Name" required/>
		      		</div>
		      		<div class="form-group">
		      			<input id="txtUpEmail" type="email" runat="server" class="form-control" placeholder="Email" required/>
		      		</div>
	            <div class="form-group">
	              <input id="txtUpPassword" runat="server"  type="password" class="form-control" placeholder="Password" required/>
	              <span toggle="#txtInPassword" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            <div class="form-group">
	            	<button id="btnSignup" runat="server" type="submit" class="form-control btn btn-primary submit px-3">Sign Up</button>
	            </div>
	          
	          </form>
	          <p class="w-100 text-center">&mdash; Or Sign In With &mdash;</p>
	          <div class="social d-flex text-center">
	          	<a href="#" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Facebook</a>
	          	<a href="#" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span> Twitter</a>
	          </div>

						<p class="w-100 text-center">&mdash; Already have an account? Sign In&mdash;</p>
	          <div class="social d-flex text-center">
	          	<a  class="form-control btn btn-primary submit px-3" href="login.aspx" style="padding-top:10px " >Sign In</a>
	          </div>
		      </div>
				</div>
			</div>
		</div>
	</section>
    
    
    <script src="www.root/JS/jquery.min.js"></script>
	<script src="www.root/JS/popper.js"></script>
    <script src="www.root/JS/bootstrap.min.js"></script>
	<script src="www.root/JS/main.js"></script>
	
</body></html>
