<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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

        .b3 {
            margin-top: 50px;
        }

        .b4 {
            margin-top: 50px;
        }
    </style>
</head>
<body>

<form>
    <button class="b1" onclick="window.location.href = 'form.jsp'" type="button">ADD DETAILS</button><br>
    <button class="b2" formaction="select" >VIEW DETAILS</button><br>
    <button class="b3" onclick="window.location.href = 'upform.jsp'" type="button">UPDATE DETAILS</button><br>
    <button class="b4" onclick="window.location.href = 'del.jsp'" type="button">DELETE DETAILS</button>
</form>

</body>
</html>
