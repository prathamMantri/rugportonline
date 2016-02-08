<%-- 
    Document   : about
    Created on : Sep 2, 2015, 12:55:47 AM
    Author     : Prathamesh
--%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>About Us</title>
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
					<div class="rigister-info">
						<!--<ul>
							<li><a href="#">Login</a></li>
							<li><a href="#">SignUp</a></li>
							<div class="clearfix"> </div>
						</ul>-->
					</div>
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
						<a href="index.jsp"><img src="images/logo.png" title="gaia" /></a>
					</div>
					<div class="bottom-header-right">
						<!--<ul>
							<li><a href="#">My Account</a></li>
							<li><a href="#">Wishlist</a></li>
							<li><a href="#">Checkout</a></li>
						</ul>-->
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
                    <li class="active"><a href="about.jsp">About Us<span> </span></a></li> <!--ye dono ke naam .jsp me kardo sabji jagah1-->
                    <li ><a href="contact.jsp">Contact Us<span> </span></a></li>
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
		<!-- About -->
		<div class="about">
				<!----- header-section ---->
				<div class="header-section">
					<div class="container">
						<h1>About Us</h1>
					</div>
				</div>
				<!---- aboutgrids ----->
				<!--<div class="about-grids">
					<div class="container">
						<div class="about-left-grids">
							<h2>This is main heading H2</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque elit turpis, dictum nec auctor at, semper nec lectus. Aenean vitae cursus neque. Suspendisse at aliquet tortor. Donec eget laoreet lectus, ac sollicitudin diam. Nunc orci urna, sagittis vel semper in,</p>
							<h3>This is main heading H3</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque elit turpis, dictum nec auctor at, semper nec lectus. Aenean vitae cursus neque. Suspendisse at aliquet tortor. Donec eget laoreet lectus, ac sollicitudin diam. Nunc orci urna, sagittis vel semper in,</p>
							<h4>This is main heading H4</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque elit turpis, dictum nec auctor at, semper nec lectus. Aenean vitae cursus neque. Suspendisse at aliquet tortor. Donec eget laoreet lectus, ac sollicitudin diam. Nunc orci urna, sagittis vel semper in, vehicula ut metus. Proin sit amet enim at velit tincidunt luctus in eget nibh. Quisque tempor scelerisque convallis. Vivamus in accumsan dolor. Phasellus bibendum lorem a pretium molestie. Sed non tincidunt nibh.</p>
							<ul class="unorder-list">
								<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
								<li> Quisque elit turpis, dictum nec auctor at, semper nec lectus. Aenean vitae cursus neque. </li>
								<li> Suspendisse at aliquet tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
							</ul>
							<ol class="order-list">
								<li>1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
								<li>2. Quisque elit turpis, dictum nec auctor at, semper nec lectus. Aenean vitae cursus neque. </li>
								<li>3. Suspendisse at aliquet tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
							</ol>
							<p>n venenatis libero et risus viverra congue. Sed lacinia aliquet nisi ut tristique. <a href="#">Suspendisse</a> potenti. Fusce vulputate lectus ac nibh ullamcorper, at commodo nisi rhoncus. Curabitur sollicitudin purus sit amet lorem iaculis hendrerit. Phasellus purus justo, consectetur eu enim id, <a href="#">consectetur</a> lacinia ipsum. Fusce pharetra mi nunc, ac sollicitudin nibh varius vel. Mauris eu accumsan turpis, eu dictum augue. Quisque ante nisi, aliquam vitae condimentum ac, venenatis mollis elit. Duis faucibus orci justo, id <a href="#">feugiat ipsum </a>euismod id. Suspendisse non elementum ligula, vel volutpat elit.</p>
						</div>
						<div class="about-right-grids">
							<img src="images/slide1.jpg" title="name">
							<!----- latest-news ----->
							<!--<div class="latest-news">
								<h2>Latest-News</h2>
								<div class="latest-news-grids">
									<div class="latest-news-grid">
										<h3><a href="#">Lorem ipsum dolor sit amet, consectetur</a></h3>
										<span>01. 17 .14</span>
										<p> Quisque elit turpis, dictum nec auctor at, semper nec lectus. Aenean vitae cursus neque</p>
									</div>
									<div class="latest-news-grid">
										<h3><a href="#">Lorem ipsum dolor sit amet, consectetur</a></h3>
										<span>01. 17 .14</span>
										<p> Quisque elit turpis, dictum nec auctor at, semper nec lectus. Aenean vitae cursus neque</p>
									</div>
								</div>
							</div>-->
							<!----- latest-news ----->
						<!--</div>
						<div class="clearfix"> </div>
					</div>
				</div>-->
				<!---- aboutgrids ----->
                               <div class="about-grids">
					<div class="container">
						<!--<div class="about-left-grids">-->
                                                <img src="images/2.jpg" alt="">
							 <h2>What We Deliver</h2>
                                                        <p><font color = "#606060" font size = 3px;>    	
                                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Come to Rugport and browse our 20 million dollar selection of fine Oriental rugs! Open since 1979, we specialize in new and antique rugs, masterpieces from India, China, Persia, Turkey, Pakistan, and the Caucasus regions. If you need a rare pattern, size, or color rug, we will put you on our "Wish List" as we travel the world buying rugs.Good things are worth waiting for, and whether you need a 1x3 foot or a 20 x 30 foot rug, we can help you find it.
                                                        </font></p>
							
                                                        <p><font color = "#606060"font size = 3px;>
                                                         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; For the ultimate in personalized floor coverings, Rugport offers a custom hand knotted rug program. Express your home's individuality by choosing your own designs, colors, and size. Surprisingly affordable, rug knotters from overseas create the rug to your own specifications in just a few months.</font></p>
                                                       
                                                        <p><font color = "#606060"font size = 3px;>
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;When your rugs need some TLC, call Rugport. We offer free delivery and pickup for either cleaning or repairs. Beginning with an assessment of the item's age, style, origin, condition, and type of dye, we give your rugs a gentle cleaning by hand on both sides. After a thorough rinsing of a cleanser with no residue, your rugs are air dried.
                                                        <font color = "#606060"font size = 3px;></p> 
							

                                                        <p><font color = "#606060"font size = 3px;>
                                                       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Wear usually shows first on the ends and sides of the rug. Our skilled workers will invisibly reweave tears and holes in fine wool or silk rugs.End raveling can be stopped by overcast stitching or rewrapping. Unsightly fringes can be replaced for a fresh new look. 
                                                        <font color = "#606060"font size = 3px;></p> 
                                                        
                                                         <p><font color = "#606060"font size = 3px;>
                                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Best of all, no sale is ever final at Rugport. If a rug purchased from us no longer suits your needs, we can accept it as a trade in on another rug purchase.
                                                        <font color = "#606060"font size = 3px;></p>
                                                         
                                                          <p><font color = "#606060"font size = 3px;>
                                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  We are proud of the fact that we are now serving our third generation of clients. Visit us at 23 South Northwest Highway Palatine, IL 
                                                        <font color = "#606060"font size = 3px;></p>
                                                          
                                                          <p><font color = "#606060"font size = 3px;>
                                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; You will be glad you did!
                                                        <font color = "#606060"font size = 3px;></p>
						<!--</div>-->
						<!--<div class="about-right-grids">
							<img src="images/slide1.jpg" title="name">
							<!----- latest-news 
							<div class="latest-news">
								<h2>Latest-News</h2>
								<div class="latest-news-grids">
									<div class="latest-news-grid">
										<h3><a href="#">Lorem ipsum dolor sit amet, consectetur</a></h3>
										<span>01. 17 .14</span>
										<p> Quisque elit turpis, dictum nec auctor at, semper nec lectus. Aenean vitae cursus neque</p>
									</div>
									<div class="latest-news-grid">
										<h3><a href="#">Lorem ipsum dolor sit amet, consectetur</a></h3>
										<span>01. 17 .14</span>
										<p> Quisque elit turpis, dictum nec auctor at, semper nec lectus. Aenean vitae cursus neque</p>
									</div>
								</div>
							</div>
							<!----- latest-news 
						</div>-->
						
					</div>
				</div> 
                                
                                
                                
                                
                                
                                
                                
				<!----- header-section ---->
			</div>
		<!-- About -->
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


