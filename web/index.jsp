<%-- 
    Document   : index
    Created on : Dec 26, 2015, 7:57:51 PM
    Author     : Prathamesh
--%>
<!DOCTYPE HTML>
<html>
    <head>
        <%@ page import="java.sql.*"%>
        <%@ page import="java.io.*"%>
        <%@ page import="Connection.*"%>
        <title>Rugport-Home</title>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <style>
            .sreen-gallery-cursual{
                width:1141px;
                height: 650px;
            }
            .product-pic{
                width: 350px;
                height:500px;}
            </style>
            <!-- webfonts -->
            <link href='http://fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
            <link href='http://fonts.googleapis.com/css?family=Rochester' rel='stylesheet' type='text/css'>
            <link href='http://fonts.googleapis.com/css?family=Lora:400,700' rel='stylesheet' type='text/css'>
            <!-- webfonts -->
        </head>
        <!--<script>
            function newDoc() {
                window.location.assign("http://rugportonline.appspot.com")
            }
        </script>


        <body onload="newDoc()">-->


            <%

                ConnectionPooling cp = new ConnectionPooling();
                Connection con = cp.connect();
                try {
                    Statement st = con.createStatement();
                    ResultSet rs = null;
                    String sql = "";
            %>

            <!-- container -->
            <!-- header -->
            <div class="header">
            <!-- top-header -->
            <div class="top-header">
                <div class="container">
                </div>
            </div>
            <!-- /top-header -->
            <!-- bottom-header -->
            <div class="bottom-header">
                <div class="container">
                    <div class="bottom-header-left">
                        <!---  <p>We sell Concepts not flooring ,<br>Rugs addict </br></p>--->
                    </div>
                    <div class="logo">
                        <a href="index.jsp"><img src="images/logo.png" title="Logo" /></a>
                    </div>
                    <div class="bottom-header-right">
                        <div class="search-cart">
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
                    <li class="active"><a href="index.jsp">Home<span> </span></a></li>
                    <li><a href="rugstyles.jsp">Oriental Rug Styles<span> </span></a></li>
                    <li><a href="services.jsp">Oriental Rug Services<span> </span></a></li>
                    <li><a href="about.jsp">About Us<span> </span></a></li>
                    <li ><a href="contact.jsp">Contact Us<span> </span></a></li>
                    <div class="clearfix"> </div>
                </ul>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $("span.menu").click(function () {
                    $(".top-nav ul").slideToggle(500);
                });
            });
        </script>

        <!-- /script-for-nav -->
        <!-- banner -->
        <div class="banner">
            <div class="container">
                <!--- img-slider --->
                <div class="img-slider">
                    <!----start-slider-script---->
                    <script src="js/responsiveslides.min.js"></script>
                    <script>
