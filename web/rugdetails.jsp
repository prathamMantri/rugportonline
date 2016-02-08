<%-- 
    Document   : rugdetails
    Created on : Aug 31, 2015, 10:25:54 PM
    Author     : Prathamesh
--%>
<!DOCTYPE HTML>
<html>
    <head>
        <%@ page import="java.sql.*"%>
        <%@ page import="java.io.*"%>
        <%@ page import="Connection.*"%>
        <title>Rug Information</title>
        <link rel="stylesheet" href="css/example.css" />
        <link rel="stylesheet" href="css/pygments.css" />
        <!-- <link rel="stylesheet" href="css/easyzoom.css" />-->
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- webfonts -->
        <link href='http://fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Rochester' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lora:400,700' rel='stylesheet' type='text/css'>
        <!-- webfonts -->

        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=Edge;chrome=1" />

    </head>
    <body>
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
                    <!--	<div class="rigister-info">
                                    <ul>
                                            <li><a href="#">Login</a></li>
                                            <li><a href="#">SignUp</a></li>
                                            <div class="clearfix"> </div>
                                    </ul>
                            </div>-->
                    <div class="clearfix"> </div>
                </div>
            </div>
            <!-- /top-header -->
            <!-- bottom-header -->
            <div class="bottom-header">
                <div class="container">
                    <div class="bottom-header-left">

                    </div>
                    <div class="logo" he>
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
                    <li class="active"><a href="index.jsp">Home<span> </span></a></li>
                    <li><a href="rugstyles.jsp">Oriental Rug Styles<span> </span></a></li>
                    <li><a href="services.jsp">Oriental Rug Services<span> </span></a></li>
                    <li><a href="about.jsp">About Us<span> </span></a></li> 
                    <li ><a href="contact.jsp">Contact Us<span> </span></a></li>
                    <div class="clearfix"> </div>
                </ul>
            </div>
        </div>
        <!--- top-nav -->
        <div class="details-page">
            <div class="content details-page">
                <!---start-product-details--->
                <div class="product-details">
                    <!-- /script-for-nav -->
                    <!-- Product-Details-page -->
                    <div class="container">
                        <div class="clearfix"> </div>
                        <!----details-product-slider--->
                        <%
                            int rugId = Integer.parseInt(request.getParameter("rugId"));
                            String imagepath = "";
                            sql = "select * from rugimagesizeurl where RugId=" + rugId;
                            if (rugId > 9) {
                                imagepath = "images/Rug" + rugId + "/IMG_00" + rugId + "_1L.JPG";
                            } else {
                                imagepath = "images/Rug" + rugId + "/IMG_000" + rugId + "_1L.JPG";
                            }

                            rs = st.executeQuery(sql);
                        %>  
                        <div class="details-left">
                            <div class="details-left-slider">
                                <section id="example">
                                    <br>
                                    <h2>
                                        Product Image
                                    </h2>
                                    <br>
                                    <div class="easyzoom easyzoom--overlay easyzoom--with-thumbnails">
                                        <a href="<%=imagepath%>">
                                            <img src="<%=imagepath%>" alt="" width="470" height="600" />
                                        </a>
                                    </div>
                                    <br>
                                    <br><br>
                                    <ul class="thumbnails">
                                        <%while (rs.next()) {%>
                                        <li >
                                            <a href="<%=rs.getString("RugImageDetailURL")%>" data-standard="<%=rs.getString("RugImageDetailURL")%>"
                                               >
                                                <img src="<%=rs.getString("RugImageDetailURL")%>" alt="" ondblclick ="window.location = 'rugZoom1.jsp?rugId=<%=rugId%>'" />
                                            </a>
                                        </li>
                                        <%}%>
                                        <li>
                                        <center><a class="p-btn" onclick="window.location = 'rugZoom.jsp?rugId=<%=rugId%>'">Full View</a></center>
                                        </li>
                                    </ul>
                                </section>
                                <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
                                <script src="js/easyzoom.js"></script>
                                <script>
                                            // Instantiate EasyZoom instances
                                            var $easyzoom = $('.easyzoom').easyZoom();

                                            // Setup thumbnails example
                                            var api1 = $easyzoom.filter('.easyzoom--with-thumbnails').data('easyZoom');

                                            $('.thumbnails').on('click', 'a', function (e) {
                                                var $this = $(this);

                                                e.preventDefault();

                                                // Use EasyZoom's `swap` method
                                                api1.swap($this.data('standard'), $this.attr('href'));
                                            });

                                </script>
                            </div>
                            <div class="details-left-info">
                                <div class="details-right-head"><br>
                                    <h2>
                                        Product Description
                                    </h2>
                                    <br>
                                    <%sql = "select RugportNo,"
                                                + "RugId,"
                                                + "upper(RugName),"
                                                + "rugImageURL, "
                                                + "upper(RugQuality), "
                                                + "upper(RugDesign), "
                                                + "upper(RugOrigin), "
                                                + "rugsize, "
                                                + "upper(RugColor), "
                                                + "upper(RugPile), "
                                                + "upper(RugFoundation) "
                                                + "from ruginformation "
                                                + "where RugId=" + rugId;
                                        rs = st.executeQuery(sql);
                                        while (rs.next()) {
                                    %>

                                    <table>
                                        <tr><td>RUG NO</td><td>
                                                <%if (rs.getString("RugportNo") == null) {
                                                        out.print("NA");
                                                    } else {
                                                        out.print(rs.getString("RugportNo"));
                                                    }%></td></tr>
                                        <tr><td>QUALITY</td><td><%if (rs.getString("UPPER(RugQuality)") == null) {
                                                out.print("NA");
                                            } else {
                                                out.print(rs.getString("UPPER(RugQuality)"));
                                                    }%></td></tr>
                                        <tr><td>DESIGN</td><td><%if (rs.getString("UPPER(RugDesign)") == null) {
                                                out.print("NA");
                                            } else {
                                                out.print(rs.getString("UPPER(RugDesign)"));
                                                    }%></td></tr>
                                        <tr><td>ORIGIN</td><td><%if (rs.getString("UPPER(RugOrigin)") == null) {
                                                out.print("NA");
                                            } else {
                                                out.print(rs.getString("UPPER(RugOrigin)"));
                                                    }%></td></tr>
                                        <tr><td>SIZE</td><td><%if (rs.getString("RugSize") == null) {
                                                out.print("NA");
                                            } else {
                                                        out.print(rs.getString("RugSize"));
                                                    }%></td></tr>
                                        <tr><td>COLOR</td><td><%if (rs.getString("UPPER(RugColor)") == null) {
                                                out.print("NA");
                                            } else {
                                                out.print(rs.getString("UPPER(RugColor)"));
                                                    }%></td></tr>
                                        <tr><td>PILE</td><td><%if (rs.getString("UPPER(RugPile)") == null) {
                                                out.print("NA");
                                            } else {
                                                        out.print(rs.getString("UPPER(RugPile)"));
                                                    }%></td></tr>
                                        <tr><td>FOUNDATION</td><td><%if (rs.getString("UPPER(RugFoundation)") == null) {
                                                out.print("NA");
                                            } else {
                                                out.print(rs.getString("UPPER(RugFoundation)"));
                                                    }%></td></tr>

                                    </table>
                                    <%}%>
                                    <ul class="product-share">
                                        <h2>Also Share On</h2>
                                        <ul>
                                            <li><a class="share-face" href="#"><span> </span> </a></li>
                                            <li><a class="share-twitter" href="#"><span> </span> </a></li>
                                            <li><a class="share-google" href="#"><span> </span> </a></li>
                                            <div class="clearfix"> </div>
                                        </ul>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <!--<div class="details-right">
                            
                    </div>-->
                    <div class="clearfix"> </div>
                </div>
                <!---//End-product-details--->
            </div>
        </div>
        <br><br>
        <!-- /Product-Details-page -->
        <!-- footer -->
        <div class="footer">
            <div class="container">
                <div class="footer-grids">

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
                        <ul align = "center">
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
                    <div class="clearfix"> </div>
                    <!-- footer-bottom -->
                </div>
            </div>
        </div>
        <!-- footer -->
        <!-- container -->

        <form action="rugZoom1.jsp?rugId=<%=rugId%>" method="post">
            <input type="text" value="<%=rugId%>" name="rugId" hidden>
            <input type="submit" value="Submit">

        </form>

        <%   con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }%>
    </body>
</html>
