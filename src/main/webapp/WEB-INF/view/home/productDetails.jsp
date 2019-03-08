<%-- 
    Document   : productDetails
    Created on : Mar 8, 2019, 10:13:19 PM
    Author     : Admin
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- page-header -->
<div class="page-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="page-breadcrumb">
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li>Product Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.page-header-->
<div class="content">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="box">
                    <!-- product-description -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                                <ul id="demo1_thumbs" class="slideshow_thumbs">
                                    <li>
                                        <a href="./images/thumb_big_1.jpg">
                                            <div class=" thumb-img"><img src="./images/thumb_1.jpg" alt=""></div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="./images/thumb_big_2.jpg">
                                            <div class=" thumb-img"><img src="./images/thumb_2.jpg" alt=""></div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="./images/thumb_big_3.jpg" alt="">
                                            <div class=" thumb-img"><img src="./images/thumb_3.jpg" alt=""></div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div id="slideshow">
                                    <img src="${productSingle.image}" alt="">
                                    
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="product-single">
                                    <h2>${productSingle.productName} </h2>
                                    <div class="product-rating">
                                        <span><i class="fa fa-star"></i></span>
                                        <span><i class="fa fa-star"></i></span>
                                        <span><i class="fa fa-star"></i></span>
                                        <span><i class="fa fa-star"></i></span>
                                        <span><i class="fa fa-star-o"></i></span>
                                        <span class="text-secondary">&nbsp;(4.8 Review Stars)</span>
                                    </div>
                                    <p class="product-price" style="font-size: 38px;">
                                    
                                        <fmt:formatNumber value="${productSingle.price*1000}" type="cureency" pattern=",### VND" />
                                    <p>${productSingle.describe}</p>
                                    <div class="product-quantity">
                                        <h5>Quantity</h5>
                                        <div class="quantity mb20">
                                            <input type="number" class="input-text qty text" step="1" min="1" max="6" name="quantity" value="1" title="Qty" size="4" pattern="[0-9]*">
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-default"><i class="fa fa-shopping-cart"></i>&nbsp;Add to cart</button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="box-head scroll-nav">
                    <div class="head-title"> <a class="page-scroll active" href="#product">Product Details</a>
                        
                </div>
            </div>
        </div>
        <!-- highlights -->
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="box" id="product">
                    <div class="box-body">
                        <div class="highlights">
                            <h4 class="product-small-title">Characteristics</h4>
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <ul class="arrow">
                                        <li>Nhà Sản Xuất </li>
                                        <li>Năm Sản Xuất </li>
                                        <li>Số Lượng</li>
                                    </ul>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <ul class="arrow">
                                        <li>${productSingle.producer.producerName}</li>
                                        <li>${productSingle.productDAY}</li>
                                        <li>${productSingle.quantity}</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


