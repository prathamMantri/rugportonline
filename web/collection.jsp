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
        <%String category = request.getParameter("category");%>
        <title><%=category%></title>
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
        <script>
           /* $(document).ready(function () {

                //how much items per page to show
                var show_per_page = 9;
                //getting the amount of elements inside products div
                var number_of_items = $('#container').children().size();
                //calculate the number of pages we are going to have
                var number_of_pages = Math.ceil(number_of_items / show_per_page);

                //set the value of our hidden input fields
                $('#current_page').val(0);
                $('#show_per_page').val(show_per_page);

                //now when we got all we need for the navigation let's make it '

                /* 
                 what are we going to have in the navigation?
                 - link to previous page
                 - links to specific pages
                 - link to next page
                 */
            /*    var navigation_html = '<a class="previous_link" href="javascript:previous();">Prev</a>--';
                var current_link = 0;
                while (number_of_pages > current_link) {
                    navigation_html += '<a class="page_link" href="javascript:go_to_page(' + current_link + ')" longdesc="' + current_link + '">' + (current_link + 1) + '</a>--';
                    current_link++;
                }
                navigation_html += '<a class="next_link" href="javascript:next();">Next</a>';

                $('#page_navigation').html(navigation_html);

                //add active_page class to the first page link
                $('#page_navigation .page_link:first').addClass('active_page');

                //hide all the elements inside products div
                $('#container').children().css('display', 'none');

                //and show the first n (show_per_page) elements
                $('#container').children().slice(0, show_per_page).css('display', 'block');

            });

            function previous() {

                new_page = parseInt($('#current_page').val()) - 1;
                //if there is an item before the current active link run the function
                if ($('.active_page').prev('.page_link').length == true) {
                    go_to_page(new_page);
                }
            }
            function next() {
                new_page = parseInt($('#current_page').val()) + 1;
                //if there is an item after the current active link run the function
                if ($('.active_page').next('.page_link').length == true) {
                    go_to_page(new_page);
                }
            }
            function go_to_page(page_num) {
                //get the number of items shown per page
                var show_per_page = parseInt($('#show_per_page').val());
                //get the element number where to start the slice from
                start_from = page_num * show_per_page;

                //get the element number where to end the slice
                end_on = start_from + show_per_page;

                //hide all children elements of products div, get specific items and show them
                $('#container').children().css('display', 'none').slice(start_from, end_on).css('display', 'block');

                /*get the page link that has longdesc attribute of the current page and add active_page class to it
                 and remove that class from previously active page link*/
              /*  $('.page_link[longdesc=' + page_num + ']').addClass('active_page').siblings('.active_page').removeClass('active_page');

                //update the current page input field
                $('#current_page').val(page_num);
            }*/

        </script>
    </head>
    <body>
        <input type="hidden" id="current_page" />
        <input type="hidden" id="show_per_page" />
        <%
            ConnectionPooling cp = new ConnectionPooling();
            Connection con = cp.connect();
            try {
                //String category = request.getParameter("category");
                int categoryId = Integer.parseInt(request.getParameter("categoryid"));
                String coloumnname = "";
                switch (categoryId) {
                    case 1:
                        coloumnname = "RugContemporary";
                        break;
                    case 2:
                        coloumnname = "RugTraditional";
                        break;
                    case 3:
                        coloumnname = "RugFormal";
                        break;
                    case 4:
                        coloumnname = "RugFlatWeaves";
                        break;
                    case 5:
                        coloumnname = "RugMasterPiece";
                        break;
                    case 6:
                        coloumnname = "RugSpecialSize";
                        break;
                    case 7:
                        coloumnname = "RugModern";
                        break;
                    case 8:
                        coloumnname = "RugTransitional";
                        break;
                    case 9:
                        coloumnname = "RugTribal";
                        break;
                    case 10:
                        coloumnname = "RugNew";
                        break;
                    default:
                        out.println("Invalid grade");
                }

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
                        <a href="index.jsp"><img src="images/logo.png" title="gaia" /></a>

                    </div>
                    <div class="bottom-header-right">
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
                    <li><a href="services.jsp">Oriental Rug Services<span> </span></a></li>
                    <li ><a href="about.jsp">About Us<span> </span></a></li>
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
        <br><br>
        <h2 align="center"><%=category%></h2>
        <div class="top-grids">
            <div class="container" id="container">
                <%
                    ResultSet rs = null;
                    Statement st = con.createStatement();;
                    String sql = "";
                    int i = 1;
                    sql = "select * from ruginformation where " + coloumnname + " = 1 order by RugShape ";
                    rs = st.executeQuery(sql);
                    while (rs.next()) {
                %>
                <div class="col-md-4 top-grid text-center" id="products">
                    <div class="top-grid-pic">
                        <img src="<%=rs.getString("RugImageURL")%>" title="RugImage" />
                    </div>
                    <div class="top-grid-pic-info">
                        <div class="top-grid-pic-info-cart">
                            <a class="i-btn" href="rugdetails.jsp?rugId=<%=rs.getString("rugId")%>">See Details</a>
                        </div> 
                    </div>
                </div>

                <%}%>
            </div>
            <div class="clearfix"> </div>
            <center>
                <div id='page_navigation'></div></center>
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
                            <li><a href="rugstyles.jsp">Oriental Rug Styles</a></li>
                            <li><a href="services.jsp">Oriental Rug Services</a></li>
                            <li><a href="about.jsp">About Us</a></li>
                            <li><a href="contact.jsp">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <!-- social-icons -->

                <!-- social-icons -->
                <!-- footer-bottom -->
                <div class="footer-bottom">
                    <div class="footer-bottom-left">
                        <p class="right"> Rugport &copy; 2015 | Website designed by <a href="https://www.linkedin.com/in/prathammantri" rel="nofollow">Prathamesh Mantri</a> and <a href="https://in.linkedin.com/in/anshu-sikchi-3809a565" rel="nofollow">Anshu Sikchi</a></p>
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

