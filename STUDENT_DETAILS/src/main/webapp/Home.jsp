<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
<style>
    button {
        width: 150px;
        margin-left: 670px;
        padding: 10px;
        border-radius: 5px;
        font-size: 15px;
        color: white;
        font-style: oblique;
        background-color: rgb(37, 37, 78);
    }

    .b1 {
        margin-top: 300px;
    }

    .b2 {
        margin-top: 50px;
    }
</style>
</head>
<body>

<div>
    <button class="b1" onclick="window.location.href = 'admin.jsp'" alt="Go to Admin Page">ADMIN</button><br>
    <button class="b2" onclick="window.location.href = 'student.jsp'" alt="Go to Student Page">STUDENT</button>
</div>

</body>
</html>
