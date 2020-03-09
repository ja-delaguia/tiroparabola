<%-- 
    Document   : tiro
    Created on : 09-mar-2020, 19:24:11
    Author     : DAW207
--%>

<%@page import="modelo.Tiro"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tiro Parabólico</h1>
        <%
            String velocidad, angulos, distancia, alturaMax;
            ArrayList<String> angulo = (ArrayList<String>) request.getAttribute("angulos");
            Tiro mitiro = (Tiro) request.getAttribute("tiro");
            
            if(mitiro != null){
                velocidad = String.valueOf(mitiro.getVelocidadInicial());
                angulos = String.valueOf(mitiro.getAngulo());
                distancia = String.valueOf(mitiro.getAlcanceMaximo());
                alturaMax = String.valueOf(mitiro.getAlturaMaxima());
            }
            else{
                velocidad = "";
                angulos = "";
                distancia = "";
                alturaMax = "";
            }
        %>
        <form action="tiro" method="post">
            <label for="velocidad">Velocidad(m/s):</label><input type="text" value="<%=velocidad%>" name="velocidad" id="velocidad"><br><br>
A            <select name="angulo" id="angulo">
                <% for (int i=0; i<angulo.size();i++) { 
                String anguloSelected = "";
                if(angulo.equals(angulo.get(i))){
                    anguloSelected = "selected";
                }
                %>
                <option value="<%=angulo.get(i)%>" <%=anguloSelected%>><%=angulo.get(i)%></option>
                <% } %>
            </select>
            <input type="submit" value="Lanzar">
            <% if(distancia != "") { %>
            <h2>El alcance: <%=distancia%></h2>
            <% } %>
            <% if(alturaMax != "") { %>
            <h2>La altura máxima: <%=alturaMax%></h2>
            <% } %>

        </form>
    </body>
</html>
