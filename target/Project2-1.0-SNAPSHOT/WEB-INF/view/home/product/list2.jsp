<%-- 
    Document   : list2
    Created on : Mar 12, 2019, 6:19:44 PM
    Author     : Admin
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!--<link href="css-admin/normalize.css" rel="stylesheet" />
<link href="css-admin/themesaller-forms.css" rel="stylesheet" />-->
<link href="css-admin/chosen/chosen.css" rel="stylesheet" />
<link href="style.css" rel="stylesheet" />
<link href="css-admin/responsive.css" rel="stylesheet" />
<link href="css-admin/style.css" rel="stylesheet" />
<link href="css-admin/bootstrap.min.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>

<style>
    /*    input[type="search"]{
            background: url("http://png.findicons.com/files/icons/1389/g5_system/32/toolbar_find.png") top right no-repeat;
            height:35px;
            padding-right:30px;
    
        }*/
    .table-striped>tbody>tr:nth-of-type(odd){
        background-color: #ffffff;

        /*${theCount.count}
        ${fn:length(products)}
        <c:if test="${101 gt fn:length(products)}">
            <p>It is greater than 0</p>
        </c:if>
        ${theCount.count+1}*/
    }

</style>




<div class="table-responsive">
    <table id="data-table-basic" class="table table-striped">
        <thead>
            <tr>
                <th></th>
                <th></th>
                <th></th>
                <th></th>


            </tr>
        </thead>
        <tbody>
            <c:forEach var="row" items="${products}" step="4" varStatus="theCount">
                <%--<c:set var="leng" value="${fn:length(row)}"/>--%>
                <tr>
                    <td>
                        <!--${theCount.count}-->
                        <div class="product-block">
                            <div class="product-img"><a href="home/${products[theCount.index].productId}.htm"><img src="${products[theCount.index].image}" alt=""></a></div>
                            <div class="product-content">

                                <h5>
                                    <a href="home/${products[theCount.index].productId}.htm" class="product-title">${products[theCount.index].productName}
                                    </a>
                                </h5>
                                <div class="product-meta">
                                    <a href="home/${products[theCount.index].productId}.htm" class="product-price">
                                        <fmt:formatNumber value="${products[theCount.index].price*1000}" type="cureency" pattern=",### VND" />
                                    </a>
                                </div>
                                <div class="shopping-btn">
                                    <a href="<c:url value="home/addCart.htm?producid=${products[theCount.index].productId}&quantity=1" />" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                </div>
                            </div>
                        </div>
                    </td>

                    <c:choose>
                        <c:when test="${theCount.index+3 lt fn:length(products)}">

                            <td> 
                                <!--${theCount.count+1}-->
                                <div class="product-block">
                                    <div class="product-img"><a href="home/${products[theCount.index+1].productId}.htm"><img src="${products[theCount.index+1].image}" alt=""></a></div>
                                    <div class="product-content">

                                        <h5>
                                            <a href="home/${products[theCount.index+1].productId}.htm" class="product-title">${products[theCount.index+1].productName}
                                            </a>
                                        </h5>
                                        <div class="product-meta">
                                            <a href="home/${products[theCount.index+1].productId}.htm" class="product-price">
                                                <fmt:formatNumber value="${products[theCount.index+1].price*1000}" type="cureency" pattern=",### VND" />
                                            </a>
                                        </div>
                                        <div class="shopping-btn">
                                            <a href="<c:url value="home/addCart.htm?producid=${products[theCount.index+1].productId}&quantity=1" />" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td> 
                                <!--${theCount.count+2}-->
                                <div class="product-block">
                                    <div class="product-img"><a href="home/${products[theCount.index+2].productId}.htm"><img src="${products[theCount.index+2].image}" alt=""></a></div>
                                    <div class="product-content">

                                        <h5>
                                            <a href="home/${products[theCount.index+2].productId}.htm" class="product-title">${products[theCount.index+2].productName}
                                            </a>
                                        </h5>
                                        <div class="product-meta">
                                            <a href="home/${products[theCount.index+2].productId}.htm" class="product-price">
                                                <fmt:formatNumber value="${products[theCount.index+2].price*1000}" type="cureency" pattern=",### VND" />
                                            </a>
                                        </div>
                                        <div class="shopping-btn">
                                            <!--<a href="#" class="product-btn btn-like"><i class="fa fa-heart"></i></a>-->
                                            <a href="<c:url value="home/addCart.htm?producid=${products[theCount.index+2].productId}&quantity=1" />" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td> 
                                <!--${theCount.count+3}-->
                                <div class="product-block">
                                    <div class="product-img"><a href="home/${products[theCount.index+3].productId}.htm"><img src="${products[theCount.index+3].image}" alt=""></a></div>
                                    <div class="product-content">

                                        <h5>
                                            <a href="home/${products[theCount.index+3].productId}.htm" class="product-title">${products[theCount.index+3].productName}
                                            </a>
                                        </h5>
                                        <div class="product-meta">
                                            <a href="home/${products[theCount.index+3].productId}.htm" class="product-price">
                                                <fmt:formatNumber value="${products[theCount.index+3].price*1000}" type="cureency" pattern=",### VND" />
                                            </a>
                                        </div>
                                        <div class="shopping-btn">
                                            <a href="<c:url value="home/addCart.htm?producid=${products[theCount.index+3].productId}&quantity=1" />" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </c:when>
                        <c:when test="${theCount.index+2 lt fn:length(products)}">
                            <td> 
                                <!--${theCount.count+1}-->
                                <div class="product-block">
                                    <div class="product-img"><a href="home/${products[theCount.index+1].productId}.htm"><img src="${products[theCount.index+1].image}" alt=""></a></div>
                                    <div class="product-content">

                                        <h5>
                                            <a href="home/${products[theCount.index+1].productId}.htm" class="product-title">${products[theCount.index+1].productName}
                                            </a>
                                        </h5>
                                        <div class="product-meta">
                                            <a href="home/${products[theCount.index+1].productId}.htm" class="product-price">
                                                <fmt:formatNumber value="${products[theCount.index+1].price*1000}" type="cureency" pattern=",### VND" />
                                            </a>
                                        </div>
                                        <div class="shopping-btn">
                                            <a href="<c:url value="home/addCart.htm?producid=${products[theCount.index+1].productId}&quantity=1" />" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <!--${theCount.count+2}-->
                                <div class="product-block">
                                    <div class="product-img"><a href="home/${products[theCount.index+2].productId}.htm"><img src="${products[theCount.index+2].image}" alt=""></a></div>
                                    <div class="product-content">

                                        <h5>
                                            <a href="home/${products[theCount.index+2].productId}.htm" class="product-title">${products[theCount.index+2].productName}
                                            </a>
                                        </h5>
                                        <div class="product-meta">
                                            <a href="home/${products[theCount.index+2].productId}.htm" class="product-price">
                                                <fmt:formatNumber value="${products[theCount.index+2].price*1000}" type="cureency" pattern=",### VND" />
                                            </a>
                                        </div>
                                        <div class="shopping-btn">
                                            <!--<a href="#" class="product-btn btn-like"><i class="fa fa-heart"></i></a>-->
                                            <a href="<c:url value="home/addCart.htm?producid=${products[theCount.index+2].productId}&quantity=1" />" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td></td>
                        </c:when>
                        <c:when test="${theCount.index+1 lt fn:length(products)}">
                            <td> 
                                <!--${theCount.count+1}-->
                                <div class="product-block">
                                    <div class="product-img"><a href="home/${products[theCount.index+1].productId}.htm"><img src="${products[theCount.index+1].image}" alt=""></a></div>
                                    <div class="product-content">

                                        <h5>
                                            <a href="home/${products[theCount.index+1].productId}.htm" class="product-title">${products[theCount.index+1].productName}
                                            </a>
                                        </h5>
                                        <div class="product-meta">
                                            <a href="home/${products[theCount.index+1].productId}.htm" class="product-price">
                                                <fmt:formatNumber value="${products[theCount.index+1].price*1000}" type="cureency" pattern=",### VND" />
                                            </a>
                                        </div>
                                        <div class="shopping-btn">
                                            <a href="<c:url value="home/addCart.htm?producid=${products[theCount.index+1].productId}&quantity=1" />" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td></td><td></td>
                        </c:when>
                        <c:otherwise>
                            <td></td>
                            <td></td>
                            <td></td>
                        </c:otherwise>    

                    </c:choose>


                </tr>

            </c:forEach>
        </tbody>
        <tfoot>
            <tr>

                <td></td>

            </tr>
        </tfoot>
    </table>
</div>
