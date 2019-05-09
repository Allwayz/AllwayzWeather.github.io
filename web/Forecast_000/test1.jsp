<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : test1
    Created on : 2019-4-9, 13:18:13
    Author     : 25844
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link href="C01.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
        <h1>Hello World!</h1>
        
        
        
    <sql:query var="result" dataSource="jdbc/myDatasource">
        select max(temperature) MAX_TEMPERATE
        from day_7
        
        where to_char(date_time, 'DD-MM-YY') = '07-04-19'
        and city_id = 1
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
            <td id="a1"><c:out value="${column}"/></td>
        </c:forEach>
        </tr>
    </c:forEach>
</table>
        <h1>--------------</h1>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <sql:query var="result2" dataSource="jdbc/myDatasource">
        select min(temperature) MINIMUM_TEMPERATURE
        from day_7
        where to_char(date_time, 'DD-MM-YY') = '07-04-19'
        and city_id = 1
    </sql:query>
    
        
        
        
        
        
        
        
        
        
        
        <table style="font-size:22px; border-collapse:separate; border-spacing:10px; " border="2" bgcolor="#efefef">
            <thead>
                <tr>
                    <th colspan="8"><local_header>Asian</local_header></th>
                </tr>
                    
            </thead>
            
            <tr>
                <td><select name="selectcolor" onchange="changColor()" class="selectclass">
			<option value="black">Select Location</option>
			<option value="red"style="background-color:red">Beijing</option>
			<option value="green" style="background-color:green">Tokyo</option>
			<option value="blue" style="background-color:blue">Seoul</option>
		</select></td>
                <td>
            <dvi id="text">
			IMG<br/>
			IMG<br/>
			IMG<br/>
			IMG<br/>
            </dvi>
           
            </td>
            
            <td>
                
                <table border="1">
        <!-- column headers -->
        <tr>
        <c:forEach var="columnName" items="${result2.columnNames}">
            <th><c:out value="${columnName}"/></th>
        </c:forEach>
    </tr>
    <!-- column data -->
    <c:forEach var="row" items="${result2.rowsByIndex}">
        <tr>
        <c:forEach var="column" items="${row}">
            <td id="a2"><c:out value="${column}"/></td>
        </c:forEach>
        </tr>
    </c:forEach>
    </table>
                
                
                
            </td>
           
            </tr>
            
            
            <tr>
                <td></td>
                <td><pp>Monday</pp></td>
                <td><pp>Tuesday</pp></td>
                <td><pp>Wednesday</pp></td>
                <td><pp>Thursday</pp></td>
                <td><pp>Friday</pp></td>
                <td><pp>Saturday</pp></td>
                <td><pp>Sunday</pp></td>
            </tr>
            
        </table>
        
        <br/><br/><hr>
        <a href="Homepage.jsp">Back to Homepage</a>
        <br/><hr>
        
        <script type="text/javascript">
		function changColor(){
				var oSelectNode = document.getElementsByName("selectcolor")[0];
				var colorVal = oSelectNode.options[oSelectNode.selectedIndex].value;
				document.getElementById("text").style.color = colorVal;
			}
		
	</script>

	<footer id="bottom">
        <ppp style="text-align: center;">${initParam.copyright}</ppp> 
        </footer>
        
        
        
        
        
        
        
        
        
        
        
</table>
    </body>
</html>
