<%@page import="Entity.Account"%>
<div class="header-top">

    <div class="site-navbar py-2 js-sticky-header site-navbar-target d-none pl-0 d-lg-block" role="banner">
        <div class="container">
            <div class="d-flex align-items-center">
                <div class="mx-auto">
                    <nav class="site-navigation position-relative text-left" role="navigation">
                        <ul class="site-menu main-menu js-clone-nav mx-auto d-none pl-0 d-lg-block border-none">
                            <li class="active"><a href="Home.jsp" class="nav-link text-left">Home</a></li>
                            <li><a href="ProductServer" class="nav-link text-left">Shop</a></li>
                            <li><a href="Information.jsp" class="nav-link text-left">Information</a></li>
                            <li><a href="CartServer" class="nav-link text-left">Cart</a></li>
                            <li>
                            <c:if test="<%=session.getAttribute("currentAccount") == null%>">
                                <a href="Login.jsp" style="font-size: 20px;" type="submit" class="nav-link text-left">Login</a>
                            </c:if>
                            <c:if test="<%=session.getAttribute("currentAccount") != null%>">
                                <a href="LogOutServer" type="submit" class="nav-link text-left">Logout</a>
                            </c:if>
                            </li>
                        </ul>
                        <c:if test="<%=session.getAttribute("currentAccount") != null%>">
                            <c:if test="<%= ((Account) session.getAttribute("currentAccount")).getRole() == 1%>">
                                <ul class="site-menu main-menu js-clone-nav mx-auto d-none pl-0 d-lg-block border-none">
                                    <a href="UploadProduct.jsp" type="submit" class="nav-link text-left">Add Product</a>
                                    <a href="ManagerAccountServer" type="submit" class="nav-link text-left">Manager</a>
                                </ul>                                                                                                                                                                                                                                                                                         
                            </c:if>
                        </c:if>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>