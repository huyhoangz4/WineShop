<%-- 
    Document   : CheckOut
    Created on : Nov 15, 2020, 5:20:04 PM
    Author     : HOANGPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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

            <div class="site-section">
                <div class="container">
                    <div style="margin: 0 auto" class="col-md-6 mb-5 mb-md-0">
                        <h2 class="h3 mb-3 text-black font-heading-serif">Billing Details</h2>
                        <form action="UploadServer" method="post" enctype="multipart/form-data">
                            <div class="p-3 p-lg-5 border">
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <label for="c_companyname" class="text-black">Title </label>
                                        <input type="text" class="form-control" id="c_companyname" name="title">
                                    </div>
                                </div>
                                <div class="form-group row">

                                    <div class="col-md-12">
                                        <label for="c_fname" class="text-black">Price<span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_fname" name="price">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="c_lname" class="text-black">Image<span class="text-danger">*</span></label>
                                        <input type="file" id="c_lname" name="image">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <label for="c_companyname" class="text-black">Description</label>
                                        <input type="text" class="form-control" id="c_companyname" name="description">
                                    </div>
                                </div>

                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <input type="submit" class="btn btn-primary btn-lg " id="c_companyname" value="Upload">
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- </form> -->
                </div>
            </div>

            <%-- footer section --%>
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
