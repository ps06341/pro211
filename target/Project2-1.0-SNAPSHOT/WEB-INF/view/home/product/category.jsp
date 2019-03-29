<%-- 
    Document   : category
    Created on : Feb 26, 2019, 9:21:01 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id='cssmenu'>

    <ul>
        <li class='has-sub'><a href='#'>CATEGORY</a>
            <ul>
                <c:forEach var="row" items="${proType}">
                    <li><a href="home/productTypeId.htm?typeId=${row.typeId}">${row.typeName}</a></li>

                </c:forEach>

                <!--<li><a href='#'>Cell Phones</a></li>-->
                <!--<li class='last'><a href='#'>Android Phones</a></li>-->
            </ul>
        </li>
        <li class='has-sub'><a href='#'>Brand</a>
            <ul>
                <c:forEach var="row" items="${producers}" >
                    <li>
                        <label>
                            <!--<input type="checkbox">-->
                            <span class="checkbox-list">
                                <a href="home/producer.htm?producerid=${row.producerId}">
                                    ${row.producerName}
                                </a>
                            </span>
                        </label>
                    </li>
                </c:forEach>


            </ul>
        </li>


    </ul>
</div>
