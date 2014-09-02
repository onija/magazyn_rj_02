<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./includes/common.jsp"%>
<%@ page session="false" %>

<!DOCTYPE>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/resources/style/arkusz04.css" rel="stylesheet" type="text/css" />
        <title>Insert title here</title>
    </head>
    <body>
        <div id="page-wrap">
            <%@ include file="./menu_1.jsp"%>
            <%@ include file="./menu.jsp"%><br>
            <h1>Dodaj do magazynu</h1><br>
            
            <form:form modelAttribute="towar">
                <table>
                    <tr>
                        <td>Nazwa: <br><form:input path="nazwa" /><br><form:errors path="nazwa" /></td> 
                        <td>Opis: <br><form:input path="opis" /><br><form:errors path="opis" /></td>
                        <td>Cena: <br><form:input path="cena" /><br></td>
                        <td>Ilo&#347;&#263;: <br><form:input path="ilosc" /></td>
                    </tr>
                   
                    <tr>
                        <td colspan="3">Zaznacz odpowiedni&#261; Kategori&#281;: &emsp;&emsp;   
                            <input type="radio" name="kategoria" value="odczynniki" checked="checked"/> &ensp;Odczynniki &emsp;&emsp;
                            <input type="radio" name="kategoria" value="zwiazki" /> &ensp;Zwi&#261;zki &emsp;&emsp;
                            <input type="radio" name="kategoria" value="pierwiastki" /> &ensp;Pierwiastki
                        </td>
                        <td class="klik">
                            &ensp;<input type="submit" value=" Dodaj " formaction="magazyn" formmethod="post" />
                        </td>
                    </tr>
                </table>
            </form:form>

            <form action="magazyn" method="get">
                <table>
                    <tr>
                        <td class="klak">Szukany ci&#261;g liter &emsp;&emsp;
                            <input type="text" value=".*" name="wyrazenie" > &emsp;&emsp; 
                            Filtracja po: &emsp;
                            <input type="radio" name="kategoria" value="1" checked="checked"/> &ensp;Nazwa &emsp;&emsp;
                            <input type="radio" name="kategoria" value="2" /> &ensp;Opis &emsp;&emsp;
                            <input type="radio" name="kategoria" value="3" /> &ensp;Kategoria
                        </td>
                        <td class="klik">
                            &ensp;<input type="submit" name="filter" value=" Filtruj " >
                        </td>
                    </tr>
                </table>
            </form>

            <table>
                <tr>
                    <td class="naglowek"><a href="magazyn?sort=0">Id</a></td>
                    <td class="naglowek"><a href="magazyn?sort=1">Nazwa</a></td>
                    <td class="naglowek"><a href="magazyn?sort=2">Opis</a></td>
                    <td class="naglowek"><a href="magazyn?sort=3">Cena</a></td>
                    <td class="naglowek"><a href="magazyn?sort=4">Ilo&#347;&#263;</a></td>
                    <td class="naglowek"><a href="magazyn?sort=5">Kategoria</a></td>
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