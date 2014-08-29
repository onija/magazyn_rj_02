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
            <%@ include file="./menu_1.jsp"%>
            <%@ include file="./menu.jsp"%><br><br>
            <form:form modelAttribute="towar">
                <table>
                    <tr>
                        <td>Nazwa: <br><form:input path="nazwa" /></td> 
                        <td>Opis: <br><form:input path="opis" /></td>
                        <td>Cena: <br><form:input path="cena" /></td>
                        <td>Ilo&#347;&#263;: <br><form:input path="ilosc" /></td>
                    </tr>
                    <tr>
                    <td><form:errors path="nazwa" /></td>
                    <td><form:errors path="opis" /></td>
                    <td></td>
                    <td></td>
                    </tr>
                    <tr>
                        <td colspan="3">Zaznacz odpowiedni&#261; Kategori&#281;: &emsp;&emsp;   
                            <input type="radio" name="kategoria" value="odczynniki" /> &ensp;Odczynniki &emsp;&emsp;
                            <input type="radio" name="kategoria" value="zwiazki" /> &ensp;Zwi&#261;zki &emsp;&emsp;
                            <input type="radio" name="kategoria" value="pierwiastki" /> &ensp;Pierwiastki 
                        </td>
                        <td>
                            <input type="submit" value=" Dodaj " formaction="magazyn" formmethod="post" />
                        </td>
                    </tr>
                </table>
            </form:form>

            <form action="magazyn" method="get">
                <table>
                    <tr>
                        <td>Szukany ci&#261;g liter &emsp;&emsp;
                            <input type="text" value=".*" name="wyrazenie" > &emsp;&emsp; 
                            Filtracja po: &emsp;
                            <input type="radio" name="kategoria" value="1" /> &ensp;Nazwa &emsp;&emsp;
                            <input type="radio" name="kategoria" value="2" /> &ensp;Opis &emsp;&emsp;
                            <input type="radio" name="kategoria" value="3" /> &ensp;Kategoria
                        </td>
                        <td>
                            <input type="submit" name="filter" value=" Filtruj " >
                        </td>
                    </tr>
                </table>
            </form>

            <table>
                <tr>
                    <td><a href="magazyn?sort=0">Id</a></td>
                    <td><a href="magazyn?sort=1">Nazwa</a></td>
                    <td><a href="magazyn?sort=2">Opis</a></td>
                    <td><a href="magazyn?sort=3">Cena</a></td>
                    <td><a href="magazyn?sort=4">Ilo&#347;&#263;</a></td>
                    <td><a href="magazyn?sort=5">Kategoria</a></td>
                    <!--                <td>Usu&#324;</td>
                                        <td>Zmie&#324;</td>-->
                </tr>
                <c:forEach var="towar" items="${magazyn}">
                    <tr>
                        <td><c:out value="${towar.id+1}" /></td>
                        <td><c:out value="${towar.nazwa}" /></td>
                        <td><c:out value="${towar.opis}" /></td>
                        <td><c:out value="${towar.cena}" /></td>
                        <td><c:out value="${towar.ilosc}" /></td>
                        <td><c:out value="${towar.kategoria}" /></td>
<!--                    <td><a href="magazyn?id=${towar.id}&action=delete">Usu&#324;</a></td>
                        <td><a href="magazynzmien?id=${towar.id}&action=update">Zmie&#324;</a></td>-->
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>