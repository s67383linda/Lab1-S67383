<%-- 
    Document   : calculate_area
    Created on : 29 Mar 2024, 11:38:43 pm
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>Circle Area Calculator Result</title>
</head>
<body>
  <%
    // Get the value of the radius from the request parameter
    String radiusStr = request.getParameter("radius");
    double radius = 0;
    double area = 0;
    String errorMsg = "";

    try {
        // Convert the radius from a string to a double
        radius = Double.parseDouble(radiusStr);

        // Check if the radius is non-negative
        if (radius >= 0) {
            // Calculate the area of the circle
            area = Math.PI * radius * radius;
        } else {
            errorMsg = "Radius cannot be negative!";
        }
    } catch (NumberFormatException e) {
        errorMsg = "Invalid radius input!";
    }
  %>

  <% if (errorMsg.isEmpty()) { %>
    <p>The area of the circle with radius <%= radius %> is: <%= area %></p>
  <% } else { %>
    <p><b>Error:</b> <%= errorMsg %></p>
  <% } %>
</body>
</html>
