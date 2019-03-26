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
                   user="sa" password="123"
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
                        <c:set var="count" value="1" />
                        <c:forEach var="row" items="${result.rows}">
                            <input type="hidden" value="${row.productId}" name="pro${count}"/>
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
                                            <!--<a href="#" class="product-btn btn-like"><i class="fa fa-heart"></i></a>-->
                                            <a onclick="" href="<c:url value="home/addCart.htm?producid=${row.productId}&quantity=1" />" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                    <c:set var="count" value="${count+1}" />
                                </div>
                            </div>

                        </c:forEach>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.latest products -->
<script type="text/javascript">



    var productDTO = class productDTO {
        constructor(product, quantity) {
            this.product = product;
            this.quantity = quantity;
        }
    }
    ;
            var cartbean = {};

    function addCart() {
        var cart = sessionStorage.getItem("shoppingcart");


    }


</script>



