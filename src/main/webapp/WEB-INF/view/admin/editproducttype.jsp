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
                                    <h2>Product Type Management</h2>
                                    <p>Edit<span class="bread-ntd">Product Type</span></p>
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
                        <h2>Edit Product Type</h2>
                        <p>Place one add-on or button on either side of an input. You may also place one on both sides of an input. </p>
                    </div>
                    <div class="row">
                        <form:form action="admin/producttype.htm" method="POST" modelAttribute="protype">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group ic-cmp-int">
                                <div class="form-ic-cmp">
                                    <i class="notika-icon notika-star"></i>
                                </div>
                                <div class="nk-int-st">
                                    <form:input path="typeId" class="form-control" placeholder="ID"/>
                                </div>
                            </div>
                            <div class="form-group ic-cmp-int">
                                <div class="form-ic-cmp">
                                    <i class="notika-icon notika-star"></i>
                                </div>
                                <div class="nk-int-st">
                                    <form:input path="typeName" class="form-control" placeholder="Name"/>
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

                            <div class="summernote-clickable">
                                <button name="updatePT" class="btn btn-primary btn-sm hec-button">Update
                                </button>
                                <button class="btn btn-primary btn-sm hec-button">Reset
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
