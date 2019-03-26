<%-- 
    Document   : cart
    Created on : Feb 26, 2019, 11:46:41 PM
    Author     : Admin
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script type="text/javascript" src="//code.jquery.com/jquery-1.8.3.js"></script>
<!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.0/css/all.css" integrity="sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y" crossorigin="anonymous" />-->
<style>
    .special:hover{
        color: green;

    }
    .special2:hover{
        color: red;

    }
</style>
<!-- page-header -->
<div class="page-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                <div class="page-breadcrumb">
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li>Cart</li>
                    </ol>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- /.page-header-->
<!-- cart-section -->

<div class="space-medium">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                <div class="box">
                    <div class="box-head">
                        <h3 class="head-title">My Cart</h3>
                    </div>
                    <!-- cart-table-section -->
                    <div class="box-body">
                        <div class="table-responsive">
                            <div class="cart">
                                <c:set var="shop" value="${shoppingcart}"/>
                                <c:if test="${not empty shop}">
                                    <table class="table table-bordered ">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <span>Image</span></th>
                                                <th>
                                                    <span>Item</span></th>
                                                <th>
                                                    <span>Price</span></th>
                                                <th>
                                                    <span>Quantity</span></th>
                                                <th>
                                                    <span>Total</span></th>
                                                <th>
                                                    <span>Remove/Update</span>
                                                </th>

                                            </tr>
                                        </thead>
                                        <tbody>

                                            <c:set var="count" value="1" />
                                            <c:forEach var="rows" items="${shop}">
                                                <c:set var="price_of_Pros" value="0"/>
                                                <tr>
                                                    <td><img src="${rows.value.sanpham.image}" alt=""></td>
                                                    <td>  <span>${rows.value.sanpham.productName}</span></td>
                                                    <td><fmt:formatNumber value="${rows.value.sanpham.price*1000}" type="cureency" pattern=",### VND" />
                                                        <input type="hidden" id="price_pro${count}" value="${rows.value.sanpham.price*1000}"/>
                                                    </td>
                                                    <td>
                                                        <div class="product-quantity">
                                                            <div class="quantity">
                                                                <c:set var="sl" value="${rows.value.quantity}" />
                                                                <input id="addsubtract${count}" type="number" min="1" max="9" step="1" value="${sl}" class="input-text qty text" onkeydown="return false" onclick="buttonClick${count}()" 
                                                                       style="color: transparent;text-shadow: 0 0 0 black;"/> 
                                                            </div>
                                                        </div>
                                                    </td>
                                            <input type="hidden" value="${rows.value.sanpham.price*1000*sl}" id="hidden_bill${count}" name="getBill" />
                                            <td id="bill${count}">

                                                <fmt:formatNumber value="${rows.value.sanpham.price*1000*sl}" type="cureency" pattern=",### VND"/>
                                            </td>
                                            <td scope="row" style="padding: 0px;padding-left: 15px;">
                                                <div id="btn-cart-check${count}">
                                                    <a href="home/removeCart.htm?id=${rows.value.sanpham.productId}" class="btn-close special2"><i class="fa fa-times-circle"></i></a>
                                                    <!--<a href="home/updateCart.htm?id=${rows.value.sanpham.productId}" class="btn-close special" ><i class="far fa-check-circle"></i></a>-->
                                                </div>
