<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Registration Form</title>
  <style>
    label {
      margin-top: 10px;
      margin-left: 550px;
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
      
    }
    .b1
    {
        width: 150px;
        margin-left: 715px;
        padding: 10px;
        border-radius: 5px;
        font-size: 15px;
        color: white;
        font-style: oblique;
        background-color: rgb(37, 37, 78);
    }
    h1
    {
      margin-top: 200px;
      margin-left: 660px;
    }
  </style>
</head>
<body>
  <h1>STUDENT DETAILS</h1>

  <form action="update" method="post">

    <label for="regno">Registration Number:</label>
    <input type="text" id="regno" name="regno" required style="margin-left: 10px;"><br>

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required style="margin-left: 175px;"><br>

    <label for="department">Department:</label>
    <input type="text" id="department" name="department" required style="margin-left: 108px;"><br>

    <label for="section">Section:</label>
    <input type="text" id="section" name="section" required style="margin-left: 158px;"><br>

    <label for="district">District:</label>
    <input type="text" id="district" name="district" required style="margin-left: 155px;"><br>

    <label for="mobileno">Mobile Number:</label>
    <input type="text" id="mobileno" name="mobileno" required style="margin-left: 65px;">
    <br>

    <input type="submit" value="Submit" class="b1">
  </form>

</body>
</html>