<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
    .form-control{
        text-transform: none;
    }

</style>
<%-- 
    Document   : contact
    Created on : Feb 25, 2019, 3:32:24 PM
    Author     : Admin
--%>
<br/>
<!-- page-header -->
<div class="page-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                <div class="page-breadcrumb">
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li>Contact</li>
                    </ol>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- /.page-header-->
<div class="content">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="box">
                    <div class="box-head">
                        <h2 class="head-title">Contact Us</h2>
                    </div>
                    <div class="box-body contact-form">
                        <div class="row">
                            <form action="home/contact.htm" method="POST">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label sr-only" for="name"></label>
                                        <input name="name" type="text" placeholder="Your  Name" class="form-control" required>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label sr-only" for="phone"></label>
                                        <input name="phone" type="text" placeholder="Enter your Mobile Number" class="form-control" required>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label sr-only" for="email"></label>
                                        <input name="from" type="email" placeholder="Enter Email Address" class="form-control" required>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label sr-only" for="name"></label>
                                        <input name="subject" type="text" placeholder="Your Subject" class="form-control" required>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label sr-only" for="textarea"></label>
                                        <textarea class="form-control" name="body" rows="4" placeholder="Messages"></textarea>
                                    </div>
                                    <button type="submit" name="send" class="btn btn-primary">submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.contact-form -->
            <!-- address-block -->
            <!-- address-block -->
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="box">
                    <div class="box-head">
                        <h2 class="head-title">Thông tin</h2>
                    </div>
                    <div class="box-body">
                        <div class="contact-block">
                            <h4>Địa chỉ</h4>
                            <p>391A Nam Kỳ Khởi Nghĩa, Q. 3, TP. Hồ Chí Minh</p>
                        </div>

                        <div class="contact-block">
                            <h4>Liên lạc</h4>
                            <p class="mb0">Phone: <span class="text-default">(028) 3526 8799</span></p>
                            <p class="mb0">Email: <span class="text-default">caodang@fpt.edu.vn</span></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.address-block -->
            <!-- /.address-block -->
        </div></div></div>
