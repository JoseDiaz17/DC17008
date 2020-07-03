<%-- 
    Document   : mostrarUser
    Created on : 28-jun-2020, 0:27:44
    Author     : Jose
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.progra2.persistencia.Usuario"%>
<%@page import="com.progra2.persistencia.UsuarioJpaController"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Usuarios</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">

                <h2 class="text-center">Usuarios</h2>
                <div class="text-right">
                    <a class="btn btn-primary" href="index.jsp">Nuevo Usuario</a>
                </div>
                <br><br>
                <div class="table-responsive">
                    <table class="table table-bordered" id="tableU" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Correo</th>
                                <th>Contraseña</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                EntityManagerFactory emf = Persistence.createEntityManagerFactory("my_persistence_unit");
                                UsuarioJpaController controler = new UsuarioJpaController(emf);

                                List<Usuario> lista = new ArrayList<Usuario>();
                                //Hacer transaccion
                                lista = controler.findUsuarioEntities();
                            %>

                            <c:forEach items="<%=lista%>" var="u">
                                <tr>
                                    <td>${u.getId()}</td>
                                    <td>${u.getNombre()}</td>
                                    <td>${u.getCorreo()}</td>
                                    <td>${u.getContrasenia()}</td> 
                                    <td><a href="/DC17008/ServeltEliminar?id=${u.getId()}" class="btn btn-danger" role="button">Eliminar</a></td> 
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
