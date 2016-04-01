<%-- 
    Document   : test
    Created on : Mar 17, 2016, 8:47:41 PM
    Author     : Prathamesh
--%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
            <link rel="stylesheet" href="css/styleForCategory.css"> <!-- Resource style -->
            <script src="js/modernizr.js"></script> <!-- Modernizr -->     
        </head>
        <script>
            //  function newDoc() {
            //     window.location.assign("http://rugportonline.appspot.com")
            //     }
        </script>
        <body > 
            <%
                ConnectionPooling cp = new ConnectionPooling();
                Connection con = cp.connect();
                try {
                    Statement st = con.createStatement();
                    Statement stCategoryId = con.createStatement();
                    ResultSet rs = null;
                    ResultSet rsCategory = null;
                    
                    String sql = "";
                    String sqlCategory = "";
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
        <br>
        <script>
            $(document).ready(function () {
                $("span.menu").click(function () {
                    $(".top-nav ul").slideToggle(500);
                });
            });
        </script>
        <header class="cd-header">
            <h1>Filter Your Rugs!</h1>
        </header>
        <%
            sqlCategory = "select * from rugcategories where rugCategoryStatus=0";
            rsCategory = st.executeQuery(sqlCategory);
            String rugCategoryName = "";
            int rugCategoryId;
            Map<Integer, String> rugCategoryMap = new HashMap();
            while (rsCategory.next()) {
                rugCategoryMap.put(rsCategory.getInt("rugCategoryId"), rsCategory.getString("rugCategoryName"));
            }
        %>
        <main class="cd-main-content">
            <div class="cd-tab-filter-wrapper">
                <div class="cd-tab-filter">
                    <ul class="cd-filters">            
                        <li class="placeholder"> 
                            <a data-type="all" href="#0">All</a> <!-- selected option on mobile -->
                        </li>                         
                        <li class="filter">  <a class="selected" href="#0" data-type="all">All</a></li>                    
                            <%
                                for (Map.Entry<Integer, String> entry : rugCategoryMap.entrySet()) {                              
                                rugCategoryName = entry.getValue();
                                rugCategoryId = entry.getKey();
                            %>
                        <li class="filter" data-filter=".<%=rugCategoryId%>"><a href="#0" data-type="<%=rugCategoryId%>"><%=rugCategoryName%></a></li>
                            <%
                                }
                            %>
                    </ul> <!-- cd-filters -->
                </div> <!-- cd-tab-filter -->
            </div> <!-- cd-tab-filter-wrapper -->
            <%
                sql = "select * from ruginformation";
                rs = st.executeQuery(sql);
                String imageURL = "";
                int imageId;
            %>
            <section class="cd-gallery">
                <ul>
                    <%
                        while (rs.next()) {
                            imageURL = rs.getString("rugImageURL");
                            imageId = rs.getInt("rugId");
                            String categoryId="";
                            String categoryIdQuery= "select rugCategoryId from rugcategoryenrollment where RugId = "+rs.getInt("rugId");
                            ResultSet rsCategoryId = stCategoryId.executeQuery(categoryIdQuery);
                             while(rsCategoryId.next())
                            {
                                categoryId = categoryId+Integer.toString(rsCategoryId.getInt("rugCategoryId"))+" ";
                            }     
                    %>
                    <li class="mix <%=categoryId%>"><a href="rugdetails.jsp?rugId=<%=imageId%>"><img src=<%=imageURL%> alt="Image 1"></a></li>
                        <%}%>
                    <li class="gap"></li>
                    <li class="gap"></li>
                    <li class="gap"></li>
                </ul>
                <div class="cd-fail-message">No results found</div>
            </section> <!-- cd-gallery -->

            <div class="cd-filter">
                <form>
                    <div class="cd-filter-block">
                        <h4>Search</h4>

                        <div class="cd-filter-content">
                            <input type="search" placeholder="Try Contemporary...">
                        </div> <!-- cd-filter-content -->
                    </div> <!-- cd-filter-block -->

                    <div class="cd-filter-block">
                        <h4>Check boxes</h4>

                        <ul class="cd-filter-content cd-filters list">
                            <%
                         for (Map.Entry<Integer, String> entry : rugCategoryMap.entrySet()) {  
                                   rugCategoryName = entry.getValue();
                                   rugCategoryId = entry.getKey();
                            %>
                            <li>
                                <input class="filter" data-filter=".<%=rugCategoryId%>" type="checkbox" id="checkbox1">
                                <label class="checkbox-label" for="checkbox1"> <%=rugCategoryName%></label>
                            </li>
                            <%}%>
                        </ul> <!-- cd-filter-content -->
                    </div> <!-- cd-filter-block -->

                    <div class="cd-filter-block">
                        <h4>Select</h4>

                        <div class="cd-filter-content">
                            <div class="cd-select cd-filters">
                                <select class="filter" name="selectThis" id="selectThis">
                                    <option value="">Choose an option</option>
                                    <%
                                         for (Map.Entry<Integer, String> entry : rugCategoryMap.entrySet()) {  
                                           rugCategoryName = entry.getValue();
                                            rugCategoryId = entry.getKey();
                                    %>
                                    <option value=".<%=rugCategoryId%>"><%=rugCategoryName%></option>
                                    <%}%>
                                </select>
                            </div> <!-- cd-select -->
                        </div> <!-- cd-filter-content -->
                    </div> <!-- cd-filter-block -->
                    <div class="cd-filter-block">
                        <h4>Radio buttons</h4>

                        <ul class="cd-filter-content cd-filters list">
                            <li>
                                <input class="filter" data-filter="" type="radio" name="radioButton" id="radio" checked>
                                <label class="radio-label" for="radio1">All</label>
                            </li>
                            <%
                                 for (Map.Entry<Integer, String> entry : rugCategoryMap.entrySet()) {  
                                           rugCategoryName = entry.getValue();
                                           rugCategoryId = entry.getKey();
                            %>
                            <li>
                                <input class="filter" data-filter=".<%=rugCategoryId%>" type="radio" name="radioButton" id="<%=rugCategoryId%>">
                                <label class="radio-label" for="<%=rugCategoryId%>"><%=rugCategoryName%></label>
                            </li>
                            <%}%>
                        </ul> <!-- cd-filter-content -->
                    </div> <!-- cd-filter-block -->
                </form>

                <a href="#0" class="cd-close">Close</a>
            </div> <!-- cd-filter -->

            <a href="#0" class="cd-filter-trigger">Filters</a>
        </main> <!-- cd-main-content -->
        <script src="js/jquery-2.1.1.js"></script>
        <script src="js/jquery.mixitup.min.js"></script>
        <script src="js/main.js"></script> <!-- Resource jQuery -->
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
                        <ul align = " center">
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="rugstyles.jsp">Oriental Rug Styles</a></li>
                            <li><a href="services.jsp">Oriental Rug Services</a></li>
                            <li><a href="about.jsp">About Us</a></li>
                            <li><a href="contact.jsp">Contact Us</a></li>
                        </ul>
                        </br></br>
                        <div id='yelpwidget'>

                            <script>(function () {
                var s = document.createElement("script");
                s.async = true;
                s.onload = s.onreadystatechange = function () {
                    getYelpWidget("rugport-palatine-2", "350", "RED", "y", "y", "1");
                };
                s.src = 'http://chrisawren.com/widgets/yelp/yelpv2.js';
                var x = document.getElementsByTagName('script')[0];
                x.parentNode.insertBefore(s, x);
            })();</script>
                        </div>
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
            }
            catch (Exception e

            
                ) {
                e.printStackTrace();
            }%>
    </body>
</html>