<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./includes/common.jsp"%>
<%@ page session="false" %>

<!DOCTYPE>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/resources/style/arkusz01.css" rel="stylesheet" type="text/css" />
        <title>Insert title here</title>
    </head>
    <body>
        <div id="page-wrap">
            <%@ include file="./menu.jsp"%><br><br>
            <form:form modelAttribute="towar">
                <table>
                    <tr>
                        <td>Nazwa: </td> 
                        <td>Opis: </td>
                        <td>Cena: </td>
                        <td>Ilo?c: </td>
                        <td>Kategoria: </td>
                        <td>
                            <input type="submit" value="Dodaj" formaction="magazyn"
                                   formmethod="post" /></td>
                        
                    </tr>

                    <tr>
                        <td><form:input path="nazwa" /></td>
                        <td><form:input path="opis" /></td>
                        <td><form:input path="cena" /></td>
                        <td><form:input path="ilosc" /></td>
                        <td>
                            <input type="radio" name="kategoria" value="odczynniki" />Odczynniki
                            <input type="radio" name="kategoria" value="zwiazki" />Zwi?zki
                            <input type="radio" name="kategoria" value="pierwiastki" />Pierwiastki
                        </td>
                    </tr>
                </table>

            </form:form>

            <form action="magazyn" method="get">
                <input type="text" value=".*" name="wyrazenie" ><br> 
                <select name="kategoria">
                    <option value="1" >Nazwa</option>
                    <option value="2" >Opis</option>
                    <option value="5" >Kategoria</option>
                </select><br>
                <input type="submit" name="filter" value="Filtruj" >

            </form>

            <table>
                <tr>
                    <td><a href="magazyn?sort=0">Id</a></td>
                    <td><a href="magazyn?sort=1">Nazwa</a></td>
                    <td><a href="magazyn?sort=2">Opis</a></td>
                    <td><a href="magazyn?sort=3">Cena</a></td>
                    <td><a href="magazyn?sort=4">Ilosc</a></td>
                    <td><a href="magazyn?sort=5">Kategoria</a></td>
                    <td>Usu&#324;</td>
                    <td>Zmie&#324;</td>
                </tr>
                <c:forEach var="towar" items="${magazyn}">
                    <tr>
                        <td><c:out value="${towar.id+1}" /></td>
                        <td><c:out value="${towar.nazwa}" /></td>
                        <td><c:out value="${towar.opis}" /></td>
                        <td><c:out value="${towar.cena}" /></td>
                        <td><c:out value="${towar.ilosc}" /></td>
                        <td><c:out value="${towar.kategoria}" /></td>
                        <td><a href="magazyn?id=${towar.id}&action=delete">Usu&#324;</a></td>
                        <td><a href="magazynzmien?id=${towar.id}&action=update">Zmie&#324;</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>