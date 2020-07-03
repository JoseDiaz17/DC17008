<%-- 
    Document   : index
    Created on : 27-jun-2020, 23:55:05
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Usuario</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                <div class="text-right">
                    <a class="btn btn-primary" href="mostrarUser.jsp">Mostrar Usuarios</a>
                </div>
                    <h1>Nuevo registro</h1>
                    <form action="/DC17008/ServeltAgregar" method="POST">
                        <div class="form-group">
                            <label for="nombre">Nombre:</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Juan Perez">
                        </div>
                        <div class="form-group">
                            <label for="direccion">Email:</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="JuanPerez@hotmail.com">
                        </div>
                        <div class="form-group">
                            <label for="telefono">Contraseña:</label>
                            <input type="password" class="form-control" id="contra" name="contra">
                        </div>
                        <br>
                        <button type="submit" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                    </form>

                </div>
            </div>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</html>
