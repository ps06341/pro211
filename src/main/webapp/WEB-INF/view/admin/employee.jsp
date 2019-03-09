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
                        <form>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <label>Account Information</label>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-credit-card"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <input type="text" class="form-control" placeholder="Username">
                                    </div>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-credit-card"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <input type="password" class="form-control" placeholder="Password">
                                    </div>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-next"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>Role</label>
                                        <select class="form-control" id="sel1">
                                            <option>1</option>
                                        </select>
                                    </div>
                                </div>
                                <label>Employee Information</label>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-credit-card"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <input type="text" class="form-control" placeholder="ID">
                                    </div>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-star"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <input type="text" class="form-control" placeholder="Name">
                                    </div>
                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-dollar"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <input type="radio" name="gender"> Male
                                        <input type="radio" name="gender"> Female
                                    </div>

                                </div>
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <input type="text" class="form-control" placeholder="Address">
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-calendar"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>Birthday</label>
                                        <input type="date" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <input type="text" class="form-control" placeholder="E-Mail">
                                    </div>
                                </div>
                                
                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <input type="text" class="form-control" placeholder="Phone Number">
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-edit"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <input type="text" class="form-control" placeholder="Salary">
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-calendar"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>Start day</label>
                                        <input type="date" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-calendar"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <label>End day</label>
                                        <input type="date" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group ic-cmp-int">
                                    <div class="form-ic-cmp">
                                        <i class="notika-icon notika-support"></i>
                                    </div>
                                    <div class="nk-int-st">
                                        <input type="file" class="form-control">
                                    </div>
                                </div>

                                <div class="summernote-clickable">
                                    <button class="btn btn-primary btn-sm hec-button">Add
                                    </button>
                                    <button class="btn btn-primary btn-sm hec-button">Reset
                                    </button>
                                </div>
                            </div>
                        </form>
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
                                        <td>${row.startDay}</td>
                                        <td>${row.endDay}</td>
                                        <td><img src="${row.image}"></td>
                                        <td>${row.account.username?"Admin":"Employee"}</td>
                                        <td>${row.account.username}</td>              
                                        <td>Test</td>
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
