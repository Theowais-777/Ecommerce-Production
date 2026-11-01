
<html>
<style> 

.newsletter form .newsletter-btn {
  width: 160px;
  height: 40px;
  font-weight: 700;
  background: #00B4DB;   
 background: linear-gradient(to bottom, #2b3031, #20292b);
  color: #FFF;
  border: none;
  border-radius: 0px 40px 40px 0px;
}

      </style> 
<body>	  

        <div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
					
						<div class="newsletter">
							<p style="color:silver;">Sign Up for the <strong>OFFER UPDATES</strong></p>
							<form method="POST" action="offersmail.php">
								<input class="input" type="email" id="email" name="email" placeholder="Enter Your Email">
								<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
							</form>
							<div class="" id="offer_msg">
                                <!--Alert from signup form-->
                            </div>
							<ul  class="newsletter-follow">
								<li>
									<a  href="#"><i class="fa fa-facebook"style="color:blue;"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter" style="color:blue;"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-instagram"style="color:blue;"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-pinterest"style="color:blue;"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		</body>
		</html>