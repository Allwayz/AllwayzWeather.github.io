<%-- 
    Document   : EUR
    Created on : 2019-3-25, 22:24:14
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
    <body>
        <div class="table">
            <h1>Weather Forecast</h1>
        <hr>
            <table style="font-size:22px; border-collapse:separate; border-spacing:10px; " border="2" bgcolor="#efefef">
                <thead>
            <tr>
                <th width="300px">EUR</th>
                <th width="300px">Weather</th>
                <th width="300px">Temperature</th>
            </tr>
            </thead>
            
            <tr>
                <td><p>Barcelona</p></td>
                <td><pp>Weather</pp></td>
                <td><pp>Temperature</pp></td>
            </tr>
                
            <tr>
                <td><p>Brague</p></td>
                <td><pp>Weather</pp></td>
                <td><pp>Temperature</pp></td>
            </tr>
            
            <tr>
                <td><p>Amaterdam</p></td>
                <td><pp>Weather</pp></td>
                <td><pp>Temperature</pp></td>
            </tr>
            </table>
        
                <br><hr><br>

        <table style="font-size:22px; border-collapse:separate; border-spacing:10px; " border="2" bgcolor="#efefef">
            <thead>
                <tr>
                    <th colspan="8"><local_header>EUR</local_header></th>
                </tr>
                    
            </thead>
            
            <tr>
                <td><select name="selectcolor" onchange="changColor()" class="selectclass">
			<option value="black">Select Location</option>
			<option value="red"style="background-color:red">Barcelona</option>
			<option value="green" style="background-color:green">Brague</option>
			<option value="blue" style="background-color:blue">Amaterdam</option>
		</select></td>
                <td colspan="8" >
            <dvi id="text">
			IMG<br/>
			IMG<br/>
			IMG<br/>
			IMG<br/>
            </dvi>
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
        </div>
    </body>
</html>