// You can also use "$(window).load(function() {"
            $(function () {
                // Slideshow 4
                $("#slider4").responsiveSlides({
                    auto: true,
                    pager: true,
                    nav: true,
                    speed: 500,
                    namespace: "callbacks",
                    before: function () {
                        $('.events').append("<li>before event fired.</li>");
                    },
                    after: function () {
                        $('.events').append("<li>after event fired.</li>");
                    }
                });

            });
                    </script>
                    <!----//End-slider-script---->
                    <!-- Slideshow 4 -->
                    <br>
                    <div  id="top" class="callbacks_container">
                        <ul class="rslides" id="slider4">
                            <li>
                                <img class="img-responsive" src="images/1.jpg" alt="">
                                <div class="slider-caption">
                                    <h1>Beautiful & durable</h1>
                                    <p>Classically simple and beautifully elegant Hard wearing leather shoes and hand-made with heart </p>
                                </div>
                            </li>
                            <li>
                                <img src="images/2.jpg" alt="">
                                <div class="slider-caption">
                                    <h1>Beautiful & durable</h1>
                                    <p>Classically simple and beautifully elegant Hard wearing leather shoes and hand-made with heart </p>
                                </div>
                            </li>
                            <li>
                                <img src="images/3.jpg" alt="">
                                <div class="slider-caption">
                                    <h1>Beautiful & durable</h1>
                                    <p>Classically simple and beautifully elegant Hard wearing leather shoes and hand-made with heart </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <!-- slider -->
            </div>
        </div>
        <!-- banner -->
        <!-- top-grids -->

        <!-- top-grids -->
        <!-- bottom-grids -->
        <br>     
        <div class="bottom-grids">
            <div class="container">
                <div class="col-md-9 bottom-grids-left">
                    <%
                        sql = "select * from ruginformation";
                        int c = 0;
                        st.execute("use rugportdatabase");
                        rs = st.executeQuery(sql);
                        String imageURL = "";
                    %>
                    <div class="f-products">
                        <br>
                        <h2>Featured Products</h2>
                        <!----sreen-gallery-cursual---->
                        <div class="sreen-gallery-cursual">
                            <!-- requried-jsfiles-for owl -->
                            <link href="css/owl.carousel.css" rel="stylesheet">
                            <script src="js/owl.carousel.js"></script>
                            <script>
            $(document).ready(function () {
                $("#owl-demo").owlCarousel({
                    items: 3,
                    lazyLoad: true,
                    autoPlay: true,
                    navigation: true,
                    navigationText: false,
                    pagination: false
                });
            });
                            </script>
                            <div id="owl-demo" class="owl-carousel text-center">
                                <%
                                    while (rs.next()) {
                                        c++;
                                        if (c % 2 == 0) {
                                            imageURL = rs.getString("rugImageURL");
                                %>
                                <div class="item">
                                    <div onclick="location.href = 'rugdetails.jsp?rugId=<%=rs.getString("rugId")%>';" class="product-grid">
                                        <div class="product-pic">
                                            <img src="<%=imageURL%>" title="Rug" />
                                        </div>
                                        <div class="product-pic-info">
                                            <h3><a href="#"><%=rs.getString("rugOrigin")%></a></h3>
                                            <div class="product-pic-info-price-cart">
                                                <!--   <div class="product-pic-info-price">
                                                       <span>$ <%=rs.getString("rugPrice")%></span>
                                                   </div>-->
                                                <div class="product-pic-info-cart">
                                                    <a class="p-btn" href="location.href=rugdetails.jsp?rugId=<%=rs.getString("rugId")%>;">See Details</a>
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%}
                                    }%>               
                            </div>
                            <!--//sreen-gallery-cursual---->
                        </div>
                    </div>
                    <div class="d-products f-products">
                        <br>
                        <h2>Featured Products</h2>
                        <!----sreen-gallery-cursual---->
                        <div class="sreen-gallery-cursual">
                            <!-- requried-jsfiles-for owl -->
                            <script>
                                $(document).ready(function () {
                                    $("#owl-demo1").owlCarousel({
                                        items: 3,
                                        lazyLoad: true,
                                        autoPlay: true,
                                        navigation: true,
                                        navigationText: false,
                                        pagination: false,
                                    });
                                });
                            </script>
                            <!-- //requried-jsfiles-for owl -->
                            <!-- start content_slider -->
                            <div id="owl-demo1" class="owl-carousel text-center">
                                <%
                                    c = 0;
                                    //  imageURL = rs.getString("rugImageURL");
                                    rs.first();
                                    boolean next = rs.next();
                                    while (rs.next()) {
                                        c++;
                                        if (c % 2 != 0) {
                                            imageURL = rs.getString("rugImageURL");
                                %>
                                <div class="item">
                                    <div onclick="location.href = 'rugdetails.jsp?rugId=<%=rs.getString("rugId")%>';" class="product-grid">
                                        <div class="product-pic">
                                            <img src="<%=imageURL%>" title="Rug" />
                                        </div>
                                        <div class="product-pic-info">
                                            <h3><a href="#"><%=rs.getString("rugOrigin")%></a></h3>
                                            <div class="product-pic-info-price-cart">
                                                <!--   <div class="product-pic-info-price">
                                                       <span>$ <%=rs.getString("rugPrice")%></span>
                                                   </div>-->
                                                <div class="product-pic-info-cart">
                                                    <a class="p-btn" href="location.href=rugdetails.jsp?rugId=<%=rs.getString("rugId")%>;">See Details</a>
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%}
                                    }%>
                            </div>
                        </div>
                        <!--//sreen-gallery-cursual---->
                    </div>
                </div>
            </div>
        </div>
        <!-- top-grids--> 
        <!-- top-grids -->
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

        <%   con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }%>
    </body>
</html>