<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./includes/common.jsp"%>
<%@ page session="false" %>
<html>
    <head>
<!--        <link href="${pageContext.request.contextPath}/resources/style/arkusz01.css" rel="stylesheet" type="text/css" />-->
        <title>Home</title>
       

    </head>
    <body>
 <%@ include file="./menu.jsp"%><br>
        <h1>
            Hello world!  
        </h1>

        <P>  The time on the server is ${serverTime}. </P>
hhhh
                <a href="<c:url value="/magazyn" />" >Magazyn</a>
            <a href="<c:url value="/magazynstan" />" >Stan</a>
    </body>
</html>
