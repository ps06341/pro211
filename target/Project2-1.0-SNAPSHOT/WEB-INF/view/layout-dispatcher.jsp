<%-- 
    Document   : layout-dispatcher
    Created on : Jan 20, 2019, 10:17:44 AM
    Author     : Admin
--%>

<%
    String view = request.getParameter("view");
    if (view.startsWith("home/")) {
        pageContext.forward("home-layout.jsp");
    } else if (view.startsWith("admin/")) {
        pageContext.forward("admin-layout.jsp");
    } else if (view.startsWith("login/")) {
        pageContext.forward("admin/login.jsp");
    } else if (view.startsWith("blank/")) {
        pageContext.forward("blank-layout.jsp");
    } else {

    }

%>