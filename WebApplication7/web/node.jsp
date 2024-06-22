<%@page import="Utilidades.Archivo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body> 
        <h1>Hello World!</h1>
        <
            String nombreTaller = request.getParameter("name");
            String profesorEncargado = request.getParameter("nameADS");
            String numeroAula = request.getParameter("numero");
            String cupoMaximo = request.getParameter("cupoMAXI");
            

            Archivo Ar = new Archivo();
            boolean bandera = Ar.guardarUsuario(nombreTaller, profesorEncargado, numeroAula, cupoMaximo);
            if (bandera) {
                    out.print("Insertado Correctamente!");
                }else{
                out.print("No insertado");
            }
        %>
    </body>
</html>