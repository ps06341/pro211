<%-- 
    Document   : producttype
    Created on : Mar 3, 2019, 9:56:45 AM
    Author     : QuangPhu
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<div class="data-table-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="data-table-list">
                    <div class="basic-tb-hd">
                        <h2>Show Table</h2>
                    </div>
                    <div class="table-responsive">
                        <table id="data-table-basic" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Product</th>
                                    <th>Quantity</th>
                                    <th>Order Day</th>
                                    <th>Description</th>
                                    <th>Status</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="row" items="${orderlist}">
                                    <tr>
                                        <td>${row.orders.orderId}</td>
                                        <td>${row.orders.customer.fullname}</td>
                                        <td>${row.product.productName}</td>
                                        <td>${row.quantity}</td>
                                        <td>${row.orders.orderDay}</td>                                
                                        <td>${row.orders.describe}</td>
                                        <c:choose>
                                            <c:when test="${row.orders.status == true}">
                                                <c:set var="dd" value="Confirm"/>
                                                <td><font color="green"><strong>${dd}</strong></red></td>
                                            </c:when>
                                            <c:otherwise>
                                                    <c:set var="dd" value="Cancel"/>
                                            <td><font color="red"><strong>${dd}</strong></red></td>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${row.orders.status == true}">
                                        <td><a class="btn btn-primary btn-sm hec-button">Edit</a></td>
                                            </c:when>
                                            <c:otherwise>
                                        <td><a class="btn btn-primary btn-sm hec-button" href="${edit}">Edit</a></td>        
                                            </c:otherwise>
                                        </c:choose>
                                    </tr>
                                </c:forEach>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Product</th>
                                    <th>Quantity</th>
                                    <th>Order Day</th>
                                    <th>Description</th>
                                    <th>Status</th>
                                    <th>Edit</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Data Table area End-->

