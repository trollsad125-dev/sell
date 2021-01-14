<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Nizis's Shop</title>
    <jsp:include page="part/header.jsp"/>
</head>
<body>

<div class="site-wrap">

    <jsp:include page="part/menu.jsp"/>


   <h1>${mess1}</h1>
    <div class="site-blocks-cover" style="background-image: url(/images/doge.jpg);" data-aos="fade">
        <div class="container">
            <div class="row align-items-start align-items-md-center justify-content-end">
                <div class="col-md-5 text-center text-md-left pt-5 pt-md-0">
                    <h1 class="mb-2" style="font-family:Calibri">Đồ Thể Thao Gym dành cho Người Cơ Bắp</h1>
                    <div class="intro-text text-center text-md-left">
                        <p class="mb-4">Đồ tập gym cho các bạn </p>
                        <p>
                            <a href="#" class="btn btn-sm btn-primary">Mua Ngay</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

<jsp:include page="part/support.jsp"/>

    <div class="site-section site-blocks-2">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0" data-aos="fade" data-aos-delay="">
                    <a class="block-2-item" href="#">
                        <figure class="image">
                            <img src="/images/dogecollect1.jpg" alt="" class="img-fluid">
                        </figure>
                        <div class="text">
                            <span class="text-uppercase">Collections</span>
                            <h3>Dụng cụ tập gym</h3>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="100">
                    <a class="block-2-item" href="#">
                        <figure class="image">
                            <img src="/images/dogecollect2.jpg" alt="" class="img-fluid">
                        </figure>
                        <div class="text">
                            <span class="text-uppercase">Collections</span>
                            <h3>Đồ tập gym</h3>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="200">
                    <a class="block-2-item" href="#">
                        <figure class="image">
                            <img src="/images/dogecollect3.jpg" alt="" class="img-fluid">
                        </figure>
                        <div class="text">
                            <span class="text-uppercase">Collections</span>
                            <h3>Giày thể thao</h3>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="site-section block-3 site-blocks-2 bg-light">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-7 site-section-heading text-center pt-4">
                    <h2>Featured Products</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="nonloop-block-3 owl-carousel">
                        <c:forEach items="${listProduct}" var="p">
                            <div class="item">
                                <div class="block-4 text-center">
                                    <figure class="block-4-image">
                                        <img src="/images/${p.image}" alt="Image placeholder" class="img-fluid">
                                    </figure>
                                    <div class="block-4-text p-4">
                                        <h3><a href="#">${p.name}</a></h3>
                                        <p class="mb-0">Finding perfect t-shirt</p>
                                        <p class="text-primary font-weight-bold">${p.price}$</p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="site-section block-8">
        <div class="container">
            <div class="row justify-content-center  mb-5">
                <div class="col-md-7 site-section-heading text-center pt-4">
                    <h2>Giảm giá tuyệt đỉnh</h2>
                </div>
            </div>
            <div class="row align-items-center">
                <div class="col-md-12 col-lg-7 mb-5">
                    <a href="#"><img src="/images/blog_1.jpg" alt="Image placeholder" class="img-fluid rounded"></a>
                </div>
                <div class="col-md-12 col-lg-5 text-center pl-md-5">
                    <h2><a href="#">50% sell</a></h2>
                    <p class="post-meta mb-4">By <a href="#">Carl Smith</a> <span class="block-8-sep">&bullet;</span>
                        September 18 2020</p>
                    <p>Vãi lồn luôn đầu cắt moi</p>
                    <p><a href="#" class="btn btn-primary btn-sm">Mua đê</a></p>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="part/modals.jsp"/>
    <jsp:include page="part/footer.jsp"/>
</div>

<jsp:include page="part/javascript.jsp"/>

</body>
</html>