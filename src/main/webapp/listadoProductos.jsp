<%-- 
    Document   : listadoProductos
    Created on : 15-nov-2021, 17:32:48
    Author     : DAW-A
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de productos</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            th{
                background-color: yellow;
            }
            td{
                background-color: orange;
            }
        </style>
    </head>
    <body>
        <h1>Listado de productos</h1>
        <a href="Servlet?op=insertar">Nuevo Producto</a>
        <table class="table">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Precio</th>
                <th>Categoría</th>
                <th>Accion</th>
            </tr>
            <%
                List<Productos> lista = (List<Productos>) request.getAttribute("laLista");
                for (Productos p : lista) {
            %>
            <tr>
                <td><%= p.getId()%></td>
                <td><%= p.getNombre()%></td>
                <td><%= p.getPrecio()%></td>
                <td><%= p.getCategoria()%></td>
                <td><a href="Servlet?operacion=borrar&id=<%= p.getId() %>">Borrar</a></td>
            </tr>
            <%
                }
            %>
        </table>

    </body>
</html>
