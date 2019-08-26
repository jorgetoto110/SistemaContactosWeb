<%-- 
    Document   : PantallaPrincipal
    Created on : 20/08/2019, 14:40:27
    Author     : Jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="conteiner d-flex">
        <iframe name="iframe1"  style="height: 500px; width: 100%;" class="d-flex"></iframe>
        </div>
        <%@include file="WEB-INF/jspf/pie.jspf" %>
     </body>
</html>
