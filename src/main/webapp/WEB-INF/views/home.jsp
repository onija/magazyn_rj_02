<%-- 
    Document   : home1
    Created on : 2014-08-28, 16:22:14
    Author     : kursant6
--%>
<%@ include file="./includes/common.jsp"%>
<%@ page session="false" %>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/resources/style/arkusz04.css" rel="stylesheet" type="text/css" />
        <title>Home</title>


    </head>
    <body>
        <div id="page-wrap">
            <%@ include file="./menu_1.jsp"%>
            <%@ include file="./menu_2.jsp"%>
            <%@ include file="./menu.jsp"%><br><br><br>
            <h1>
                Hello world!  
            </h1>

            <hr>
            Pracujesz  na tej stronie od - ${serverTime}. 
            <a href="<c:url value="/magazyn" />" >Magazyn</a>
            <a href="<c:url value="/magazynstan" />" >Stan</a>
            <a href="<c:url value="/magazynusun" />" >usun</a>
        </div>
    </body>
</html>

