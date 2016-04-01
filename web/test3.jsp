<%-- 
    Document   : test3
    Created on : Mar 20, 2016, 9:47:12 PM
    Author     : Prathamesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style> 
        img {
            max-width: 100%;
            display: block;
        }

        .thumbnail {
            position: absolute;
            top: 50%;
            left: 50%;

            width: 320px;
            height: 240px;

            -webkit-transform: translate(-50%,-50%); /* Safari and Chrome */
            -moz-transform: translate(-50%,-50%); /* Firefox */
            -ms-transform: translate(-50%,-50%); /* IE 9 */
            -o-transform: translate(-50%,-50%); /* Opera */
            transform: translate(-50%,-50%);
        }

        .image {
            width: 100%;
            height: 100%;    
        }

        .image img {
            -webkit-transition: all 1s ease; /* Safari and Chrome */
            -moz-transition: all 1s ease; /* Firefox */
            -o-transition: all 1s ease; /* IE 9 */
            -ms-transition: all 1s ease; /* Opera */
            transition: all 1s ease;
        }

        .image:hover img {
            -webkit-transform:scale(1.25); /* Safari and Chrome */
            -moz-transform:scale(1.25); /* Firefox */
            -ms-transform:scale(1.25); /* IE 9 */
            -o-transform:scale(1.25); /* Opera */
            transform:scale(1.25);
        }

    </style>

    <body>
        <div class="thumbnail">
            <div class="image">
                <img  src="http://placehold.it/320x240" alt="Some awesome text"/>
            </div>
        </div>
    </body>
</html>
