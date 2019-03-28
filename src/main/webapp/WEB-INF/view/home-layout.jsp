<%-- 
    Document   : admin-layout
    Created on : Jan 20, 2019, 10:27:44 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="create ecommerce website template for your online store, responsive mobile templates">
        <meta name="keywords" content="ecommerce website templates, online store,">
        <title> <s:message code="${index.title}" /></title>
        <base href="${pageContext.servletContext.contextPath}/">
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Style CSS -->
        <link href="css/style.css" rel="stylesheet">
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
        <!-- owl-carousel -->
        <link href="css/owl.carousel.css" rel="stylesheet">
        <link href="css/owl.theme.default.css" rel="stylesheet">
        <!-- FontAwesome CSS -->
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    <link href="css/font-awesome.min.css" rel="stylesheet"><!contactus-->
    <!-- owl-carousel --> <!about-->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.default.css" rel="stylesheet">
    <!-- FontAwesome CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet"><!-- /.about -->
    <!-- DataTable Data-->
    <link href="css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <script src="js/effect.js" type="text/javascript"></script>

</head>
<body>

    <!-- header-->
    <%@include file="home/header.jsp" %>
    <!-- /.header-->

    <!-- slider -->
    <jsp:include page="${index.carousel}" ></jsp:include>
        <!-- /.slider -->

        <!--CONTENT -->   
    <jsp:include page="${index.content}" ></jsp:include>
        <!-- /.CONTENT -->    


        <!-- features Dynamic page-->
    <jsp:include page="${index.feature}" ></jsp:include>
        <!-- /.features -->

        <!-- footer -->
    <%@include file="home/footer.jsp" %>

    <!-- /.footer -->
    <!-- Javascript --> 



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

    <script src="js/jquery.min.js" type="text/javascript"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/menumaker.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery.sticky.js"></script>
    <script type="text/javascript" src="js/sticky-header.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/multiple-carousel.js"></script>
    <script type="text/javascript" src="js/effect.js"></script>
    <!-- DataTable Data-->
    <script type="text/javascript" src="js/data-table/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/data-table/data-table-act.js"></script>

    <!-- Javascript validation form --> 
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>
    <script type="text/javascript" src="js/register.js"></script> 

</body>
</html>
