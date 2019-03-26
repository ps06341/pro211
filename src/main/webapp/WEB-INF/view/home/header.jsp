<%-- 
    Document   : header
    Created on : Feb 25, 2019, 12:35:16 PM
    Author     : Admin
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- top-header-->
<div class="top-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-7 col-sm-6 hidden-xs">
                <p class="top-text">Flexible Delivery, Fast Delivery.</p>
            </div>
            <div class="col-lg-4 col-md-5 col-sm-6 col-xs-12">
                <ul>
                    <!--<li>${sessionScope.username }<a  href="${pageContext.request.contextPath }/home/logout.htm">Logout</a></li>--> 
                    <li>(028) 3526 8799</li>
                    <li>caodang@fpt.edu.vn</li>
                    <!--<li><a href="home/help.htm">Help</a></li>-->
                </ul>
            </div>
        </div>
        <!-- /.top-header-->
    </div>
</div>
<!-- header-section-->
<div class="header-wrapper">
    <div class="container">
        <div class="row">
            <!-- logo -->
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-8">
                <div class="logo">
                    <a href="home/index.htm"><img src="${index.logo}" alt=""> </a>
                </div>
            </div>
            <!-- /.logo -->
            <!-- search -->

            <form:form action="home/search.htm" method="GET"  >
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="search-bg">
                        <input type="text" class="form-control" placeholder="Search Here" name="searchField">
                        <button type="Submit" name="search"><i class="fa fa-search"></i></button>
                    </div>
                </div>
            </form:form>

            <!-- /.search -->
            <!-- account -->
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <div class="account-section">
                    <!--                    <ul>
                                            <li><a href="home/login.htm" class="title hidden-xs"><s:message code="global.menu.myaccount"/></a></li>
                                            <li class="hidden-xs">|</li>
                                            <li><a href="home/register.htm" class="title hidden-xs"><s:message code="global.meny.register"/></a></li>
                                            <li><a href="home/cart.htm" class="title"><i class="fa fa-shopping-cart"></i><sup class="cart-quantity">0</sup></a>
                                            </li>
                                        </ul>-->
                    <ul>
                        <c:choose>
                            <c:when test="${sessionScope.username==null}">
                                <li><a href="home/login.htm" class="title hidden-xs"><s:message code="global.menu.myaccount"/></a></li>
                                <li class="hidden-xs">|</li>
                                <li><a href="home/register.htm" class="title hidden-xs"><s:message code="global.meny.register"/></a></li>
                                </c:when>    
                                <c:otherwise>
                                <li>Xin chao:  ${sessionScope.username}</li>

                                <a href="${pageContext.request.contextPath }/home/logout.htm"> Logout <img src="../../../images/exit.png" alt="Logout"/></a>


                            </c:otherwise>
                        </c:choose>
                        <li><a href="home/cart.htm" class="title"><i class="fa fa-shopping-cart"></i>
                                <!--<sup class="cart-quantity">1</sup>-->

                                <c:choose>
                                    <c:when test="${sessionScope.shoppingcart==null}">
                                        <sup class="cart-quantity">0</sup>
                                    </c:when>    
                                    <c:otherwise>
                                        <c:set var="cart" value="${sessionScope.shoppingcart}" />
                                        <c:set var="count" value="0" />
                                        <c:forEach var="row" items="${cart}">
                                            <c:set var="count" value="${count+1}" />
                                        </c:forEach>
                                        <sup class="cart-quantity">${count}</sup>
                                    </c:otherwise>
                                </c:choose>
                            </a>
                        </li>

                    </ul>         

                </div>
                <!-- /.account -->
            </div>
            <!-- search -->
        </div>
    </div>
    <!-- navigation -->
    <div class="navigation">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <!-- navigations-->
                    <div id="navigation">
                        <ul>
                            <li class="active"><a href="home/index.htm"><s:message code="global.menu.home"/></a></li>
                            <li class="">
                                <a href="home/product.htm"><s:message code="global.menu.product"/></a>
                            </li>
                            <li><a href="home/about.htm"><s:message code="global.menu.about"/></a>
                            </li>
                            <li><a href="home/contact.htm"><s:message code="global.menu.contact"/></a>
                            </li>
<!--                            <li class="has-sub"><a href="#"><s:message code="global.menu.service"/></a>
                                <ul>
                                    <li><a href="delivery.html">Shipping & Delivery</a></li>
                                    <li><a href="exchange.html">Return/Exchanges</a></li>
                                </ul>
                            </li>-->
                            <li class="has-sub"><a href="#"><s:message code="global.menu.language"/></a>
                                <ul>
                                    <li><a href="#" data-lang="vi">Vietnamese</a></li>
                                    <li><a href="#" data-lang="en">English</a></li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
                <!-- /.navigations-->
            </div>
        </div>
    </div>
</div>
<!-- /. header-section-->