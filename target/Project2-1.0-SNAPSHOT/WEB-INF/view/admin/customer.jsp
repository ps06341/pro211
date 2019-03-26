<%-- 
    Document   : producttype
    Created on : Mar 3, 2019, 9:56:45 AM
    Author     : QuangPhu
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<c:if test="${sessionScope.role == false}">
    <c:redirect url="/admin/index.htm"/>
</c:if>
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
                                    <th>Birth Day</th>
                                    <th>Phone</th>
                                    <th>Address</th>
                                    <th>Email</th> 
                                </tr>
                            </thead>
                            <tbody>
                               <c:forEach var="row" items="${listcus}">
                                    <tr>
                                        <td>${row.username}</td>
                                        <td>${row.fullname}</td>
                                        <td>${row.gender?"Nam":"Nữ"}</td>
                                        <td>${row.birthday}</td>
                                        <td>${row.phone}</td>
                                        <td>${row.address}</td>
                                        <td>${row.email}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
