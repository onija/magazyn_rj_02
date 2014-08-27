<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="${pageContext.request.contextPath}/resources/style/arkusz01.css" rel="stylesheet" type="text/css" />	

        <script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
        <script type="text/javascript" language="javascript"
        src="js/jquery.dropdownPlain.js"></script>
    </head>

    <body>
 <%@ include file="./menu.jsp"%>
        <div id="page-wrap">
            <spring:url value="/resources/images/po.jpg" htmlEscape="true" var="anyImage" />
            <img src="${anyImage}" alt="inny obrazek" />


            <p>
                <a target="_blank" href="http://www.wp.pl">Wirtualna Polska</a> | <a
                    target="_blank" href="http://www.onet.pl">Onet.pl</a> | <a
                    target="_blank" href="http://www.interia.pl">Interia.pl</a>  | To jest nienaruszalne menu!!!
            </p>

            <ul class="dropdown">
                <li><a href="<c:url value="/"/>">Home</a>
                </li>
                <li><a href="#">Magazyn</a>
                    <ul class="sub_menu">
                        <li><a href="magazynstan">Stan Magazynu</a></li>
<!--                    <li><a href="<c:url value="magazynzmien.jsp" />">Dodaj do Magazynu</a></li>-->
                        <li><a href="<c:url value="magazynzmien.jsp" />">Dodaj do Magazynu</a></li>
                        <li><a href="magazynzmien">Zmie&#x144; na Magazynie</a></li>
                        <li><a href="magazyn">Usu&#x144; z Magazynu</a></li>
                    </ul>
                </li>
                <li><a href="#">Tre&#x15B;&#x107;</a>
                    <ul class="sub_menu">
                        <li><a href="#">Z r&#x119;ki</a>
                            <li><a href="#">Szablony</a>
                                <ul>
                                    <li><a href="#">Du&#x17C;e zakupy</a></li>
                                    <li><a href="#">Ma&#x142;e zakupy</a></li>
                                    <li><a href="#">Takie sobie zakupy</a></li>
                                </ul></li>
                            <li><a href="#">Pisma ponaglaj&#261;ce</a>
                                <ul>
                                    <li><a href="#">Pierwsze ponaglenie</a></li>
                                    <li><a href="#">Drugie ponaglenie</a></li>
                                    <li><a href="#">Ostatnie ponaglenie</a></li>
                                </ul></li>
                    </ul></li>
                <li><a href="#">Dowcipy</a>
                    <ul class="sub_menu">
                        <li><a href="#">Dowcipy rysunkowe</a></li>
                        <li><a href="#">Dowcipy tekstowe</a></li>
                        <li><a href="#">Dowcipy filmowe</a></li>
                    </ul></li>
                <li><a href="#">Co&#x15B; od Was</a>
                    <ul class="sub_menu">
                        <li><a href="#">Od &#x141;ukaszy</a></li>
                        <li><a href="#">Od A&#x15B;</a></li>
                        <li><a href="#">Od Gosi</a></li>
                        <li><a href="#">Od Beaty</a></li>
                        <li><a href="#">Od Kasi</a></li>
                        <li><a href="#">Od Paw&#x142;a</a></li>
                        <li><a href="#">Od Tomka</a></li>					
                        <li><a target="_blank" href="<c:url value="/includes/odRobert.jsp"/>">Od Roberta</a></li>					
                        <li><a href="<c:url value="/dodajOdbiorce"/>">Dodaj	odbiorc&#x119;</a></li>
                    </ul></li>
                <li><a href="<c:url value="/"/>">Home</a>				
            </ul>

        </div>

    </body>

</html>
