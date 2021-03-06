.itemsMusic:hover{
            background-color:#ffffff;

        }
        td{
            border: none;
        }
        table{
            border: 0px ;
            border-collapse: collapse;
        }
        tr:hover{
            color:black;
        }

<%-- 
    Document   : header
    Created on : Jun 23, 2021, 2:22:55 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #Search{
                width: 200%;
                height:20px;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 12px;
                box-sizing: border-box;
            }
            @media only screen and (max-width: 1280px){
                #Search{
                    width: 100%;
                    padding: 12px 20px;
                    margin: 8px 0;
                    display: inline-block;
                    border: 1px solid #ccc;
                    border-radius: 12px;
                    box-sizing: border-box;
                    
                }
                #bac{
                    width:50%
                }
            }
        </style>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            Flix
        </title>
        <!-- GOOGLE FONTS -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap"
              rel="stylesheet">
        <!-- OWL CAROUSEL -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
              integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
              crossorigin="anonymous" />
        <!-- JQUERY -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <!-- BOX ICONS -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- APP CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app/grid.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app/app.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/app/audioplayer.css" />
    </head>
    <!-- NAV -->
    <div class="nav-wrapper">
        <div class="container">
            <div class="nav">
                <a  href="#" class="logo">
                    <i class='bx bx-music bx-tada main-color'></i>Bug<span class="main-color">s</span>
                </a>
                <div class="container">
                    <input id="Search" placeholder="Enter the song you need to find" type="text"/>
                </div>
                <ul class="nav-menu" id="nav-menu">
                    <li><a href="../index.jsp">Home</a></li>
                    <li><a href="#">News</a></li>          
                    <li><a href="Music/Music_Index.jsp">Music</a></li>
                    <li><a href="#">Top</a></li>
                    <li><a href="#">Search</a></li>
                    <li>
                        <a href="#" class="btn btn-hover">
                            <span>Sign in</span>
                        </a>
                    </li>
                </ul>
                <!-- MOBILE MENU TOGGLE -->
                <div class="hamburger-menu" id="hamburger-menu">
                    <div class="hamburger"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- END NAV -->