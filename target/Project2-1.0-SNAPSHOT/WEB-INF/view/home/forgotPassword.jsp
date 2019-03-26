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
    .container{
        margin-left: auto;
    }
</style>
<!-- login-form -->
<div class="page-header" >
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                <div class="page-breadcrumb">
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li>Forgot Password</li>
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
                                <h3 class="mb10">Enter your email address:</h3>
                            </div>
                            <!-- form -->
                           
                            <form:form action="home/checkEmail.htm" method="POST">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label sr-only" for="email"></label>
                                            <div class="login-input">                                               
                                                    <input class="form-control" type="text" name="email">
                                                
                                                <div class="login-icon"><i class="fa fa-user"></i></div>
                                            </div>
                                        </div>

                                        </div>
                                         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20 ">
                                             <button name="mail" class="btn btn-primary btn-block mb10" type="Submit">Reset Password</button>
                                         
                                        
                                    </div>
                            </form:form>


                            <!-- /.form -->
                        </div>
                    </div>
                </div>
                <!-- features -->
               
                <!-- /.features -->
            </div>
        </div>
    </div>
</div>
<!-- /.login-form -->