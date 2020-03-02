<%-- 
    Document   : prestamo
    Created on : 02-mar-2020, 20:15:48
    Author     : DAW207
--%>

<%@page import="modelo.Cuota"%>
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
        String importePrestamo, cantidad, interes, tiempo;
        if ( miPrestamo==null) {
            importePrestamo=""; cantidad = "0"; interes="0";tiempo="12";
        } else {
            importePrestamo = String.valueOf(miPrestamo.getImporteTotal());
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
            <% if ( importePrestamo!="" ) { %>
                    <h1>ImporteTotalPrestamo: <%=importePrestamo %></h1>
           <% }%>
           <table border="3">
           <% ArrayList<Cuota> cuotas = (ArrayList<Cuota>) request.getAttribute("cuotas");
           if (cuotas!=null) { %>
           <tr><th>NºCuota</th><th>Importe</th><th>Capital</th><th>Interés</th>
               
            <%
               for (int i=0; i<cuotas.size(); i++){
               Cuota miscuotas = cuotas.get(i);  
               
               %>
              
               <tr><td><%=cuotas.get(i).numeroCuota  %></td><td><%=cuotas.get(i).importe  %></td><td><%=cuotas.get(i).getCapitalString()  %></td><td><%=cuotas.get(i).intereses  %></td>
              <% }
           }
           %>
           </table>
        </form>
    </body>
</html>
