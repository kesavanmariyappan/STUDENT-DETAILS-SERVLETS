<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="servlets.getters" %>
<%@ page import="servlets.database" %>
<%@ page import="java.util.List" %>

<%List<getters> arr = database.selectdata();%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Registration Form</title>
  <style>
    label {
      margin-top: 50px;
      margin-left: 525px;
    }
    input {
      width: 250px;
      margin-bottom: 10px;
      border: 1px solid black;
      border-radius: 4px;
      margin: 8px 0;
    }
    form{
      font-size: 25px;
      font-weight: bold;
      margin-top: 80px;
    }
    
  table, th, td {
    border:1px solid black;
    border-collapse: collapse;
    width: 750px;
  }
  table{
    padding-left: 40px;
    margin-left: 400px;
    margin-top: 45px;
  }
  td
  {
    text-align: center;
  }
</style>

</head>
<body>
  <form action="Delete" method="post">
    <label for="regno">Registration Number:</label>
    <input type="text" id="regno" name="regno" required style="margin-left: 10px;">
  </form>
  <% try { %>
  <% int i = (int)request.getAttribute("n"); %>
  <% if (i > 0) { %>
    <table>
      <tr>
        <th>REG NO</th>
        <th>NAME</th>
        <th>DEPARTMENT</th>
        <th>SECTION</th>
        <th>DISTRICT</th>
        <th>MOBILE NO</th>
      </tr>
      <c:forEach var="student" items="${arr}">
        <tr>
          <td>${student.regno}</td>
          <td>${student.name}</td>
          <td>${student.dep}</td>
          <td>${student.sec}</td>
          <td>${student.district}</td>
          <td>${student.mobile}</td>
        </tr>
      </c:forEach>
    </table>
  <% } %>
<% } catch (Exception e) { %>
<% } %>



</body>
</html>