<%-- 
    Document   : showcase
    Created on : Mar 6, 2019, 4:21:53 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                   url="jdbc:sqlserver://localhost:1433;databaseName=db"
                   user="sa" password="123"
                   var="con"/>


<sql:query dataSource="${con}" var="result" >
    select * from Producer order by ProducerID offset 1 rows fetch next 4 rows only
</sql:query>

<sql:query dataSource="${con}" var="result2" >
    select * from Producer order by ProducerID offset 5 rows fetch next 4 rows only
</sql:query>

    <style>
        div.showcase-block{
            min-height: 100px;
        }
        div.space-medium{
            padding-top: 50px;
        }
    </style>
    
<div class="space-medium">
    <div class="container">
        <div class="row">
            <!--                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                <div class="showcase-block">
                                    <div class="display-logo ">
                                        <a href="#"> <img src="./images/nexus.png" alt=""></a>
                                    </div>
                                    <div class="showcase-img">
                                        <a href="#"> <img src="./images/display_img_1.png" alt=""></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="showcase-block active">
                                    <div class="display-logo alignleft">
                                        <a href="#">  <img src="./images/iphone.png" alt="">
                                       </a>
                                    </div>
                                    <div class="showcase-img">
                                        <a href="#"> <img src="./images/display_img_2.png" alt="" style="padding-left: 80px;"></a>
                                    </div>
                                </div>
                            </div>-->
            <c:forEach var="row" items="${result.rows}">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="showcase-block ">
<!--                        <div class="display-logo ">
                            <a href="#">${row.producerName} <img src="./images/samsung.png" alt="">
                            </a>
                        </div>-->
                        <div class="showcase-img">
                            <a href="#"><img src="${row.image}" alt=""> </a>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
        <div class="row">
            <c:forEach var="row" items="${result2.rows}" >
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="showcase-block">
<!--                        <div class="display-logo ">
                            <a href="#">${row.producerName} <img src="./images/htc.png" alt="">
                            </a>
                        </div>-->
                        <div class="showcase-img">
                            <a href="#"><img src="${row.image}" alt=""></a>
                        </div>
                    </div>
                </div>


            </c:forEach>

        </div>
    </div>
</div>
<!-- /.mobile showcase -->
