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
            <h1>Usu&#324; z magazynu</h1><br>


 <form action="magazyn" method="get">
                <table>
                    <tr>
                        <td>Szukany ci&#261;g liter &emsp;&emsp;
                            <input type="text" value=".*" name="wyrazenie" > &emsp;&emsp; 
                            Filtracja po: &emsp;
                            <input type="radio" name="kategoria" value="1" checked="checked"/> &ensp;Nazwa &emsp;&emsp;
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
                    <td><a href="magazynusun?sort=0">Id</a></td>
                    <td><a href="magazynusun?sort=1">Nazwa</a></td>
                    <td><a href="magazynusun?sort=2">Opis</a></td>
                    <td><a href="magazynusun?sort=3">Cena</a></td>
                    <td><a href="magazynusun?sort=4">Ilosc</a></td>
                    <td><a href="magazynusun?sort=5">Kategoria</a></td>
                    <td>Usu&#324;</td>

                </tr>
                <c:forEach var="towar" items="${magazyn}">
                    <tr>
                        <td><c:out value="${towar.id+1}" /></td>
                        <td><c:out value="${towar.nazwa}" /></td>
                        <td><c:out value="${towar.opis}" /></td>
                        <td><c:out value="${towar.cena}" /></td>
                        <td><c:out value="${towar.ilosc}" /></td>
                        <td><c:out value="${towar.kategoria}" /></td>
                        <td><a href="magazynusun?id=${towar.id}&action=delete">Usu&#324;</a></td>

                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>