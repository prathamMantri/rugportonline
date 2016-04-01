<%-- 
    Document   : test2
    Created on : Mar 20, 2016, 4:03:32 PM
    Author     : Prathamesh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/pygments.css" />
        <link rel="stylesheet" href="css/easyzoom.css" />
        <%@ page import="java.sql.*"%>
        <%@ page import="java.io.*"%>
        <%@ page import="Connection.*"%>
    </head>
    <style>
        body {   
            width: 100%;
            height: auto;
            padding: 0;
            margin: 0px auto;
            font-family: Calibri, Georgia, Ubuntu-C;  
            font-size: 16px;
        }
        #bottom{
            height:120px;
            width: 100%;
            background-repeat:repeat-y;
            overflow:hidden; 
            position:absolute;
            background-color: beige;    
        }
        #content{
            height: 500px;
            overflow:auto;
            padding-bottom: 20px;
            padding: 20px;
        }
        .thumbnails {
            overflow: hidden;
            margin: 1em 0;
            padding: 0;
            text-align: center;
        }

        .thumbnails li {
            display: inline-block;
            margin: 0 5px;
            height: 100px;
            padding-bottom: 5px;
        }

        .thumbnails img {
            display: block;
            min-width: 100%;
            max-width: 100%;
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
        <!--   <div id="header" class="header">
               <center> <a href="index.jsp"><img src="images/logo.png" title="Logo" /></a></center>
           </div>-->
        <%
            int rugId = Integer.parseInt(request.getParameter("rugId"));
            String imagepath = "";
            int i = 1;
            sql = "select * from rugimagesizeurl where RugId=" + rugId;
            if (rugId > 9) {
                imagepath = "images/Rug" + rugId + "/IMG_00" + rugId + "_";
            } else {
                imagepath = "images/Rug" + rugId + "/IMG_000" + rugId + "_";
            }
            rs = st.executeQuery(sql);
        %> 
        <div id="content">
            <div class="image">
                <center>  <div class="easyzoom easyzoom--overlay easyzoom--with-thumbnails">   
                        <a href="<%=imagepath + "1L.JPG"%>">
                            <img  src="<%=imagepath + "1L.JPG"%>" alt="Some awesome text" height="490" width="400"/>
                        </a>
                    </div></center>
            </div>
        </div>
        <div id="bottom" class="bottom">
            <ul class="thumbnails">
                <%while (rs.next()) {%>
                <li>
                    <a href="<%=imagepath + i + "L.JPG"%>" data-standard="<%=imagepath + i + "L.JPG"%>" >
                        <img src="<%=imagepath + i + "L.JPG"%>" alt="" width='90'/>
                    </a>
                </li>
                <%i++;
                    }%>
            </ul>
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
        <%   con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }%>
    </body>
</html>
