<%-- 
    Document   : rugZoom1
    Created on : Dec 19, 2015, 8:14:53 PM
    Author     : Prathamesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ page import="java.sql.*"%>
        <%@ page import="java.io.*"%>
        <%@ page import="Connection.*"%>
        <title>Rugport-Online</title>    
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

    <style>
        .gallery{
            position: relative;
            height: 800px;
            width: 1300px
        }
        .shortimages{
            width:450px;
            right:0;
            position: absolute;
        }
        .shortimages img {
            height: 250px;
            border: 4px solid #555;
            padding: 1px;
            margin: 0 10px 10px 0;
            position: relative;
        }
        .preview{
            position: absolute;
            display: inline-block;
            overflow:scroll;
            direction: ltr;
            float: left;
            height:800px;
            width: 850px;
          }
        .preview { 
            transition: all .2s ease-in-out;
        }
         .preview img {
            border: 4px solid #444;
            padding: 1px;
            width: 500px;
            height: 600px;
        }
        
        .preview :hover { 
            transform: scale(1.8);
            height:800px;
            width: 850px:
           // position: relative;
        }
        
        .shortimages img:hover {
            border: 4px solid #D2691E;
            cursor:pointer;
        }
         </style>
       
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
                    <%
                            int rugId = Integer.parseInt(request.getParameter("rugId"));
                            String imagepath = "";
                            int i=1;
                            sql = "select * from rugimagesizeurl where RugId=" + rugId;
                            if (rugId > 9) {
                                imagepath = "images/Rug" + rugId + "/IMG_00" + rugId + "_1L.JPG";
                            } else {
                                imagepath = "images/Rug" + rugId + "/IMG_000" + rugId + "_1L.JPG";
                            }
                            rs = st.executeQuery(sql);
                        %> 
        <div class="gallery">
            <h3>Rug Image</h3>
            <br><br>
            <section >
                 <div class="preview" align='center' >
                    <img name="preview" src="<%=imagepath%>" alt=""  width="370" height="500"/>
                </div>
              <div class="shortimages">
                 <%while (rs.next()) {%>
                <img onclick="preview.src = img<%=i%>.src" name="img<%=i%>" src="<%=rs.getString("RugImageDetailURL")%>" alt=""  />
            <%i++;}%>
            </div>
            </section>
        </div> <!-- Close the gallery div -->
        <br><br><br><br><br><br>
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

        <%   con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }%>

    </body>
</html>
