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
<c:if test="${sessionScope.role == false}">
    <c:redirect url="/admin/index.htm"/>
</c:if>
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
                                    <h2>Employee Management</h2>
                                    <p>Edit <span class="bread-ntd">Employee</span></p>
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
                        <h2>Edit Employee</h2>
                        <p>Place one add-on or button on either side of an input. You may also place one on both sides of an input. </p>
                    </div>
                    <div class="row">
                        <form:form action="admin/employee.htm" method="POST" modelAttribute="emp" enctype="multipart/form-data">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-credit-card"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="empId" class="form-control" placeholder="ID" readonly="true"/>
                                    </div>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-star"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="name" class="form-control" placeholder="Name"/>
                                    </div>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-next"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>Gender</label>
                                        <form:select class="form-control" path="gender">
                                            <form:option value="1" label="Nam"/>
                                            <form:option value="0" label="Nữ"/>
                                        </form:select>
                                    </div>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="address" class="form-control" placeholder="Address"/>
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-calendar"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>Birth Day</label>
                                        <form:input path="birthday" type="date" class="form-control"/>
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="email" class="form-control" placeholder="E-Mail"/>
                                    </div>
                                </div>
                                
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="phone" class="form-control" placeholder="Phone Number"/>
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                         <form:input path="salary" class="form-control" placeholder="Salary"/>
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-calendar"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>Start Day</label>
                                        <form:input path="startDay" type="date" class="form-control"/>
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-calendar"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>End Day</label>
                                        <form:input path="endDay" type="date" class="form-control"/>
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-support"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="image" type="file" class="form-control"/>
                                        <form:input path="image" type="hidden" class="form-control"/>
                                    </div>
                                </div>
                                
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-credit-card"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="account.username" class="form-control" placeholder="Account ID" readonly="true"/>
                                    </div>
                                </div>

                                <div class="summernote-clickable">
                                    <button name="editEmp" class="btn btn-primary btn-sm hec-button">Update
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
