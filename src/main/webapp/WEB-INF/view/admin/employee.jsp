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
                                    <h2>Employee Management</h2>
                                    <p>Add New <span class="bread-ntd">Employee</span></p>
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
                        <h2>Add New Employee</h2>
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
                                        <form:input path="empId" class="form-control" placeholder="ID"/>
                                    </div>
                                    <form:errors path="empId" class="text-danger"/>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-star"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="name" class="form-control" placeholder="Name"/>
                                    </div>
                                    <form:errors path="name" class="text-danger"/>
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
                                    <form:errors path="address" class="text-danger"/>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-calendar"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>Birth Day</label>
                                        <form:input path="birthday" type="date" class="form-control"/>
                                    </div>
                                    <form:errors path="birthday" class="text-danger"/>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="email" class="form-control" placeholder="E-Mail"/>
                                    </div>
                                    <form:errors path="email" class="text-danger"/>
                                </div>
                                
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <form:input path="phone" class="form-control" placeholder="Phone Number"/>
                                    </div>
                                    <form:errors path="phone" class="text-danger"/>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                         <form:input path="salary" class="form-control" placeholder="Salary"/>
                                    </div>
                                    <form:errors path="salary" class="text-danger"/>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-calendar"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>Start Day</label>
                                        <form:input path="startDay" type="date" class="form-control"/>
                                    </div>
                                    <form:errors path="startDay" class="text-danger"/>
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
                                    </div>
                                </div>
                                
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-credit-card"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <a href="admin/account.htm">Create Account?</a>
                                        <form:input path="account.username" class="form-control" placeholder="Account ID"/>
                                    </div>
                                </div>

                                <div class="summernote-clickable">
                                    <button name="addEmp" class="btn btn-primary btn-sm hec-button">Add
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
                                    <th>Gender</th>
                                    <th>Birthday</th>
                                    <th>Address</th>
                                    <th>E-Mail</th>
                                    <th>Phone</th>
                                    <th>Salary</th>
                                    <th>Start day</th>
                                    <th>End day</th>
                                    <th>Image</th>
                                    <th>Role</th>
                                    <th>Username</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="row" items="${ep}">
                                    <tr>
                                        <td>${row.empId}</td>
                                        <td>${row.name}</td>
                                        <td>${row.gender?"Nam":"Nữ"}</td>
                                        <td>${row.birthday}</td>
                                        <td>${row.address}</td>
                                        <td>${row.email}</td>
                                        <td>${row.phone}</td>
                                        <td>${row.salary}</td>
                                        <td>${row.startDay}</td>
                                        <td>${row.endDay}</td>
                                        <td><img src="img/${row.image}"width="30" height="30"></td>
                                        <td>${row.account.role?"Admin":"Employee"}</td>
                                        <td>${row.account.username}</td>
                                        <c:url var="edit" value="admin/editemployee.htm">
                                            <c:param name="id" value="${row.empId}"/>
                                            <c:param name="name" value="${row.name}"/>
                                            <c:param name="gender" value="${row.gender}"/>
                                            <c:param name="birth" value="${row.birthday}"/>
                                            <c:param name="address" value="${row.address}"/>
                                            <c:param name="email" value="${row.email}"/>
                                            <c:param name="phone" value="${row.phone}"/>
                                            <c:param name="salary" value="${row.salary}"/>
                                            <c:param name="sday" value="${row.startDay}"/>
                                            <c:param name="eday" value="${row.endDay}"/>
                                            <c:param name="img" value="${row.image}"/>
                                            <c:param name="username" value="${row.account.username}"/>
                                        </c:url>
                                        <td><a class="btn btn-primary btn-sm hec-button" href="${edit}">Edit</a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Gender</th>
                                    <th>Birthday</th>
                                    <th>Address</th>
                                    <th>E-Mail</th>
                                    <th>Phone</th>
                                    <th>Salary</th>
                                    <th>Start day</th>
                                    <th>End day</th>
                                    <th>Image</th>
                                    <th>Role</th>
                                    <th>Username</th>
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
