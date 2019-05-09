<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : newjsp
    Created on : 2019-4-8, 12:03:33
    Author     : 25844
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <sql:query var="result" dataSource="jdbc/myDatasource">
        SELECT continent_id, continent_name FROM continent
    </sql:query>
    
    <table border="1">
        <!-- column headers -->
        <tr>
        <c:forEach var="columnName" items="${result.columnNames}">
            <th><c:out value="${columnName}"/></th>
        </c:forEach>
    </tr>
    <!-- column data -->
    <c:forEach var="row" items="${result.rowsByIndex}">
        <tr>
        <c:forEach var="column" items="${row}">
            <td><c:out value="${column}"/></td>
        </c:forEach>
        </tr>
    </c:forEach>
</table>
        
        
        <select name="">
            <option>beijing</option>
            <option>soeoul</option>
            <option>tokyo</option>
        </select>
        
        <sql:query var="result" dataSource="jdbc/myDatasource">
                    SELECT TEMPERATURE_TIME_0,
                    TEMPERATURE_TIME_3,
                    TEMPERATURE_TIME_6,
                    TEMPERATURE_TIME_9,
                    TEMPERATURE_TIME_12,
                    TEMPERATURE_TIME_15,
                    TEMPERATURE_TIME_18,
                    TEMPERATURE_TIME_21
                    FROM city, daily
                    where city.city_id = 2 
                    and city.city_id = daily.city_id
                </sql:query>
    
        <table border="1">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${result.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                    </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
        
 
       
        
        
                    <sql:query var="result" dataSource="jdbc/myDatasource">
                    SELECT city.city_name, avg(day_7.temperature)
                FROM day_7, city
                where city.city_id = 1
                and city.city_id = day_7.city_id 
                group by city.city_name
                </sql:query>
    
        <table border="1">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${result.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                    </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
        
        
        
        
        
        
        
        
        
        
        
        
        
    </body>
</html>
