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
                                    <h2>Account Management</h2>
                                    <p>Add New <span class="bread-ntd">Account</span></p>
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
                        <h2>Add New Account</h2>
                        <p>Place one add-on or button on either side of an input. You may also place one on both sides of an input. </p>
                    </div>
                    <div class="row">
                        <form:form action="admin/account.htm" method="POST" modelAttribute="acc">
                            <div class="text-danger" align="center">${message}</div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-credit-card"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="username" class="form-control" placeholder="Username"/>
                                    </div>
                                    <form:errors path="username" class="text-danger"/>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-credit-card"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:password path="password" class="form-control" placeholder="Password"/>
                                    </div>
                                    <form:errors path="password" class="text-danger"/>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-next"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>Role</label>
                                        <form:select class="form-control" path="role">
                                            <form:option value="0" label="Admin"/>
                                            <form:option value="1" label="Employee"/>
                                        </form:select>
                                    </div>
                                </div>

                                <div class="summernote-clickable">
                                    <button name="addAc" class="btn btn-primary btn-sm hec-button">Add
                                    </button>
                                    <button name="rsAc" class="btn btn-primary btn-sm hec-button">Reset
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
                                    <th>Username</th>
                                    <th>Role</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="row" items="${ac}">
                                    <tr>
                                        <td>${row.username}</td>
                                        <td>${row.role?"Employee":"Admin"}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>Username</th>
                                    <th>Role</th>
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
<c:if test="${sessionScope.role == true}">
    <c:redirect url="admin/index.htm"/>
</c:if>
