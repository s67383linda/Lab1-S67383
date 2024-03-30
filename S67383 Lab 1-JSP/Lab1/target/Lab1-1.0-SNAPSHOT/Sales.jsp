<%-- 
    Document   : Sales
    Created on : 30 Mar 2024, 3:10:24 pm
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<% 
  // Define variables to hold data
  List<String[]> data = new ArrayList<String[]>();
  String line;

  // Read the CSV file
  try {
    BufferedReader br = new BufferedReader(new FileReader("Sales.csv"));

    while ((line = br.readLine()) != null) {
      // Split the line by comma to get individual values
      String[] values = line.split(",");
      data.add(values);
    }

    br.close();
  } catch (FileNotFoundException e) {
    e.printStackTrace();
  } catch (IOException e) {
    e.printStackTrace();
  }
%>

<!DOCTYPE html>
<html>
<head>
  <title>Sales Report</title>
</head>
<body>
  <h1>Sales Report</h1>
  <table>
    <tr>
      <th>Customer</th>
      <th>Purchase</th>
      <th>Discount</th>
      <th>Customer Type</th>
    </tr>
    <% for (String[] row : data) { 
      // Calculate discount based on customer type
      double discount = 0.0;
      if (row[3].equals("Cash")) {
        discount = Double.parseDouble(row[1]) * 0.1;
      }
    %>
    <tr>
      <td><%= row[0] %></td>
      <td><%= row[1] %></td>
      <td><%= discount %></td>
      <td><%= row[3] %></td>
    </tr>
    <% } %>
  </table>
</body>
</html>
