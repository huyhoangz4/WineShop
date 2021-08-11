<%-- 
    Document   : Shop
    Created on : Nov 2, 2020, 9:10:13 PM
    Author     : HOANGPC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shop</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Cinzel:400,700|Montserrat:400,700|Roboto&display=swap" rel="stylesheet"> 
        <link rel="stylesheet" href="fonts/icomoon/style.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
        <link rel="stylesheet" href="css/aos.css">
        <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
        <div class="site-wrap">
            <div class="site-mobile-menu site-navbar-target">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close mt-3">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div>
             <%@include file="Header.jsp" %>
            <div class="site-section mt-5">
                <div class="container">
                    <div class="row mb-5">
                        <div class="col-12 section-title text-center mb-5">
                            <h2 class="d-block">Our Products</h2>
                            <p>Here are all the best we have. Thanks for visiting our shop!</p>
                        </div>
                    </div>
                    <div class="row">
                    <c:forEach items="${listP}" var="p">
                            <div class="col-lg-4 mb-5 col-md-6">
                                <div class="wine_v_1 text-center pb-4">
                                    <a href="#" class="thumbnail d-block mb-4"><img src="images/${p.image}" alt="Image" class="img-fluid img__product"></a>
                                    <div>
                                        <h3 class="heading mb-1" ><a href="#">${p.title}</a></h3>
                                        <span class="price">${p.price}</span>
                                    </div>
                                    <div class="wine-actions">
                                        <h3 class="heading-2"><a href="#">${p.title}</a></h3>
                                        <span class="price d-block">${p.price}</span>
                                        <a href="CartItemServer?pid=${p.pid}&quantity=1" class="btn add"><span class="icon-shopping-bag mr-3"></span> Add to Cart</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="row mb-5">
                <div class="col-12 section-title text-center mb-5">
                    <h2 class="d-block">Wines Shop</h2>
                    <p> Welcome to my Shop!</p>
                    <p><a href="Home.jsp"> Do you want to back to Home? <span class="icon-long-arrow-right"></span></a></p>
                </div>
            </div>
            <div class="hero-2" style="background-image: url('images/hero_2.jpg');">
                <div class="container">
                    <div class="row justify-content-center text-center align-items-center">
                        <div class="col-md-8">
                            <span class="sub-title">Welcome</span>
                            <h2>Wines For Everyone</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="site-section bg-light">
                <div class="container">
                </div>
                <div class="footer">
                    <div class="container">

                        <div class="row">
                            <div class="col-12 text-center">
                                <div class="social-icons">
                                    <a href="https://www.facebook.com/canmot.nguoihieu.7921"><span class="icon-facebook"></span></a>
                                    <a href="https://www.instagram.com/hoanggbinhh/"><span class="icon-instagram"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="copyright">
                                    <p>
                                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Michael H</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#ff5e15"/></svg></div>
            <script src="js/jquery-3.3.1.min.js"></script>
            <script src="js/jquery-migrate-3.0.1.min.js"></script>
            <script src="js/jquery-ui.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/owl.carousel.min.js"></script>
            <script src="js/jquery.stellar.min.js"></script>
            <script src="js/jquery.countdown.min.js"></script>
            <script src="js/bootstrap-datepicker.min.js"></script>
            <script src="js/jquery.easing.1.3.js"></script>
            <script src="js/aos.js"></script>
            <script src="js/jquery.fancybox.min.js"></script>
            <script src="js/jquery.sticky.js"></script>
            <script src="js/jquery.mb.YTPlayer.min.js"></script>
            <script src="js/main.js"></script>
    </body>
</html>
