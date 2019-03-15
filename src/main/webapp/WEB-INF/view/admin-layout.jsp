<%-- 
    Document   : admin-layout
    Created on : Mar 2, 2019, 9:17:23 PM
    Author     : QuangPhu
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <base href="${pageContext.servletContext.contextPath}/">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title><s:message code="${indexAdmin.title}"/></title>
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
        <!-- meanmenu CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/meanmenu/meanmenu.min.css">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/animate.css">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/normalize.css">
        <!-- wave CSS
                ============================================ -->
        <link rel="stylesheet" href="css-admin/wave/waves.min.css">
        <link rel="stylesheet" href="css-admin/wave/button.css">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- Notika icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/notika-custom-icon.css">
        <!-- Data Table JS
                    ============================================ -->
        <link rel="stylesheet" href="css-admin/jquery.dataTables.min.css">
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
        <!-- Start Header Top Area -->
        <%@include file="admin/header.jsp" %>
        <!-- End Header Top Area -->
        <!-- Main Menu area start-->
        <c:choose>
            <c:when test="${sessionScope.role == false}">
                <%@include file="admin/navigationemp.jsp" %>
            </c:when>
            <c:otherwise>
                <%@include file="admin/navigation.jsp" %>
            </c:otherwise>
        </c:choose>
        <!-- Main Menu area End-->
        <!-- Start Status area -->
        <jsp:include page="${indexAdmin.content}" ></jsp:include>
            <!-- End Realtime sts area-->
            <!-- Start Footer area-->
        <%@include file="admin/footer.jsp" %>
        <!-- End Footer area-->
        <!-- jquery
                ============================================ -->
        <script src="js-admin/vendor/jquery-1.12.4.min.js"></script>
        <!-- bootstrap JS
                    ============================================ -->
        <script src="js-admin/bootstrap.min.js"></script>
        <!-- wow JS
                    ============================================ -->
        <script src="js-admin/wow.min.js"></script>
        <!-- price-slider JS
                    ============================================ -->
        <script src="js-admin/jquery-price-slider.js"></script>
        <!-- owl.carousel JS
                    ============================================ -->
        <script src="js-admin/owl.carousel.min.js"></script>
        <!-- scrollUp JS
                    ============================================ -->
        <script src="js-admin/jquery.scrollUp.min.js"></script>
        <!-- meanmenu JS
                    ============================================ -->
        <script src="js-admin/meanmenu/jquery.meanmenu.js"></script>
        <!-- counterup JS
                    ============================================ -->
        <script src="js-admin/counterup/jquery.counterup.min.js"></script>
        <script src="js-admin/counterup/waypoints.min.js"></script>
        <script src="js-admin/counterup/counterup-active.js"></script>
        <!-- mCustomScrollbar JS
                    ============================================ -->
        <script src="js-admin/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
        <!-- sparkline JS
                    ============================================ -->
        <script src="js-admin/sparkline/jquery.sparkline.min.js"></script>
        <script src="js-admin/sparkline/sparkline-active.js"></script>
        <!-- flot JS
                    ============================================ -->
        <script src="js-admin/flot/jquery.flot.js"></script>
        <script src="js-admin/flot/jquery.flot.resize.js"></script>
        <script src="js-admin/flot/flot-active.js"></script>
        <!-- knob JS
                    ============================================ -->
        <script src="js-admin/knob/jquery.knob.js"></script>
        <script src="js-admin/knob/jquery.appear.js"></script>
        <script src="js-admin/knob/knob-active.js"></script>
        <!--  Chat JS
                    ============================================ -->
        <script src="js-admin/chat/jquery.chat.js"></script>
        <!--  todo JS
                    ============================================ -->
        <script src="js-admin/todo/jquery.todo.js"></script>
        <!--  wave JS
                ============================================ -->
        <script src="js-admin/wave/waves.min.js"></script>
        <script src="js-admin/wave/wave-active.js"></script>
        <!-- plugins JS
                    ============================================ -->
        <script src="js-admin/plugins.js"></script>
        <!-- Data Table JS
                    ============================================ -->
        <script src="js-admin/data-table/jquery.dataTables.min.js"></script>
        <script src="js-admin/data-table/data-table-act.js"></script>
        <!-- main JS
                    ============================================ -->
        <script src="js-admin/main.js"></script>
        <!-- tawk chat JS
                ============================================ -->
        <script src="js-admin/tawk-chat.js"></script>
    </body>
</html>
