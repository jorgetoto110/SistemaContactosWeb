<%-- 
    Document   : index
    Created on : 20/08/2019, 14:00:28
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
       <div class="login-form " style=" width: 340px; margin: 50px auto;" >
           <form action="Controlador" method="post">
                <h2 class="text-center">Inicio de Sesion</h2>       
                <div class="form-group">
                    <input type="text" class="form-control" name="nombreUsuario" placeholder="Nombre de Usuario"  required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="contra" placeholder="Contreseña" required="required">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary btn-block" name="accion" value="Iniciar Sesion">
                </div>            
            </form>
            </div>
    </body>
</html>
