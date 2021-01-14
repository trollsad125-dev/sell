<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Sublime project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/styles/bootstrap4/bootstrap.min.css">
    <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="/styles/main_styles.css">
    <link rel="stylesheet" type="text/css" href="/styles/responsive.css">
    <link rel="stylesheet" type="text/css" href="/pagination.css"/>
</head>
<body>

<div class="super_container">

    <!-- Header -->

    <jsp:include page="headerr.jsp"/>


    <!-- Home -->

    <div class="home">
        <div class="home_slider_container">

            <!-- Home Slider -->
            <div class="owl-carousel owl-theme home_slider">

                <!-- Slider Item -->
                <div class="owl-item home_slider_item">
                    <div class="home_slider_background" style="background-image:url(/images/home_slider_1.jpg)"></div>
                    <div class="home_slider_content_container">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="home_slider_content" data-animation-in="fadeIn"
                                         data-animation-out="animate-out fadeOut">
                                        <div class="home_slider_title">Đầu cắt moi</div>
                                        <div class="home_slider_subtitle">Vãi lồn luôn đâu cắt moi
                                        </div>
                                        <div class="button button_light home_button"><a href="/category">Mua Ngay</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Slider Item -->
                <div class="owl-item home_slider_item">
                    <div class="home_slider_background" style="background-image:url(/images/home_slider_1.jpg)"></div>
                    <div class="home_slider_content_container">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="home_slider_content" data-animation-in="fadeIn"
                                         data-animation-out="animate-out fadeOut">
                                        <div class="home_slider_title">Vãi lồn luôn</div>
                                        <div class="home_slider_subtitle">Đầu cắt moi
                                        </div>
                                        <div class="button button_light home_button"><a href="/category">Mua ngay</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Slider Item -->
                <div class="owl-item home_slider_item">
                    <div class="home_slider_background" style="background-image:url(/images/home_slider_1.jpg)"></div>
                    <div class="home_slider_content_container">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="home_slider_content" data-animation-in="fadeIn"
                                         data-animation-out="animate-out fadeOut">
                                        <div class="home_slider_title">Vãi lồn luôn</div>
                                        <div class="home_slider_subtitle">Đầu cắt moi
                                        </div>
                                        <div class="button button_light home_button"><a href="/category">Mua Ngay</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Home Slider Dots -->

            <div class="home_slider_dots_container">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="home_slider_dots">
                                <ul id="home_slider_custom_dots" class="home_slider_custom_dots">
                                    <li class="home_slider_custom_dot active">1</li>
                                    <li class="home_slider_custom_dot">2</li>
                                    <li class="home_slider_custom_dot">3</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <!-- Ads -->

    <div class="avds">
        <div class="avds_container d-flex flex-lg-row flex-column align-items-start justify-content-between">
            <div class="avds_small">
                <div class="avds_background" style="background-image:url(/images/avds_small.jpg)"></div>
                <div class="avds_small_inner">
                    <div class="avds_discount_container">
                        <img src="/images/discount.png" alt="">
                        <div>
                            <div class="avds_discount">
                                <div>20<span>%</span></div>
                                <div>Discount</div>
                            </div>
                        </div>
                    </div>
                    <div class="avds_small_content">
                        <div class="avds_title">Smart Phones</div>
                        <div class="avds_link"><a href="/viewCategories">See More</a></div>
                    </div>
                </div>
            </div>
            <div class="avds_large">
                <div class="avds_background" style="background-image:url(/images/avds_large.jpg)"></div>
                <div class="avds_large_container">
                    <div class="avds_large_content">
                        <div class="avds_title">Professional Cameras</div>
                        <div class="avds_text">Camera thần kì
                        </div>
                        <div class="avds_link avds_link_large"><a href="/viewCategories">See More</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Products -->

    <div class="products">
        <div class="container">
            <div class="row">
                <div class="col">

                    <div class="product_grid">

                        <!-- Product -->

                        <c:forEach items="${listProduct}" var="p">
                            <div class="product">
                                    <%--<div class="product_extra product_hot"><a href="/viewCategories">${p.label}</a></div>--%>


                                <div class="product_image"><img src="/images/${p.image}" alt=""></div>
                                <div class="product_content">
                                    <div class="product_title">${p.name}</div>
                                    <div class="product_price">${p.price}</div>
                                </div>

                            </div>
                        </c:forEach>

                    </div>

                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
                            <c:choose>
                                <c:when test="${page == 1}">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="/trang-chu/${page-1}">Previous</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item">
                                        <a class="page-link" href="/trang-chu/${page-1}">Previous</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                            <c:forEach var="state" items="${pageSize}">
                                <li class="page-item"><a class="page-link" href="/trang-chu/${state+1}">${state+1}</a></li>
                            </c:forEach>

                            <c:choose>
                                <c:when test="${page == fn:length(pageSize)}">
                                    <li class="page-item disabled ">
                                        <a class="page-link" href="/trang-chu/${page+1}">Next</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item ">
                                        <a class="page-link" href="/trang-chu/${page+1}">Next</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>

                        </ul>

                    </nav><br/>
                </div>
            </div>
        </div>
    </div>

    <!-- Ad -->

    <div class="avds_xl">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="avds_xl_container clearfix">
                        <div class="avds_xl_background" style="background-image:url(/images/avds_xl.jpg)"></div>
                        <div class="avds_xl_content">
                            <div class="avds_title">Thiết bị nghe thần kì</div>
                            <div class="avds_text">Chất lượng âm thanh tuyệt hảo mang đến phong cách sang trọng và đầy
                                tinh tế
                            </div>
                            <div class="avds_link avds_xl_link"><a href="/category">See More</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Icon Boxes -->

    <div class="icon_boxes">
        <div class="container">
            <div class="row icon_box_row">

                <!-- Icon Box -->
                <div class="col-lg-4 icon_box_col">
                    <div class="icon_box">
                        <div class="icon_box_image"><img src="/images/icon_1.svg" alt=""></div>
                        <div class="icon_box_title">Free Shipping Worldwide</div>
                        <div class="icon_box_text">
                            <p>Chúng tôi tự hào rằng tôi ship thế mà thằng nào đéo nhận đấm chết cha mày giờ</p>
                        </div>
                    </div>
                </div>

                <!-- Icon Box -->
                <div class="col-lg-4 icon_box_col">
                    <div class="icon_box">
                        <div class="icon_box_image"><img src="/images/icon_2.svg" alt=""></div>
                        <div class="icon_box_title">Free Returns</div>
                        <div class="icon_box_text">
                            <p>Return là đầu cắt moi</p>
                        </div>
                    </div>
                </div>

                <!-- Icon Box -->
                <div class="col-lg-4 icon_box_col">
                    <div class="icon_box">
                        <div class="icon_box_image"><img src="/images/icon_3.svg" alt=""></div>
                        <div class="icon_box_title">24h Fast Support</div>
                        <div class="icon_box_text">
                            <p>Vận chuyển nhanh đến bất ngờ</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <!-- Footer -->

    <jsp:include page="footer.jsp"/>
</div>

<script src="/js/jquery-3.2.1.min.js"></script>
<script src="/styles/bootstrap4/popper.js"></script>
<script src="/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/plugins/greensock/TweenMax.min.js"></script>
<script src="/plugins/greensock/TimelineMax.min.js"></script>
<script src="/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="/plugins/greensock/animation.gsap.min.js"></script>
<script src="/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="/plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="/js/custom.js"></script>

</body>

</html>