<!--                                                    <div id="test1${count}"></div>
                                                <div id="test2${count}"></div>
                                                <div id="test3${count}"></div>-->
                                            </td>
                                            </tr>
                                            <script type="text/javascript">
                                                var quantity_in_time${count} = document.getElementById('addsubtract${count}').value;
                                                function buttonClick${count}() {
                                                    var value_quantity = document.getElementById('addsubtract${count}').value;
                                                    var value_price = document.getElementById('price_pro${count}').value;
                                                    var total = value_quantity * value_price;
                                                    var format = formatNumber(total, '.', '.');
                                                    document.getElementById('bill${count}').innerHTML = format;
//                                                    var total_bill = document.getElementById('tempBill').value;
//                                                    var total_bill_old = total_bill * 1;
                                                    document.getElementById('hidden_bill${count}').value = total;
//                                                    if (quantity_in_time < value_quantity) {
//                                                        document.getElementById('hidden_bill${count}').value = total;
//                                                    } else if (quantity_in_time > value_quantity) {
//                                                        document.getElementById('hidden_bill${count}').value = total;
//                                                    } else {
//                                                        document.getElementById('hidden_bill${count}').value = total;
//                                                    }
                                                    var quantity_start${count} = quantity_in_time${count};
//                                                        document.getElementById('test1${count}').innerHTML = "quantity ban dau: " + quantity_start${count};
//                                                        document.getElementById('test2${count}').innerHTML = "quantity luc sau: " + value_quantity;
//                                                        document.getElementById('test3${count}').innerHTML = total;

                                                    if (value_quantity == quantity_start${count}) {
                                                        document.getElementById('btn-cart-check${count}').innerHTML =
                                                                "<a href=\"home/removeCart.htm?id=${rows.value.sanpham.productId}\" class=\"btn-close special2\" ><i class=\"fa fa-times-circle\"></i></a>";

                                                    } else {
                                                        document.getElementById('btn-cart-check${count}').innerHTML =
                                                                "<a href=\"home/editCart.htm?producid=${rows.value.sanpham.productId}&quantity=" + value_quantity + "\" class=\"btn-close special\" ><i class=\"fa fa-check-circle\"></i></a>";
                                                    }

                                                    var totalBill = 1 * 1;
                                                    var arr = document.getElementsByName("getBill");
                                                    for (var i = 0; i < arr.length; i++) {

                                                        totalBill += arr[i].value * 1;
                                                    }
                                                    document.getElementById("total_bill").innerHTML = formatNumber(totalBill - 1, '.', '.');
                                                    document.getElementById("payBill").innerHTML = formatNumber(totalBill - 1, '.', '.');



                                                }

                                                function formatNumber(nStr, decSeperate, groupSeperate) {
                                                    nStr += '';
                                                    x = nStr.split(decSeperate);
                                                    x1 = x[0];
                                                    x2 = x.length > 1 ? '.' + x[1] : '';
                                                    var rgx = /(\d+)(\d{3})/;
                                                    while (rgx.test(x1)) {
                                                        x1 = x1.replace(rgx, '$1' + groupSeperate + '$2');
                                                    }
                                                    return x1 + x2 + " VND";
                                                }

                                                <c:set var="totalBill" value="${totalBill+rows.value.sanpham.price*1000*sl}"/>
                                                <c:set var="count" value="${count+1}" />
                                            </script>
                                        </c:forEach>
                                        <input type="hidden" value="${count}" id="tempCount"/>
                                        <input type="hidden" value="" id="tempBill"/>
                                        </tbody>
                                    </table>
                                </c:if>
                            </div>
                            <!-- /.cart-table-section -->
                        </div>
                    </div>

                </div>
                <a href="#" class="btn-link"><i class="fa fa-angle-left"></i> back to shopping</a>

            </div>


            <!-- cart-total -->
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <font face="verdana" color="green">${mess}</font>
                <div class="box mb30">
                    <div class="box-head">
                        <h3 class="head-title">Price Details</h3>
                    </div>
                    <div class="box-body">
                        <div class=" table-responsive">
                            <form:form action="home/payBill.htm" method="post">
                                <div class="pay-amount ">
                                    <table class="table mb20">
                                        <tbody>
                                            <tr>
                                                <th>
                                                    <c:choose >
                                                        <c:when test="${not empty shop}">
                                                            <span>Price (${count-1} items)</span></th>
                                                        </c:when>
                                                        <c:otherwise>
                                                <span>Price (0 items)</span></th>
                                            </c:otherwise>
                                        </c:choose>
                                        <td id="total_bill" >
                                            <fmt:formatNumber  value="${totalBill}" type="cureency" pattern=",### VND"/>
                                        </td>
                                        </tr>
                                        <tr>
                                            <th>
                                                <span>Delivery Charges</span></th>
                                            <td><strong class="text-green">Free</strong></td>
                                        </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <th>
                                                    <span class="mb0" style="font-weight: 700;">Amount Payable</span></th>
                                                <td style="font-weight: 700; color: #1c1e1e; " id="payBill" >
                                                    <fmt:formatNumber  value="${totalBill}" type="cureency" pattern=",### VND"/>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <button class="btn btn-primary btn-block" name="pay">Pay</button>
                            </form:form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- /.cart-total -->
    </div>
</div>
<!-- /.cart-section -->

<script type="text/javascript">
    //                                                                    function buttonClick() {
    //                                                                        var value_quantity = document.getElementById('addsubtract${count}').value;
    //                                                                        var value_price = document.getElementById('price_pro${count}').value;
    //
    //                                                                        var total = value_quantity * value_price;
    //                                                                        var text = "<fmt\:formatNumber value=\"" + total + "\" type=\"cureency\" pattern=\",### VND\"/>";
    //                                                                        document.getElementById('bill${count}').innerHTML = total;
    //
    //                                                                    }
    //                                                jQuery('<div class="quantity-nav"><div class="quantity-button quantity-up">+</div><div class="quantity-button quantity-down">-</div></div>').insertAfter('.quantity input');
    //                                                jQuery('.quantity').each(function () {
    //                                                    var spinner = jQuery(this),
    //                                                            input = spinner.find('input[type="number"]'),
    //                                                            btnUp = spinner.find('.quantity-up'),
    //                                                            btnDown = spinner.find('.quantity-down'),
    //                                                            min = input.attr('min'),
    //                                                            max = input.attr('max');
    //
    //                                                    btnUp.click(function () {
    //                                                        var oldValue = parseFloat(input.val());
    //                                                        if (oldValue >= max) {
    //                                                            var newVal = oldValue;
    //                                                        } else {
    //                                                            var newVal = oldValue + 1;
    //                                                        }
    //                                                        spinner.find("input").val(newVal);
    //                                                        spinner.find("input").trigger("change");
    //                                                    });
    //
    //                                                    btnDown.click(function () {
    //                                                        var oldValue = parseFloat(input.val());
    //                                                        if (oldValue <= min) {
    //                                                            var newVal = oldValue;
    //                                                        } else {
    //                                                            var newVal = oldValue - 1;
    //                                                        }
    //                                                        spinner.find("input").val(newVal);
    //                                                        spinner.find("input").trigger("change");
    //                                                    });
    //
    //                                                });


//    $("[type='number']").keypress(function (evt) {
//        evt.preventDefault();
//    });


    //  }
</script>