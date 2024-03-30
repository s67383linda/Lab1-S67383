<%-- 
    Document   : Exercise1Lab1
    Created on : 29 Mar 2024, 11:24:26 pm
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Circle Area Calculator</title>
<style>
  fieldset {
    border: 2px solid #000;
    padding: 10px;
    width: fit-content;
  }
  legend {
    font-weight: bold;
  }
</style>
</head>
<body>
  <form method="post" action="calculate_area.jsp">
    <fieldset>
      <legend>Input</legend>
      <label for="radius">Enter the radius of the circle:</label>
      <input type="text" name="radius" id="radius" required>
      <br>
      <input type="submit" value="Calculate">
    </fieldset>
  </form>
</body>
</html>
