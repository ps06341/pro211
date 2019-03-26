<%-- 
    Document   : register
    Created on : Feb 26, 2019, 11:20:26 PM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>

<style>
    .form-control{
        text-transform: none;

    }
    #registerForm{
        color: red;  
    }
</style>
<div class="page-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                <div class="page-breadcrumb">
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li>Register</li>
                    </ol>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- sign-up form -->
<div class="content">
    <div class="container">
        <div class="box sing-form">
            <div class="row">
                <div class="col-lg-offset-1 col-lg-5 col-md-offset-1 col-md-5 col-sm-12 col-xs-12 ">
                    <!-- form -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12 mb20">
                                <h3 class="mb10">Create Your Account</h3>
                                <p>Please fill all Resgister form Fields Below. </p>
                            </div>
                            ${message}
                            <form:form action="home/register.htm" method="POST" modelAttribute="abc" id="registerForm"> 
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label sr-only" for="username"> </label>
                                        <form:errors path="username" cssClass="error"/>
                                        <form:input path="username" name="username" class="form-control" placeholder="Enter Your Name" />

                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label  sr-only" for="password"></label>
                                        <form:password path="password"  class="form-control" placeholder="create your password"  />
                                        <form:errors path="password" cssClass="error"/>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label sr-only" for="fullname"> </label>
                                        <form:input path="fullname" class="form-control" placeholder="Enter Your Name" />
                                        <form:errors path="fullname" cssClass="error"/>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label sr-only" for="gender"> </label>
                                        <label>Gender</label>
                                        <form:radiobutton checked="checked" path="gender" value="true" label="Male"/>
                                        <form:radiobutton path="gender" value="false" label="Female"/>
                                        <form:errors path="gender" cssClass="error"/>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label sr-only" for="birthday"> </label>
                                        <form:input path="birthday"  type ="date"  class="form-control" placeholder="Enter Your Birthday" />
                                        <form:errors path="birthday" cssClass="error"/>
                                    </div>     
                                </div>

                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label sr-only" for="phone"> </label>
                                        <form:input path="phone" name="phone" class="form-control" placeholder="Enter Your Phone" />
                                        <form:errors path="phone" cssClass="error"/>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label sr-only" for="address"> </label>
                                        <form:input path="address" class="form-control" placeholder="Enter Your Address" />
                                        <form:errors path="address" cssClass="error"/>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label sr-only" for="email"> </label>
                                        <form:errors path="email" cssClass="error"/>
                                        <form:input path="email" name="email" type="email" class="form-control" placeholder="Enter Your Email" />

                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                                    <button type="submit" name="addCus" class="btn btn-primary btn-block mb10">Register</button>
                                    <div>
                                        <p>Have an Acount? <a href="home/login.htm">Login</a></p>
                                    </div>
                                </div>

                            </form:form>
                        </div>
                        <!-- /.form -->
                    </div>
                </div>
                <!-- features -->
                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 ">
                    <div class="box-body">
                        <div class="feature-left">
                            <div class="feature-icon">
                                <img src="./images/feature_icon_1.png" alt="">
                            </div>
                            <div class="feature-content">
                                <h4>Loyalty Points</h4>
                                <p>Aenean lacinia dictum risvitae pulvinar disamer seronorem ipusm dolor sit manert.</p>
                            </div>
                        </div>
                        <div class="feature-left">
                            <div class="feature-icon">
                                <img src="./images/feature_icon_2.png" alt="">
                            </div>
                            <div class="feature-content">
                                <h4>Instant Checkout</h4>
                                <p>Aenean lacinia dictum risvitae pulvinar disamer seronorem ipusm dolor sit manert.</p>
                            </div>
                        </div>
                        <div class="feature-left">
                            <div class="feature-icon">
                                <img src="./images/feature_icon_3.png" alt="">
                            </div>
                            <div class="feature-content">
                                <h4>Exculsive Offers</h4>
                                <p>Aenean lacinia dictum risvitae pulvinar disamer seronorem ipusm dolor sit manert.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.features -->
            </div>
        </div>
    </div>
</div>
<!-- /.sign-up form -->
