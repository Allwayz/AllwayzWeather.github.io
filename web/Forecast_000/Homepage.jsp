<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : Homepage
    Created on : 2019-3-20, 14:44:13
    Author     : allwayz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>World weather preview</title>
        <link href="C01.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
        <%--<%@include file="../WEB-INF/jspf/a111.jspf" %>--%>
        
       
    <div class="table">
        <header id="top">ALLWAYZ</header>

        <h1>Weather Forecast</h1>
        <hr>
               
        <table style="font-size:22px; border-collapse:separate; border-spacing:10px;width:600px " border="2" bgcolor="#efefef">
           
            <thead>
            <tr>
                <th width="300px">Continent</th>
                
            </tr>
            </thead>
            <tr>
                <td><a href="AS.jsp">Asian</a></td>
            
                
            </tr>
            
            <tr>
                <td><a href="NA.jsp">North America</a></td>
            
            </tr>
            
            <tr>
                <td><a href="EUR.jsp">Europe</a></td>
            
            </tr>
            
            <tr>
                <td><a href="AF.jsp">Africa</a></td>
            </tr>
            
            <tr>
                <td><a href="OA.jsp">Oceania</a></td>
            </tr>
            
            
        </table>
        
        <h3>Today is: <%= new java.util.Date()%></h3>
        <hr>
        
        
        
        
        <footer id="bottom">
        <ppp style="text-align: center;">CopyRight@copy2019 </ppp>
         </footer>
        
        
        
        
        
        </div>
    </body>
    
    
	

    
</html>
