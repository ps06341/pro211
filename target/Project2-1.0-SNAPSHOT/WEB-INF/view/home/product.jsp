<%-- 
    Document   : product
    Created on : Feb 25, 2019, 10:52:08 PM
    Author     : Admin
--%>
    <!-- page-header -->
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li>Product List</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.page-header-->
    
    <!-- product-list -->
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                    <!-- sidenav-section -->
                    <div id='cssmenu'>
                        <jsp:include page="product/category.jsp" ></jsp:include>
                    </div>
                    <!-- /.sidenav-section -->
                </div>
                <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
                <jsp:include page="product/list.jsp" ></jsp:include>
                </div>
            </div>
        </div>
    </div>
    <!-- /.product-list -->

