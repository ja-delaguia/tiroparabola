<%-- 
    Document   : prestamo
    Created on : 02-mar-2020, 20:15:48
    Author     : DAW207
--%>

<%@page import="modelo.Prestamo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Banco Bosco</h1>
        <h2>Solicitud de Préstamos</h2>
        <% ArrayList<String> meses = ( ArrayList<String> ) request.getAttribute("meses"); 
        String nombre = ( String ) request.getAttribute("nombre");
       if ( nombre==null ) { nombre=""; }
        Prestamo  miPrestamo = ( Prestamo ) request.getAttribute("prestamo");
        String importeTotal, cantidad, interes, tiempo;
        if ( miPrestamo==null) {
            importeTotal="0"; cantidad = "0"; interes="0";tiempo="12";
        } else {
            importeTotal = String.valueOf(miPrestamo.getImporteTotal());
            cantidad = String.valueOf(miPrestamo.getCapital());
            interes = String.valueOf(miPrestamo.getInteres());
            tiempo = String.valueOf(miPrestamo.getTiempo());
        }
        %>
        <form action="prestamo" method="post">
            <p><label for="nombre">Nombre:</label><input type="text" name="nombre" value="<%=nombre%>" id="nombre"></p>
            <p><label for="cantidad">Cantidad que solicita:</label><input type="text" value="<%=cantidad%>" name="cantidad" id="cantidad"></p>
            <p><label for="interes">Interés:</label><input type="text" name="interes" value="<%=interes%>" id="interes"></p>
                    <p><label for="tiempo">Tiempo( meses ):</label><select name="tiempo" id="tiempo">
                       <% for (int m=0; m<meses.size(); m++) {
                       String cadenaSelected="";
                       if ( tiempo.equals(meses.get(m))) {
                           cadenaSelected = "selected";
                       }
                       %>
                       <option value="<%=meses.get(m) %>" <%=cadenaSelected%> ><%=meses.get(m) %></option>
                        
                            
                       <% } %>     
                     </select>
            <input type="submit" value="Consultar">
           <% if ( importeTotal!="" ) { %>
                    <h1>ImporteTotalPrestamo: <%=importeTotal %></h1>
           <% }%>
        </form>
    </body>
</html>
