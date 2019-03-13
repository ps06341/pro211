<%-- 
    Document   : latest
    Created on : Mar 6, 2019, 4:22:03 PM
    Author     : Admin
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                   url="jdbc:sqlserver://localhost:1433;databaseName=db"
                   user="sa" password="123456"
                   var="con"/>


<sql:query dataSource="${con}" var="result" >
    select top 4 *
    from product t
    order by productDAY desc
</sql:query>

<!-- latest products -->
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="box">
                <div class="box-head">
                    <h3 class="head-title">Latest Product</h3>
                </div>
                <div class="box-body">
                    <div class="row">
                        <!-- product -->
                        <c:forEach var="row" items="${result.rows}">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product-block">
                                    <a href="home/${row.productId}.htm" class="product-price">
                                        <div class="product-img">
                                            <img src="${row.image}" alt="" >
                                        </div>
                                    </a>
                                    <div class="product-content">
                                        <h5><a href="home/${row.productId}.htm" class="product-title">${row.productName} <!--<strong>(128GB, Black)</strong>--></a></h5>
<!--                                        <div class="product-meta"><a href="#" class="product-price">${row.price}</a>-->
                                        <div class="product-meta">

                                            <a href="home/${row.productId}.htm" class="product-price">
                                                <fmt:formatNumber value="${row.price*1000}" type="cureency" pattern=",### VND" />
                                            </a>
                                            <!--<a href="#" class="discounted-price">$1400</a>-->
                                            <!--<span class="offer-price">20%off</span>-->
                                        </div>
                                        <div class="shopping-btn">
                                            <a href="#" class="product-btn btn-like"><i class="fa fa-heart"></i></a>
                                            <a href="#" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </c:forEach>
                        <!-- /.product -->
                        <!--                             product 
                                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                                        <div class="product-block">
                                                            <div class="product-img"><img src="./images/product_img_2.png" alt=""></div>
                                                            <div class="product-content">
                                                                <h5><a href="#" class="product-title">HTC U Ultra <strong>(64GB, Blue)</strong></a></h5>
                                                                <div class="product-meta"><a href="#" class="product-price">$1200</a>
                                                                    <a href="#" class="discounted-price">$1700</a>
                                                                    <span class="offer-price">10%off</span>
                                                                </div>
                                                                <div class="shopping-btn">
                                                                    <a href="#" class="product-btn btn-like"><i class="fa fa-heart"></i></a>
                                                                    <a href="#" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                     /.product 
                                                     product 
                                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                                        <div class="product-block">
                                                            <div class="product-img"><img src="./images/product_img_3.png" alt=""></div>
                                                            <div class="product-content">
                                                                <h5><a href="#" class="product-title">Samsung Galaxy Note 8</a></h5>
                                                                <div class="product-meta"><a href="#" class="product-price">$1500</a>
                                                                    <a href="#" class="discounted-price">$2000</a>
                                                                    <span class="offer-price">40%off</span>
                                                                </div>
                                                                <div class="shopping-btn">
                                                                    <a href="#" class="product-btn btn-like"><i class="fa fa-heart"></i></a>
                                                                    <a href="#" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                     /.product 
                                                     product 
                                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                                        <div class="product-block">
                                                            <div class="product-img"><img src="./images/product_img_4.png" alt=""></div>
                                                            <div class="product-content">
                                                                <h5><a href="#" class="product-title">Vivo V5 Plus <strong>(Matte Black)</strong></a></h5>
                                                                <div class="product-meta"><a href="#" class="product-price">$1500</a>
                                                                    <a href="#" class="discounted-price">$2000</a>
                                                                    <span class="offer-price">15%off</span>
                                                                </div>
                                                                <div class="shopping-btn">
                                                                    <a href="#" class="product-btn btn-like">  <i class="fa fa-heart"></i></a>
                                                                    <a href="#" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                     /.product -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.latest products -->