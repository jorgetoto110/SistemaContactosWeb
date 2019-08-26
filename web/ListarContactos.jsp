<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ListarContactos
    Created on : 25/08/2019, 20:05:30
    Author     : Jorge
--%>

<%@page import="modelo.Contacto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
       
       
        <table class="table table-striped">
           <thead>
               <tr>
                   <th scope="col">NOMBRE</th>
                   <th scope="col">TELEFONO</th>
                   <th scope="col">MAIL</th>
               </tr>
           </thead>
           <tbody>
           <c:forEach var="item" items="${lista}">
         
               <tr>
                   <td>${item.getNombre()}</td>
                   <td>${item.getNumero()}</td>
                   <td>${item.getMail()}</td>
               </tr>
                 </c:forEach>
           </tbody>
       </table>

     <%@include file="WEB-INF/jspf/pie.jspf" %>
    </body>
</html>
