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
                                    <h2>Producer Management</h2>
                                    <p>Add New <span class="bread-ntd">Producer</span></p>
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
                        <h2>Add New Producer</h2>
                        <p>Place one add-on or button on either side of an input. You may also place one on both sides of an input. </p>

                    </div>
                    <div class="row">
                        <form:form action="admin/producer.htm" method="POST" modelAttribute="pro">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-star"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="producerName" class="form-control" placeholder="Name"/>                                        
                                    </div>                                  
                                    <form:errors path="producerName" class="text-danger"/>
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
                                    <button name="add" class="btn btn-primary btn-sm hec-button">Add
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
                                    <th>Image</th>
                                    <th>Edit</th>  
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="row" items="${pd}">
                                    <tr>
                                        <td>${row.producerId}</td>
                                        <td>${row.producerName}</td>
                                        <td><img src="${row.image}"width="30" height="30"></td>
                                        <c:url var="edit" value="admin/edit.htm">
                                            <c:param name="id" value="${row.producerId}"/>
                                            <c:param name="name" value="${row.producerName}"/>
                                        </c:url>
                                        <td><a class="btn btn-primary btn-sm hec-button" href="${edit}">Edit</a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
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
