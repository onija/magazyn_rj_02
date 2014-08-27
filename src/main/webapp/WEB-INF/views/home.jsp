<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./includes/common.jsp"%>
<%@ page session="false" %>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/resources/style/arkusz01.css" rel="stylesheet" type="text/css" />
        <title>Home</title>


    </head>
    <body>
        <div id="page-wrap">
            <%@ include file="./menu.jsp"%><br><br><br>
            <h1>
                Hello world!  
            </h1>

            <hr>

            <a href="<c:url value="/magazyn" />" >Magazyn</a>
            <a href="<c:url value="/magazynstan" />" >Stan</a>
        </div>
    </body>
</html>
