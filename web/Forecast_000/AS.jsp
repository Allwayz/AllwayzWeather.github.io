<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : Asian
    Created on : 2019-3-25, 21:15:53
    Author     : allwayz
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="C01.css" type="text/css" rel="stylesheet" />
    </head>
    <body >
        <%--beijing 07-04-19--%>
        <sql:query var="result" dataSource="jdbc/myDatasource">
            select max(temperature) max, min(temperature) min
            from daily_weather
            where to_char(date_time, 'DD-MM-YY') = TO_CHAR(SYSDATE, 'DD-MM-YY')
            and city_id = 1
        </sql:query>
    <%--toyko 07-04-19--%>
            <sql:query var="result1" dataSource="jdbc/myDatasource">
                select max(temperature) max, min(temperature) min
                from daily_weather
                where to_char(date_time, 'DD-MM-YY') = TO_CHAR(SYSDATE, 'DD-MM-YY')
                and city_id = 2
            </sql:query>
    
            <%--seoul 07-04-19--%>
                <sql:query var="result2" dataSource="jdbc/myDatasource">
                    select max(temperature) max, min(temperature) min
                    from daily_weather
                    where to_char(date_time, 'DD-MM-YY') = TO_CHAR(SYSDATE, 'DD-MM-YY')
                    and city_id = 3
                </sql:query>
                    
        <%--beijing 07-04-19 day watherrecord--%>
        
        <sql:query var="result3" dataSource="jdbc/myDatasource">
            select status_description day_weather
            from daily_weather, status_desc
            where to_char(date_time, 'DD-MM-YY') = TO_CHAR(SYSDATE, 'DD-MM-YY')
            and city_id = 1
            and daily_weather.status_id = status_desc.status_id
            and time = 12
        </sql:query>
            
        <%--beijing 07-04-19 night watherrecord--%>    
            <sql:query var="result301" dataSource="jdbc/myDatasource">
            select status_description night_weather
            from daily_weather, status_desc
            where to_char(date_time, 'DD-MM-YY') = TO_CHAR(SYSDATE, 'DD-MM-YY')
            and city_id = 1
            and daily_weather.status_id = status_desc.status_id
            and time = 21
        </sql:query>
            
    
        <%--Seoul Now time_temperature--%>
        <sql:query var="result4" dataSource="jdbc/myDatasource">
            select time,temperature,status_description,wind_direction,wind_level
            from daily_weather, status_desc
            where to_char(date_time, 'DD-MM-YY') = TO_CHAR(SYSDATE, 'DD-MM-YY')
            and city_id = 3
            and daily_weather.status_id = status_desc.status_id order by time
    
        </sql:query>
            
            
            <%--Beijing Now time_temperature--%>
        <sql:query var="result6" dataSource="jdbc/myDatasource">
            select time,temperature,status_description,wind_direction,wind_level
            from daily_weather, status_desc
            where to_char(date_time, 'DD-MM-YY') = TO_CHAR(SYSDATE, 'DD-MM-YY')
            and city_id = 1
            and daily_weather.status_id = status_desc.status_id order by time
    
        </sql:query>
            
            
            <%--Toyko Now time_temperature--%>
        <sql:query var="result7" dataSource="jdbc/myDatasource">
            select time,temperature,status_description,wind_direction,wind_level
            from daily_weather, status_desc
            where to_char(date_time, 'DD-MM-YY') = TO_CHAR(SYSDATE, 'DD-MM-YY')
            and city_id = 2
            and daily_weather.status_id = status_desc.status_id order by time
    
        </sql:query>
        
        
        
        
            <sql:query var="result5" dataSource="jdbc/myDatasource">
                select time_zone, population, language
                from city, country
                where country.country_id = 1
                and country.country_id = city.country_id
            </sql:query>
    
            
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <div class="table">
            <h1>Weather Forecast</h1>
        <hr>
        
        <ppp>Date: <%= new java.util.Date()%></ppp>
            <table style="font-size:22px; border-collapse:separate; border-spacing:10px; " border="2" bgcolor="#efefef">
                <thead>
            <tr>
                <th width="300px">Asian</th>
                <th width="300px">weather</th>
                <th width="300px">Temperature</th>
            </tr>
            </thead>
            
            <tr>
                <td>
                    <table border="1">
                <%-- column headers 
                <tr>
                    <c:forEach var="columnName" items="${result5.columnNames}">
                        <th><c:out value="${columnName}"/></th>
                        </c:forEach>
                </tr>
                --%>
                <!-- column data -->
                <c:forEach var="row" items="${result5.rowsByIndex}">
                    <tr>
                        <td clospan="3"><p>Beijing</p></td>
                        <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                        </c:forEach>
                    </tr>
                </c:forEach>
            </table>
                </td>
                
                <td>
                    
                  <table border="1">
            <%-- column headers 
            <tr>
                <c:forEach var="columnName" items="${result3.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                    </c:forEach>
            </tr>
            --%>
            <!-- column data -->
            <c:forEach var="row" items="${result3.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td id="a1"><ppp>day</ppp></td>
                        <td id="a1"><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
         
                    
            
            <c:forEach var="row" items="${result301.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td id="a1"><ppp>night</ppp></td>
                        <td id="a1"><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table> 
            
            
            
                </td>
                <td> 
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
                </td>
            </tr>
                
            <tr>
                <td><p>Tokyo</p></td>
                <td><pp>Weather</pp></td>
                <td>
                    <table border="1">
                <!-- column headers -->
                <tr>
                    <c:forEach var="columnName" items="${result1.columnNames}">
                        <th><c:out value="${columnName}"/></th>
                        </c:forEach>
                </tr>
                <!-- column data -->
                <c:forEach var="row" items="${result1.rowsByIndex}">
                    <tr>
                        <c:forEach var="column" items="${row}">
                            <td id="a1"><c:out value="${column}"/></td>
                        </c:forEach>
                    </tr>
                </c:forEach>
            </table>
                </td>
            </tr>
            
            <tr>
                <td><p>seoul</p></td>
                <td><pp>Weather</pp></td>
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
                                <td id="a1"><c:out value="${column}"/></td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>  
                </td>
            </tr>
            </table>
        
        <br/><hr><br/>
        
        <table style="font-size:22px; border-collapse:separate; border-spacing:10px; " border="2" bgcolor="#efefef">
            <thead>
                <tr>
                    <th colspan="8"><local_header>Asian</local_header></th>
                </tr>
                    
            </thead>
            
            <tr>
                <td><select name="selectlocation" onchange="selectlocation('mune_x'+this.value)" class="selectclass">
			<option value="1"style="background-color:red" selected="selected">Beijing</option>
			<option value="2" style="background-color:green">Tokyo</option>
			<option value="3" style="background-color:blue">Seoul</option>
		</select></td>
                
                
                
                
                
                
                <td>
                    <div id="x1" style="display:block;">
                    
                        <table border="1">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${result6.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                    </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result6.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td id="a1"><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
                       
                    </div>
                    
                    
                    
                    <div id="x2" style="display:none;">
                        <table border="1">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${result7.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                    </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result7.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td id="a1"><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
                    </div>
                    
                    
                    
                    <div id="x3" style="display:none;">
                        <table border="1">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${result4.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                    </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result4.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td id="a1"><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
                    </div>
                </td>
           
            </tr>
            
            
            
            
        </table>
        
        <br/><br/><hr>
        <a href="Homepage.jsp">Back to Homepage</a>
        <br/><hr>
        
        <script type="text/javascript">
		function selectlocation(Names){
                   
                    var Name;
                    for (var i=1;i<4;i++){
                        var tempname="mune_x"+i;
                        var NewsHot="x"+i;
                            if (Names===tempname){
                                Nnews=document.getElementById(NewsHot);
                                Nnews.style.display='';
                            }else{
                                Nnews=document.getElementById(NewsHot);
                                Nnews.style.display='none';
                                    }
                                                }
        
                }
                
                
                
	</script>

	<footer id="bottom">
        <ppp style="text-align: center;">${initParam.copyright}</ppp> 
        </footer>
        
    </div>    
    </body>
</html>
