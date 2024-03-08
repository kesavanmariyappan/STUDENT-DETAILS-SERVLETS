<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
  <title>View</title>
  <style>
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
      width: 750px;
    }
    table {
      padding-left: 40px;
      margin-left: 375px;
    }
    td {
      text-align: center;
    }
  </style>
</head>
<body>
  <h1 style="margin-top: 40px; margin-left: 550px;">STUDENT DETAILS</h1>
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
</body>
</html>
