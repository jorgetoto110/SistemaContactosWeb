<%-- 
    Document   : AgregarContacto
    Created on : 20/08/2019, 15:32:22
    Author     : Jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="col-4" >
            <form  name="form1" action="Controlador">
                <input type="text" class="form-control" name="nombreContacto" placeholder="nombre" required="required">
                <br>
                <input type="tel" class="form-control" name="telefono" placeholder="telefono" required="required">
                <br>               
                <input type="email" class="form-control" name="txtmail" placeholder="mail" >
                <br>


                <input type="submit" class="btn btn-primary" name="accion" value="Agregar Nuevo Contacto">
                <br>
            </form>

            <div class="col-6">

                <h2>fue agregado<%= request.getAttribute("mensaje")%></h2>
            </div>

        </div>
    </body>
</html>
