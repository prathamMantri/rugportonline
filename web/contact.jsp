<%-- 
    Document   : contact
    Created on : Sep 2, 2015, 12:45:40 AM
    Author     : Prathamesh
--%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Contact Us</title>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		 <meta name="viewport" content="width=device-width, initial-scale=1">
		 <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
   		 <!-- webfonts -->
   		 <link href='http://fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
   		 <link href='http://fonts.googleapis.com/css?family=Rochester' rel='stylesheet' type='text/css'>
   		 <link href='http://fonts.googleapis.com/css?family=Lora:400,700' rel='stylesheet' type='text/css'>
   		  <!-- webfonts -->
	</head>
	<body>
		<!-- container -->
		<!-- header -->
		<div class="header">
			<!-- top-header -->
			<div class="top-header">
				<div class="container">
					<div class="clearfix"> </div>
				</div>
			</div>
			<!-- /top-header -->
			<!-- bottom-header -->
			<div class="bottom-header">
				<div class="container">
					<div class="bottom-header-left">
					
					</div>
					<div class="logo">
						<a href="index.jsp"><img src="images/logo.png" title="Logo" /></a>
					</div>
					<div class="bottom-header-right">
						<div class="search-cart">
							<div class="search-box">
								
							</div>
							<div class="cart-box">
								
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			</div>
			<!-- /bottom-header -->
		</div>
		<!-- header -->
		<!--- top-nav -->
		<div class="top-nav">
			<div class="container">
				<span class="menu"> </span>
				<ul>
                     <li><a href="index.jsp">Home<span> </span></a></li>
                    <li><a href="rugstyles.jsp">Oriental Rug Styles<span> </span></a></li>
                    <!--<li><a href="404.jsp">New Arrivals<span> </span></a></li>-->
                    <li><a href="services.jsp">Oriental Rug Services<span> </span></a></li><!-- Yaha Naya PAge banega-->
                   <!--- <li><a href="404.html">Accessories<span> </span></a></li>---><!-- ye hat jaenga-->
                    <li><a href="about.jsp">About Us<span> </span></a></li> <!--ye dono ke naam .jsp me kardo sabji jagah1-->
                    <li class="active"><a href="contact.jsp">Contact Us<span> </span></a></li>
                    <div class="clearfix"> </div>
                </ul>
			</div>
		</div>
		<!--- top-nav -->
		<!-- script-for-nav -->
		<script>
			$(document).ready(function(){
				$("span.menu").click(function(){
					$(".top-nav ul").slideToggle(500);
				});
			});
		</script>
		<!-- /script-for-nav -->
		<!-- Contact -->
		<div class="Contact">
				<!----- header-section ---->
				<div class="header-section">
					<div class="container">
						<h1>Contact us</h1>
					</div>
				</div>
				<!----- header-section ---->
				<!----- hosting-grids ----->
				<div class="contact-grids">
					<div class="container">
						<div class="contact-map">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2959.9056758348574!2d-88.033731!3d42.109490900000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc5c5e48746455551!2sRugport+Oriental+Rugs!5e0!3m2!1sen!2sus!4v1441175483428" width="600" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
                                                </div>
						<div class="contact-bottom-grids">
							<div class="contact-bottom-grid-left">
								<h3>Contact info</h3>
								<p>You can always <br>
                                                                Reach Us On : (888)-RUGPORT or +1-847-202-0600<br>
                                                                Mail Us At : rugportinfo@aol.com</p><br>
                                                                <p>Do Stop By To See Thousands of Rugs at <br>
                                                                23 S Northwest Highway<br>
                                                                Palatine IL 60067 </p><br>
                                                                <p>The Store Hours are<br>
                                                                    Monday - Friday : 10AM - 8PM<br>
                                                                    Saturday : 10AM - 6PM<br>
                                                                    Sunday : 12PM -5PM
                                                                </p>
                                                                
							</div>
							<div class="contact-bottom-grid-right">
								<h3>Catch me</h3>
								<form>
									<div class="text">
										<div class="text-fild">
											<span>Name:</span>
											<input type="text" class="text" value="Your Name here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Name here';}">
										</div>
										<div class="text-fild">
											<span>Email:</span>
											<input type="text" class="text" value="Your Email here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Email here';}">
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="msg-fild">
											<span>Subject:</span>
											<input type="text" class="text" value="Your Subject here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Subject here';}">
									</div>
									<div class="message-fild">
											<span>Message:</span>
											<textarea> </textarea>
									</div>
									<input type="submit" value="Send">
								</form>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<!----- hosting-grids ----->
			</div>
		<!-- /Contact -->
		 <!-- footer -->
       <div class="footer">
            <div class="container">
                <div class="footer-grids">
                    <!--<div class="col-md-3 footer-grid">
                            <h3>Information</h3>
                            <ul>
                                    <li><a href="about.html">About Us</a></li>
                                    <li><a href="#">Return</a></li>
                                    <li><a href="#">Delivery Information</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Terms & Conditions</a></li>
                            </ul>
                    </div>-->
                    <div class="col-md-3 footer-grid">
                        <h3 align="center">Social Media</h3>
                         <div class="social-icons text-center">
					<ul>
                                            <li><a href="#"><span class="facebook"> </span></a></li><br>
                                                <li><a href="#"><span class="twitter"> </span></a></li><br>
                                                <li><a href="#"><span class="gpluse"> </span></a></li><br>
						<li><a href="#"><span class="pin"> </span></a></li>
						
					</ul>
				</div>
                    </div>
                    <div class="col-md-3 footer-grid testmonial">
                        <h3 align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Testimonials</h3>
                        <div class="testmonial-grid">
                            <p>I have purchased many rugs from Rugport and they are all beautiful.  They have a huge selection of styles and colors, so that you can basically find anything that you need to make your home gorgeous.
