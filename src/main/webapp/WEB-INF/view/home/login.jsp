<%-- 
    Document   : login
    Created on : Feb 26, 2019, 11:20:18 PM
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
    h5{
        color: red;
    }
</style>
 <!-- login-form -->
<div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                   
                        <div class="page-breadcrumb">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li>Login</li>
                            </ol>
                        </div>
                   
                </div>
            </div>
        </div>
    </div>

    <div class="content">
        <div class="container">
            <div class="box">
                <div class="row">
                    <div class="col-lg-offset-1 col-lg-5 col-md-offset-1 col-md-5 col-sm-12 col-xs-12 ">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12 mb20">
                                    <h3 class="mb10">Login</h3>
                                </div>
                                <!-- form -->
                                <h5>${message}</h5>
                                <form:form action="home/login.htm" method="POST" modelAttribute="customer" >
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label sr-only" for="username"></label>
                                            <div class="login-input">
                                                <form:input path="username" name="username" type="text" class="form-control" placeholder="Enter your username"/>
                                                <form:errors path="username" cssClass="error"/>
                                                <div class="login-icon"><i class="fa fa-user"></i></div>
                                            </div>
                                        </div>

                                       
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label sr-only"></label>
                                            <div class="login-input">
                                                 <form:errors path="password" cssClass="error"/>
                                                <form:input path="password" name="password" type="password" class="form-control" placeholder="******"/>
                                              
                                                <div class="login-icon"><i class="fa fa-lock"></i></div>
                                            </div>
                                        </div>

                                        </div>
                                  
                                                   
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20 ">
                                        <button name="showLog" class="btn btn-primary btn-block mb10">Login</button>
                                         <p><a href="home/forgotPassword.htm">Forgot Password</a></p>
                                        <div>
                                            <p>Have an Acount? <a href="home/register.htm">Register</a></p>
                                           
                                        </div>
                                    </div>
                               
                                                 </form:form>    
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                                    <h4 class="mb20">Login With</h4>
                                    <div class="social-media">
<!--                                        <a href="#" class="btn-social-rectangle btn-facebook"><i class="fa fa-facebook"></i><span class="social-text">Facebook</span></a>
                                        <a href="#" class="btn-social-rectangle btn-twitter"><i class="fa fa-twitter"></i><span class="social-text">Twitter</span> </a>-->
                                       <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8084/home/login-google.htm&response_type=code
		&client_id=1041509928154-86kdokjql1481hbhmg3jqchj1ggllmbi.apps.googleusercontent.com&approval_prompt=force" class="btn-social-rectangle btn-googleplus"><i class="fa fa-google-plus"></i><span class="social-text">Google Plus</span></a>
                                    </div>
                                </div>
                                         
                                    <!-- /.form -->
                           
                        </div>
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
       <!-- /.login-form -->