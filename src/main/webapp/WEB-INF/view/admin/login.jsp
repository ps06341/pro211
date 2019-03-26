<%-- 
    Document   : login
    Created on : Mar 14, 2019, 3:19:06 PM
    Author     : QuangPhu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <base href="${pageContext.servletContext.contextPath}/">
        <!--<title>JSP Page</title>-->
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Login Administrator | Cửa Sau Nhật Tảo</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Google Fonts
                    ============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/bootstrap.min.css">
        <!-- font awesome CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/font-awesome.min.css">
        <!-- owl.carousel CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/owl.carousel.css">
        <link rel="stylesheet" href="css-admin/owl.theme.css">
        <link rel="stylesheet" href="css-admin/owl.transitions.css">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/animate.css">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/normalize.css">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- wave CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/wave/waves.min.css">
        <!-- Notika icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/notika-custom-icon.css">
        <!-- main CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/main.css">
        <!-- style CSS
                    ============================================ -->
        <link rel="stylesheet" href="style.css">
        <!-- responsive CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/responsive.css">
        <!-- modernizr JS
                    ============================================ -->
        <script src="js-admin/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- Login Register area Start-->
        <div class="login-content">
            <!-- Login -->

            <div class="nk-block toggled" id="l-login">
                <form:form action="admin/login.htm" method="POST" modelAttribute="acc">
                    <div class="nk-form">
                        <div class="input-group">
                            <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-support"></i></span>
                            <div class="nk-int-st">
                                <form:input path="username" class="form-control" placeholder="Username"/>
                            </div>
                                <form:errors path="username" class="text-danger"/>
                        </div>
                        <div class="input-group mg-t-15">
                            <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-edit"></i></span>
                            <div class="nk-int-st">
                                <form:password path="password" class="form-control" placeholder="Password"/>
                            </div>
                            <form:errors path="password" class="text-danger"/>
                        </div>
                        
                        <div class="fm-checkbox">
                            <label><input type="checkbox" class="i-checks"> <i></i> Keep me signed in</label>
                        </div>
                        <div class="summernote-clickable">
                            <button name="loginad" class="btn btn-primary btn-sm hec-button">Login
                            </button>

                        </div>
                    </div>
                </form:form>
                <div class="nk-navigation nk-lg-ic">
                    <a href="#" data-ma-action="nk-login-switch" data-ma-block="#l-forget-password"><i>?</i> <span>Forgot Password</span></a>
                </div>
            </div>

            <!-- Forgot Password -->
            <div class="nk-block" id="l-forget-password">
                <div class="nk-form">
                    <p class="text-left">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu risus. Curabitur commodo lorem fringilla enim feugiat commodo sed ac lacus.</p>

                    <div class="input-group">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-mail"></i></span>
                        <div class="nk-int-st">
                            <input type="text" class="form-control" placeholder="Email Address">
                        </div>
                    </div>

                    <a href="#l-login" data-ma-action="nk-login-switch" data-ma-block="#l-login" class="btn btn-login btn-success btn-float"><i class="notika-icon notika-right-arrow"></i></a>
                </div>

                <div class="nk-navigation nk-lg-ic rg-ic-stl">
                    <a href="" data-ma-action="nk-login-switch" data-ma-block="#l-login"><i class="notika-icon notika-right-arrow"></i> <span>Sign in</span></a>
                    <a href="" data-ma-action="nk-login-switch" data-ma-block="#l-register"><i class="notika-icon notika-plus-symbol"></i> <span>Register</span></a>
                </div>
            </div>
        </div>

    </body>
</html>
