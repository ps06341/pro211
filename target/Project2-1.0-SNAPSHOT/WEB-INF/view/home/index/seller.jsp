<%-- 
    Document   : seller
    Created on : Mar 6, 2019, 4:22:18 PM
    Author     : Admin
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                   url="jdbc:sqlserver://localhost:1433;databaseName=db"
                   user="sa" password="123"
                   var="con"/>


<sql:query dataSource="${con}" var="result" >
    select top 4 * from product as p 
    left join (
    select productid,sum(quantity) as total_sales
    from OrderDetails group by ProductID
    ) as p2
    on p.ProductID = p2.ProductID 
    order by p2.total_sales desc


</sql:query>

<!-- seller products -->
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="box">
                <div class="box-head">
                    <h3 class="head-title">Best Seller Product</h3>
                </div>
            </div>
        </div>
    </div>
    <div class="product-carousel">
        <div class="box-body">
            <div class="row">
                <div class="owl-carousel owl-two owl-theme">
                    <c:forEach var="row" items="${result.rows}"> 
                        <!-- product -->
                        <div class="item">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="product-block">
                                    <a href="home/${row.productId}.htm" class="product-price">
                                        <div class="product-img">
                                            <img src="${row.image}" alt="">
                                        </div>
                                    </a>
                                    <div class="product-content">
                                        <h5><a href="home/${row.productId}.htm" class="product-title">${row.productName} <!-- <strong>(32 GB, Gold)</strong>--></a></h5>
                                        <div class="product-meta"><a href="home/${row.productId}.htm" class="product-price">
                                                <fmt:formatNumber value="${row.price*1000}" type="cureency" pattern=",### VND" />
                                            </a>
                                            <!--                                            <a href="#" class="discounted-price">$2000</a>
                                                                                        <span class="offer-price">20%off</span>-->
                                        </div>
                                        <div class="shopping-btn">
                                            <!--<a href="#" class="product-btn btn-like"><i class="fa fa-heart"></i></a>-->
                                            <a href="<c:url value="home/addCart.htm?producid=${row.productId}&quantity=1" />" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                    </c:forEach>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.seller products -->