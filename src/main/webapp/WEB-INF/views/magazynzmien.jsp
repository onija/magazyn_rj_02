<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./includes/common.jsp"%>
<%@ page session="false" %>
<!DOCTYPE>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link href="${pageContext.request.contextPath}/resources/style/arkusz01.css" rel="stylesheet" type="text/css" />
        <title>Insert title here</title>
    </head>
    <body>
        <div id="page-wrap">
            <%@ include file="./menu.jsp"%><br><br>
            <form:form modelAttribute="towar">
                Nazwa: <form:input path="nazwa" />
                <br>
                Opis: <form:input path="opis" />
                <br>
                Cena: <form:input path="cena" />
                <br>
                Ilosc: <form:input path="ilosc" />
                <br>
                Kategoria: <form:input path="kategoria" />
                <br>
                <input type="submit" value="Zmie&#324;" />
                <form:hidden path="id"/>
            </form:form>
    </body>
</html>