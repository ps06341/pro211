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
                        <form:form action="admin/product.htm" method="POST" modelAttribute="prod">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-credit-card"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="productId" class="form-control" placeholder="ID"/>
                                    </div>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-star"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="productName" class="form-control" placeholder="Name"/>
                                    </div>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-dollar"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="price" class="form-control" placeholder="Price"/>
                                    </div>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="quantity" class="form-control" placeholder="Quantity"/>
                                    </div>
                                </div>

                                <form:input path="status" value="0" type="hidden" class="form-control" placeholder="Status"/>

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
                                        <td>${row.productType.typeName}</td>
                                        <td>${row.producer.producerName}</td>
                                        <c:if test="${row.quantity == 0}">
                                            <c:set var="dd" value="Hết hàng"/>
                                            <td bgcolor="#FF0000">${dd}</td>
                                        </c:if>
                                        <c:if test="${row.quantity > 0}">
                                            <c:set var="dd" value="Còn hàng"/>
                                            <td>${dd}</td>
                                        </c:if>
                                        
                                        <td>${row.describe}</td>
                                        <td><img src="${row.image}"></td>
                                        <td><button name="addPRO" class="btn btn-primary btn-sm hec-button">Edit
                                            </button></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
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
