<%-- 
    Document   : list2
    Created on : Mar 12, 2019, 6:19:44 PM
    Author     : Admin
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!--<link href="css-admin/normalize.css" rel="stylesheet" />
<link href="css-admin/themesaller-forms.css" rel="stylesheet" />-->
<link href="css-admin/chosen/chosen.css" rel="stylesheet" />
<link href="style.css" rel="stylesheet" />
<link href="css-admin/responsive.css" rel="stylesheet" />
<link href="css-admin/style.css" rel="stylesheet" />
<link href="css-admin/bootstrap.min.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
<!--<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>-->

<style>
    /*    input[type="search"]{
            background: url("http://png.findicons.com/files/icons/1389/g5_system/32/toolbar_find.png") top right no-repeat;
            height:35px;
            padding-right:30px;
    
        }*/

</style>

<!--
<div class="data-table-area">
    <div class="container">
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="data-table-list">
<!--                    <div class="basic-tb-hd">
                        <h2>Show Table</h2>
                    </div>-->
<div class="table-responsive">
    <table id="data-table-basic" class="table table-striped">
        <thead>
            <tr>
                <!--<th>Name</th>-->
                <!--                <th>Name</th>
                                <th>Description</th>
                                <th>Edit</th>-->
                <th></th>


            </tr>
        </thead>
        <tbody>
            <c:forEach var="row" items="${products}">
                <tr>
                    <td>
                        <div class="">
                            <div class="product-block">
                                <div class="product-img"><img src="${row.image}" alt=""></div>
                                <div class="product-content">
                                    <h5><a href="home/${row.productId}.htm" class="product-title">${row.productName}</a></h5>
                                    <div class="product-meta"><a href="home/${row.productId}.htm" class="product-price">
                                            <fmt:formatNumber value="${row.price*1000}" type="cureency" pattern=",### VND" />
                                        </a>
                                    </div>
                                    <div class="shopping-btn">
                                        <a href="#" class="product-btn btn-like"><i class="fa fa-heart"></i></a>
                                        <a href="#" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>

                </tr>
            </c:forEach>
        </tbody>
        <tfoot>
            <tr>
                <!--<th>ID</th>-->
                <td></td>

            </tr>
        </tfoot>
    </table>
</div>
<!--</div>
</div>
</div>-->
<!--    </div>
</div>-->
<script type="text/javascript">


</script>
