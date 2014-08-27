<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
    <head>
        <title>Insert title here</title>
    </head>
    <body>
        <%@ include file="./menu.jsp"%><br>

        <form action="magazynstan" method="get">
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
                <th>Id</th>
                <th>Nazwa</th>
                <th>Opis<</th>
                <th>Cena</th>
                <th>Ilosc</th>
                <th>Kategoria</th>
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
    </body>
</html>