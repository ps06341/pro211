<%-- 
    Document   : header
    Created on : Mar 3, 2019, 9:19:37 AM
    Author     : QuangPhu
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="header-top-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="logo-area">
                    <a href="/admin/index.htm"><img src="img/logo/logo.png" alt="" /></a>
                </div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="header-top-menu">
                    <ul class="nav navbar-nav notika-top-nav">
                        <li class="nav-item dropdown">
                            <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><span><i class="notika-icon notika-search"></i></span></a>
                            <div role="menu" class="dropdown-menu search-dd animated flipInX">
                                <div class="search-input">
                                    <i class="notika-icon notika-left-arrow"></i>
                                    <input type="text" />
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><span><i class="notika-icon notika-mail"></i></span></a>
                            <div role="menu" class="dropdown-menu message-dd animated zoomIn">
                                <div class="hd-mg-tt">
                                    <h2>Messages</h2>
                                </div>
                                <div class="hd-message-info">
                                                                                                                                                                                   
                                </div>
                                <div class="hd-mg-va">
                                    <a href="#">View All</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item nc-al"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><span><i class="notika-icon notika-alarm"></i></span></a>
                            <div role="menu" class="dropdown-menu message-dd notification-dd animated zoomIn">
                                <div class="hd-mg-tt">
                                    <h2>Notification</h2>
                                </div>
                                <div class="hd-message-info">
                                    
                                                                        
                                </div>
                                <div class="hd-mg-va">
                                    <a href="#">View All</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><span><i class="notika-icon notika-menus"></i></span></a>
                            <div role="menu" class="dropdown-menu message-dd task-dd animated zoomIn">
                                <div class="hd-mg-tt">
                                    <h2>Tasks</h2>
                                </div>
                                
                                <div class="hd-mg-va">
                                    <a href="#">View All</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><span><i class="notika-icon notika-support"></i></span></a>
                            <div role="menu" class="dropdown-menu message-dd chat-dd animated zoomIn">
                                <div class="hd-mg-tt">
                                    <h2>Account Information</h2>
                                </div>
                                
                                <div class="hd-message-info">
                                        <div class="hd-message-sn">
                                            <div class="hd-message-img chat-img">
                                                <c:choose>
                                                    <c:when test="${sessionScope.ava == null}">
                                                        <img src="img/post/1.jpg" alt="" />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <img src="${sessionScope.ava}" alt="" />
                                                    </c:otherwise>
                                                </c:choose>
                                                <div class="chat-avaible"><i class="notika-icon notika-dot"></i></div>
                                            </div>
                                            <div class="hd-mg-ctn">
                                                <h3>Hi! ${sessionScope.nameemp}</h3>
                                                <p>${sessionScope.role?"Admin":"Employee"}</p>
                                            </div>
                                        </div>
                                            <hr/>
                                    <a href="admin/manager.htm">
                                        <div class="hd-message-sn">
                                            <div class="hd-mg-ctn">
                                                <h3>Manager Account</h3>
                                            </div>
                                        </div>
                                    </a>
                                    
                                    <a href="admin/login.htm">
                                        <div class="hd-message-sn">
                                            <div class="hd-mg-ctn">
                                                <h3>Log Out</h3>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
