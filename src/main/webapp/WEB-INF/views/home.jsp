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
                Witamy w magazynie GrzybLab 
            </h1><br>
            <h5>Pracuj, pracuj a garb sam Ci wyro&#347;nie</h5>
                
            <br><br><br>
            <hr><br>
            Pracujesz  na tej stronie od - ${serverTime}. 
            <br><br>
        </div>
    </body>
</html>

