<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
        <title>Home Page</title>
        <style>
    .form-control{
        text-transform: none;
    }
</style>
    </head>
    <body>

        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                        <div class="page-breadcrumb">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li>New Password</li>
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
                                        <h3 class="mb10">Enter New Password: ${email}</h3>
                                    </div>

                                    <form:form action="home/newPassword.htm" method="POST" modelAttribute="customer" id="registerForm">                                 
                                                    <input name="email" type="hidden" value ="${email}">                                         
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <label class="control-label sr-only" for="password"></label>
                                                <div class="login-input">
                                                    <a>Password<input name="password" type="password" class="form-control" placeholder="********"></a>  

                                                   
                                                </div>
                                            </div>
                                                 <br/>
                                        </div>
                                       
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20 ">
                                            <button name="reset" class="btn btn-primary btn-block mb10" type="Submit">Save</button>


                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>