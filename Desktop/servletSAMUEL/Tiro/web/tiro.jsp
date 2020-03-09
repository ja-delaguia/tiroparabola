<%-- 
    Document   : tiro
    Created on : 09-mar-2020, 19:24:11
    Author     : DAW207
--%>

<%@page import="modelo.tiro"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tiro Parabolico</h1>
        <form action="tiro" method="post">
            <p><label for="velocidad">Velocidad( m/s ):</label><input type="text" name="velocidad" value="0" id="velocidad"></p>
            <p><label for="cantidad">Angulo:</label>
                <select name="angulo" id="angulo">
                    <option value="0"  selected>0</option>                
                    <option value="10" >10</option>
                    <option value="20" >20</option>                            
                    <option value="30" >30</option>
                    <option value="40" >40</option>                            
                    <option value="50" >50</option>                            
                    <option value="60" >60</option>                           
                    <option value="70" >70</option>                          
                    <option value="80" >80</option>                          
                    <option value="90" >90</option>                           
                    <option value="100" >100</option>                            
                    <option value="110" >110</option>
                    <option value="120" >120</option>
                    <option value="130" >130</option>
                    <option value="140" >140</option>
                    <option value="150" >150</option>
                    <option value="160" >160</option>
                    <option value="170" >170</option>
                    <option value="180" >180</option>
                </select>
            <p><input type="submit" value="Tirar"></p>
        </form>

        <table border="2">

        </table>          
    </body>
</html>
