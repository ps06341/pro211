<%-- 
    Document   : producttype
    Created on : Mar 3, 2019, 9:56:45 AM
    Author     : QuangPhu
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!-- Breadcomb area Start-->
<div class="breadcomb-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="breadcomb-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="breadcomb-wp">
                                <div class="breadcomb-icon">
                                    <i class="notika-icon notika-form"></i>
                                </div>
                                <div class="breadcomb-ctn">
                                    <h2>Product Management</h2>
                                    <p>Add New <span class="bread-ntd">Product</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
                            <div class="breadcomb-report">
                                <button data-toggle="tooltip" data-placement="left" title="Download Report" class="btn"><i class="notika-icon notika-sent"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcomb area End-->
<!-- Form Element area Start-->
<div class="form-element-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="form-element-list">
                    <div class="cmp-tb-hd bcs-hd">
                        <h2>Add New Product</h2>
                        <p>Place one add-on or button on either side of an input. You may also place one on both sides of an input. </p>
                    </div>
                    <div class="row">
                        <form:form action="admin/product.htm" method="POST" modelAttribute="prod" enctype="multipart/form-data">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-credit-card"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="productId" class="form-control" placeholder="ID"/>
                                    </div>
                                    <form:errors path="productId" class="text-danger"/>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-star"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="productName" class="form-control" placeholder="Name"/>
                                    </div>
                                    <form:errors path="productName" class="text-danger"/>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-dollar"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="price" class="form-control" placeholder="Price"/>
                                    </div>
                                    <form:errors path="price" class="text-danger"/>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="quantity" name="quantity" class="form-control" placeholder="Quantity"/>
                                    </div>
                                    <form:errors path="quantity" class="text-danger"/>
                                </div>

                                <form:input path="status" value="1" type="hidden" class="form-control" placeholder="Status"/>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-calendar"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>Product Day</label>
                                        <form:input path="productDAY" type="date" class="form-control"/>
                                    </div>
                                    <form:errors path="productDAY" class="text-danger"/>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>Producer:</label>
                                        <form:select class="form-control" path="producer.producerId" items="${producers}"
                                                     itemValue="producerId" itemLabel="producerName"/>
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>Type:</label>
                                        <form:select class="form-control" path="productType.typeId" items="${producttypes}"
                                                     itemValue="typeId" itemLabel="typeName"/>
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-tax"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:textarea path="describe" class="form-control" rows="5" id="comment" placeholder="Description"/>
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-support"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="image" type="file" class="form-control"/>
                                    </div>
                                </div>

                                <div class="summernote-clickable">
                                    <button name="addPro" class="btn btn-primary btn-sm hec-button">Add
                                    </button>
                                    <button name="reset" class="btn btn-primary btn-sm hec-button">Reset
                                    </button>
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Data Table area Start-->
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
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Day</th>
                                    <th>Type</th>
                                    <th>Producer</th>
                                    <th>Status</th>
                                    <th>Description</th>
                                    <th>Image</th>
                                    <th>Edit</th>  
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="row" items="${pro}">
                                    <tr>
                                        <td>${row.productId}</td>
                                        <td>${row.productName}</td>
                                        <td>${row.price}</td>
                                        <td>${row.quantity}</td>
                                        <td>${row.productDAY}</td>
                                        <td>${row.productType.typeName}</td>
                                        <td>${row.producer.producerName}</td>
                                        <c:choose>
                                            <c:when test="${row.quantity <= 0}">
                                                <c:set var="dd" value="Out of stock"/>
                                                <td><font color="red"><strong>${dd}</strong></red></td>
                                            </c:when>
                                            <c:otherwise>
                                                 <c:set var="dd" value="Stock"/>
                                                <td><font color="green"><strong>${dd}</strong></red></td>
                                            </c:otherwise>
                                        </c:choose>
                                                <td>${row.describe}</td>
                                                <td><img src="img/${row.image}"width="30" height="30"></td>
                                                    <c:url var="edit" value="admin/editproduct.htm">
                                                        <c:param name="id" value="${row.productId}"/>
                                                        <c:param name="name" value="${row.productName}"/>
                                                        <c:param name="price" value="${row.price}"/>
                                                        <c:param name="quantity" value="${row.quantity}"/>
                                                        <c:param name="pday" value="${row.productDAY}"/>
                                                        <c:param name="status" value="${row.status}"/>
                                                        <c:param name="type" value="${row.productType.typeId}"/>
                                                        <c:param name="pro" value="${row.producer.producerId}"/>
                                                        <c:param name="describe" value="${row.describe}"/>
                                                        <c:param name="img" value="${row.image}"/>
                                                    </c:url>
                                                <td><a name="addPRO" href="${edit}" class="btn btn-primary btn-sm hec-button">Edit
                                                    </a></td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Price</th>
                                                <th>Quantity</th>
                                                <th>Day</th>
                                                <th>Type</th>
                                                <th>Producer</th>
                                                <th>Status</th>
                                                <th>Description</th>
                                                <th>Image</th>
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
