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
            <h1>Zmie&#324; na magazynie</h1><br>

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
                        <td>
                    <input type="submit" value=" Zmie&#324; " />
                    
                    <form:hidden path="id"/></td> </tr> </table>
                </form:form>
        </div>
    </body>
</html>