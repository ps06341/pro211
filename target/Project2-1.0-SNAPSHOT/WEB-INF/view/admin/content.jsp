<%-- 
    Document   : content
    Created on : Mar 3, 2019, 9:29:13 AM
    Author     : QuangPhu
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<div class="notika-status-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30">
                    <div class="website-traffic-ctn">
                        <h2><span class="counter">${ttemp}</span></h2>
                        <p>Total Employee</p>
                    </div>
                    <div class="sparkline-bar-stats1">9,4,8,6,5,6,4,8,3,5,9,${ttemp}</div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30">
                    <div class="website-traffic-ctn">
                        <h2><span class="counter">${ttacc}</span></h2>
                        <p>Total Account</p>
                    </div>
                    <div class="sparkline-bar-stats2">1,4,8,3,5,6,4,8,3,3,9,${ttacc}</div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30">
                    <div class="website-traffic-ctn">
                        <h2><span class="counter">${ttpro}</span></h2>
                        <p>Total Product</p>
                    </div>
                    <div class="sparkline-bar-stats3">4,2,8,2,5,6,3,8,3,5,9,${ttpro}</div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30">
                    <div class="website-traffic-ctn">
                        <h2><span class="counter">${ttcu}</span></h2>
                        <p>Total Customer</p>
                    </div>
                    <div class="sparkline-bar-stats4">2,4,8,4,5,7,4,7,3,5,7,${ttcu}</div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Status area-->
<!-- Start Sale Statistic area-->
<div class="sale-statistic-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-8 col-sm-7 col-xs-12">
                <div class="sale-statistic-inner notika-shadow mg-tb-30">
                    <div class="curved-inner-pro">
                        <div class="curved-ctn">
                            <h2>Sales Statistics</h2>
                            <p>Vestibulum purus quam scelerisque, mollis nonummy metus</p>
                        </div>
                    </div>
                    <div id="curved-line-chart" class="flot-chart-sts flot-chart"></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-5 col-xs-12">
                <div class="statistic-right-area notika-shadow mg-tb-30 sm-res-mg-t-0">
                    <div class="past-day-statis">
                        <h2>For The Past 30 Days</h2>
                        <p>Fusce eget dolor id justo luctus the commodo vel pharetra nisi. Donec velit of libero.</p>
                    </div>
                    <div class="dash-widget-visits"></div>
                    <div class="past-statistic-an">
                        <div class="past-statistic-ctn">
                            <h3><span class="counter">${ttor}</span></h3>
                            <p>Total Order</p>
                        </div>
                        <div class="past-statistic-graph">
                            <div class="stats-bar"></div>
                        </div>
                    </div>
                    <div class="past-statistic-an">
                        <div class="past-statistic-ctn">
                            <h3><span class="counter">${ttorcf}</span></h3>
                            <p>Total Order Confirm</p>
                        </div>
                        <div class="past-statistic-graph">
                            <div class="stats-bar"></div>
                        </div>
                    </div>
                    <div class="past-statistic-an">
                        <div class="past-statistic-ctn">
                            <h3><span class="counter">${ttorcl}</span></h3>
                            <p>Total Order Cancel</p>
                        </div>
                        <div class="past-statistic-graph">
                            <div class="stats-line"></div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
