<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./includes/common.jsp"%>
<%@ page session="false" %>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="${pageContext.request.contextPath}/resources/style/arkusz04.css" rel="stylesheet" type="text/css" />	
        <script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
        <script type="text/javascript" language="javascript" src="js/jquery.dropdownPlain.js"></script>
    </head>

    <body>

        <div><br>
                <ul class="dropdown">
                    <li>
<!--                        <a href="<c:url value="/"/>">Home</a>-->
                        
                     <a href="home">Home</a>   
                    </li>
                    <li>
                        <a href="magazynstan">Stan Magazynu</a>
                    </li>
                    <li>
                        <a href="magazyn">Dodaj do Magazynu</a>
                    </li>
                    <li>
                        <a href="magazynzmien2">Zmie&#x144; na Magazynie</a>
                    </li>
                    <li>
                        <a href="magazynusun">Usu&#x144; z Magazynu</a>
                    </li>
                </ul>
        </div>

    </body>

</html>
