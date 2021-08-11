
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="beans" class="DAO.DAOAccount" scope="request"/>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Check Login</title>
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <%@include file="Header.jsp" %> <br>  
        <section class="breadcrumb-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div  class="breadcrumb__text">
                            <h1 style="color: black"> Admin</h1>
                            <h2 style="color: black"> Manager Account </h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="checkout spad">
            <div class="container">
                <div class="checkout__form">
                    <h4 style="color: red">New Account </h4>
                    <table  style="color: black" class="table">
                        <thead style="color: black">
                            <tr>
                                <th>User ID</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>User Name</th>
                            </tr>
                        </thead>
                        <tbody style="color: black">
                            <c:forEach items="${listLogin}" var="list">
                                <tr>
                                    <td>${list.id}</td>
                                    <td>${list.email}</td>
                                    <td>${list.password}</td>
                                    <td>${list.username}</td>
                                    <td><a href="AcceptServer?id=${list.id}&type=Login">
                                            <button class="site-btn">Accept</button></a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <section class="checkout spad">
            <div class="container">
                <div class="checkout__form">
                    <h4 style="color: red">New Account </h4>
                    <table  style="color: black" class="table">
                        <thead style="color: black">
                            <tr>
                                <th>Bill ID</th>
                                <th>User ID</th>
                                <th>Date</th>
                                <th>Product</th>
                            </tr>
                        </thead>
                        <tbody style="color: black">
                            <c:set var="total" value="0"/>
                            <c:forEach items="${listB}" var="b">
                                <tr>
                                    <td>${b.billID}</td>
                                    <td>${b.userid}</td>
                                    <td>${b.date}</td>
                                    <td>${b.productid.title}</td>
                                </tr>
                                <c:set var="total" value="${total + b.productid.price}"/>
                            </c:forEach>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>Total</td>
                                <td>${total} $</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