I have also, had them do repairs and clean my existing rugs and they are very prompt and professional.  They will bring the rugs to you and you can try them out in your home before purchasing them.  They are extremely accommodating and knowledgeable and a pleasure to work with.</p>
							<a href="#">-Cheri Sagehorn<span></span></a>
                        </div>
                        <div class="clearfix"> </div>
                        <div class="testmonial-grid">
                            <p>Very large selection and no pressure sales. Oriental, persian, traditional and modern - the best selection of any rug dealer in northern Illinois. I highly recommend visiting Rugport before you visit any other rug store.
                                                            I purchased two rugs but will definitely be going back after viewing the competition.</p>
							<a href="#">-Craig Janas<span><span></span></a>
                        </div>
                        
                    </div>
                    <div class="col-md-3 footer-grid testmonial">
                    
                        <br><br>
                       <!-- <div class="testmonial-grid">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                            <a href="#">John Smith,<span>Occupation</span></a>
                        </div>-->
                        <div class="clearfix"> </div>
                       <!-- <div class="testmonial-grid">
                            <p>In reprehenderit in voluptate velit esse cillum.</p>
                            <a href="#">John Smith,<span>Occupation</span></a>
                        </div>-->
                        
                    </div>
                    	<div class="col-md-3 footer-grid about-grid">
                                    <h3 align="center">Quick Links</h3>
						<ul align = " center">
							<li><a href="index.jsp">Home</a></li>
							<li><a href="rugstyles.jsp">Oriental Rug Styles</a></li>
							<li><a href="services.jsp">Oriental Rug Services</a></li>
							<li><a href="about.jsp">About Us</a></li>
							<li><a href="contact.jsp">Contact Us</a></li>
						</ul>
                            </div>
                    <div class="clearfix"> </div>
                </div>
				<!-- social-icons -->
				<!-- footer-bottom -->
				<div class="footer-bottom">
					<div class="footer-bottom-left">
						  <p class="right"> Rugport &copy; 2015 | Website designed by <a href="https://www.linkedin.com/in/prathammantri" rel="nofollow">Prathamesh Mantri</a> and <a href="https://in.linkedin.com/in/anshu-sikchi-3809a565" rel="nofollow">Anshu Sikchi</a></p>
					</div>
					<!--<div class="footer-bottom-right">
						<ul>
							<li><span class="visa"> </span></li>
							<li><span class="master"> </span></li>
							<li><span class="paypla"> </span></li>
							<li><span class="ami"> </span></li>
						</ul>
					</div>-->
					<div class="clearfix"> </div>
					<!-- footer-bottom -->
				</div>
			</div>
		</div>
		<!-- footer -->
		<!-- container -->
	</body>
</html>