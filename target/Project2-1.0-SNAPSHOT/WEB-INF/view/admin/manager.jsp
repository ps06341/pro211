<%-- 
    Document   : about
    Created on : Mar 3, 2019, 11:43:56 AM
    Author     : QuangPhu
--%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="breadcomb-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="breadcomb-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="breadcomb-wp">
                                <div class="breadcomb-icon">
                                    <i class="notika-icon notika-support"></i>
                                </div>
                                <div class="breadcomb-ctn">
                                    <h2>Manager Account</h2>
                                    <p>Welcome to Cửa sau <span class="bread-ntd">Nhật Tảo</span></p>
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
<!-- Invoice area Start-->
<div class="invoice-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="invoice-wrap">
                    <div class="invoice-img">
                        <img src="img/logo/logo.png" alt="" />
                    </div>
                    <hr/>
                    <div class="invoice-img">
                        <img src="${sessionScope.ava}"width="60" height="30" alt="" />
                    </div>
                    <div class="invoice-hds-pro">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="invoice-cmp-ds ivc-frm">
                                    
                                    <div class="invoice-frm">
                                        <span><i>Employee ID</i></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><i>Name</i></span>
                                    </div>
                                     <div class="invoice-frm">
                                        <span><i>Gender</i></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><i>Birth Day</i></span>
                                    </div>
                                     <div class="invoice-frm">
                                        <span><i>Start Day</i></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><i>Address</i></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><i>E-Mail</i></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><i>Phone</i></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><i>Salary</i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="invoice-cmp-ds ivc-to">
                                    
                                    <div class="invoice-frm">
                                        <span><b>${sessionScope.idemp}</b></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><b>${sessionScope.nameemp}</b></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><b>${sessionScope.genderemp?"Male":"Female"}</b></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><b>${sessionScope.birthdayemp}</b></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><b>${sessionScope.startdayemp}</b></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><b>${sessionScope.addressemp}</b></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><b>${sessionScope.emailemp}</b></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><b>${sessionScope.phoneemp}</b></span>
                                    </div>
                                    <div class="invoice-frm">
                                        <span><b><f:formatNumber value="${sessionScope.salaryemp*1000}" type="currency" pattern=",###,### VND"/></b></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Invoice area End-->
