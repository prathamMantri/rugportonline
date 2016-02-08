<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
    <head>
        <%@ page import="java.sql.*"%>
        <%@ page import="java.io.*"%>
        <%@ page import="Connection.*"%>
        <title>Styles</title>
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
        <%
            ConnectionPooling cp = new ConnectionPooling();
            Connection con = cp.connect();
            try {
                Statement st = con.createStatement();
                ResultSet rs = null;
                String sql = "";
                String category[];
                category = new String[]{"Contemporary", "Traditional", "Formal", "Flat Weaves", "Antique & MasterPiece", "Special Sizes", "Modern", "Transitional", "Tribal", "New"};


        %>
        <!-- container -->
        <!-- header -->
        <div class="header">
            <!-- top-header -->
            <div class="top-header">
                <div class="container">
                    <div class="rigister-info">

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
                        <a href="index.jsp"><img src="images/logo.png" title="Logo" /></a>
                    </div>
                    <div class="bottom-header-right">
                        <!--<ul>
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">Wishlist</a></li>
                                <li><a href="#">Checkout</a></li>
                        </ul>-->
                        <div class="search-cart">
                            <div class="search-box">
                                <!--<form>
                                        <input type="text" value="Search..." />
                                        <input type="submit" value="" />
                                </form>-->
                            </div>
                            <div class="cart-box">
                                <!--<select>
                                        <option> 02 Items</option>
                                        <option> 03 Items</option>
                                        <option> 04 Items</option>
                                </select>-->
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
                    <li  class="active"><a href="rugstyles.jsp">Oriental Rug Styles<span> </span></a></li>
                    <!--<li><a href="404.jsp">New Arrivals<span> </span></a></li>-->
                    <li><a href="services.jsp">Oriental Rug Services<span> </span></a></li><!-- Yaha Naya PAge banega-->
                    <!--- <li><a href="404.html">Accessories<span> </span></a></li>---><!-- ye hat jaenga-->
                    <li><a href="about.jsp">About Us<span> </span></a></li> <!--ye dono ke naam .jsp me kardo sabji jagah1-->
                    <li ><a href="contact.jsp">Contact Us<span> </span></a></li>
                    <div class="clearfix"> </div>
                </ul>
            </div>
        </div>
        <!--- top-nav -->
        <!-- script-for-nav -->
        <script>
            $(document).ready(function () {
                $("span.menu").click(function () {
                    $(".top-nav ul").slideToggle(500);
                });
            });
        </script>
        <!-- /script-for-nav -->
        <!-- bottom-grids -->
        <div class="top-grids">
            <div class="container">
                <div class="col-md-4 top-grid text-center">
                    <div class="top-grid-pic">
                        <span>Contemporary</span>
                        <img src="images/Rug17/IMG_0017_1.JPG" title="RugImage" />
                    </div>
                    <div class="top-grid-pic-info">
                        <a href="collection.jsp?category=Contemporary&&categoryid=1">See all</a>
                    </div>
                </div>
                <div class="col-md-4 top-grid text-center">
                    <div class="top-grid-pic">
                        <span>Traditional</span>
                        <img src="images/Rug21/IMG_0021_1.JPG" title="RugImage" />
                    </div>
                    <div class="top-grid-pic-info">
                        <a href="collection.jsp?category=Traditional&&categoryid=2">See all</a>
                    </div>
                </div>
                <div class="col-md-4 top-grid text-center">
                    <div class="top-grid-pic">
                        <span>Formal</span>
                        <img src="images/Rug2/IMG_0002_1.JPG" title="RugImage" />
                    </div>
                    <div class="top-grid-pic-info">
                        <a href="collection.jsp?category=Formal&&categoryid=3">See all</a>
                    </div>
                </div>
                <div class="col-md-4 top-grid text-center">
                    <div class="top-grid-pic">
                        <span>Flat Weaves</span>
                        <img src="images/Rug4/IMG_0004_1.JPG" title="RugImage" />
                    </div>
                    <div class="top-grid-pic-info">
                        <a href="collection.jsp?category=Flat Weaves&&categoryid=4">See all</a>
                    </div>
                </div>
                <div class="col-md-4 top-grid text-center">
                    <div class="top-grid-pic">
                        <span>Antique and MasterPiece</span>
                        <img src="images/Rug3/IMG_0003_1.JPG" title="RugImage" />
                    </div>
                    <div class="top-grid-pic-info">
                        <a href="collection.jsp?category=Antique and MasterPiece&&categoryid=5">See all</a>
                    </div>
                </div>
                <div class="col-md-4 top-grid text-center">
                    <div class="top-grid-pic">
                        <span>Special Sizes</span>
                        <img src="images/Rug8/IMG_0008_1.JPG" title="RugImage" />
                    </div>
                    <div class="top-grid-pic-info">
                        <a href="collection.jsp?category=Special Sizes&&categoryid=6">See all</a>
                    </div>
                </div>
                <div class="col-md-4 top-grid text-center">
                    <div class="top-grid-pic">
                        <span>Modern</span>
                        <img src="images/Rug18/IMG_0018_1.JPG" title="RugImage" />
                    </div>
                    <div class="top-grid-pic-info">
                        <a href="collection.jsp?category=Modern&&categoryid=7">See all</a>
                    </div>
                </div>
                <div class="col-md-4 top-grid text-center">
                    <div class="top-grid-pic">
                        <span>Transitional</span>
                        <img src="images/Rug25/IMG_0025_1.JPG" title="RugImage" />
                    </div>
                    <div class="top-grid-pic-info">
                        <a href="collection.jsp?category=Transitional&&categoryid=8">See all</a>
                    </div>
                </div>
                <div class="col-md-4 top-grid text-center">
                    <div class="top-grid-pic">
                        <span>Tribal</span>
                        <img src="images/Rug26/IMG_0026_1.JPG" title="RugImage" />
                    </div>
                    <div class="top-grid-pic-info">
                        <a href="collection.jsp?category=Tribal&&categoryid=9">See all</a>
                    </div>
                </div>
                <div class="col-md-4 top-grid text-center">
                    <div class="top-grid-pic">
                        <span>New</span>
                        <img src="images/Rug30/IMG_0030_1.JPG" title="RugImage" />
                    </div>
                    <div class="top-grid-pic-info">
                        <a href="collection.jsp?category=New&&categoryid=10">See all</a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- bottom-grids -->
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
                            <li class="active"><a href="rugstyles.jsp">Oriental Rug Styles</a></li>
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
                </div>
            </div>
        </div>
        <!-- footer -->
        <!-- container -->
        <%   con.close();
            } catch (Exception e) {
                e.printStackTrace();
                    }%>
    </body>
</html>

