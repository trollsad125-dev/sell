<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<script src="https://kit.fontawesome.com/4cf389a02b.js" crossorigin="anonymous"></script>
<header class="site-navbar" role="banner">
    <div class="site-navbar-top">
        <div class="container">
            <div class="row align-items-center">

                <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
                    <form action="" class="site-block-top-search">
                        <span class="icon icon-search2"></span>
                        <input type="text" class="form-control border-0" placeholder="Search">
                    </form>
                </div>

                <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                    <div class="site-logo">
                        <a href="/" data-toggle="tooltip" title="VL" class="js-logo-clone">Shoppers</a>
                    </div>
                </div>

                <div class="col-6 col-md-4 order-3 order-md-3 text-right">
                    <div class="site-top-icons">

                        <ul>
                            <c:choose>
                                <c:when test="${user.username == null}">
                                    <li><a href="#" data-toggle="tooltip" title="Login"><span class="icon icon-person" data-toggle="modal"
                                                          data-target="#exampleModal"></span></a></li>
                                </c:when>
                                <c:otherwise>
                                    <li>
                                        <div class="dropdown">
                                                <a href="/manage" class="btn  dropdown-toggle" data-toggle="dropdown" title="Manage"><span class="fas fa-users-cog fa-lg"></span></a>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">HTML</a></li>
                                                <li><a href="#">CSS</a></li>
                                                <li><a href="#">JavaScript</a></li>
                                            </ul>
                                        </div>
                                    </li>


                                    <li><a href="/logout" data-toggle="tooltip" title="Logout"><span class="fas fa-sign-out-alt fa-lg"></span></a></li>
                                </c:otherwise>
                            </c:choose>
                            <li><a href="/favorite"><span class="icon icon-heart-o"></span></a></li>
                            <li>
                                <a href="/cart" class="site-cart">
                                    <span class="icon icon-shopping_cart"></span>
                                    <%--<span class="count"></span>--%>
                                </a>
                            </li>
                            <li class="d-inline-block d-md-none ml-md-0"><a href="#"
                                                                            class="site-menu-toggle js-menu-toggle"><span
                                    class="icon-menu"></span></a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <nav class="site-navigation text-right text-md-center" role="navigation">
        <div class="container">
            <ul class="site-menu js-clone-nav d-none d-md-block">
                <li><a href="/">Home</a></li>


                <li><a href="/about">About</a></li>

                <li class="has-children">
                    <a href="#">Category</a>
                    <ul class="dropdown">
                        <li><a href="/quan-ao/1">Quần Áo</a></li>
                        <li><a href="/dung-cu">Dụng cụ</a></li>
                        <li><a href="/giay">Giày</a></li>
                    </ul>
                </li>
                <li><a href="/contact">Contact</a></li>
            </ul>
        </div>
    </nav>
</header>
