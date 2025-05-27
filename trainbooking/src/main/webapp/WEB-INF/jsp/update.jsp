<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Train List Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #90EE90; /* Light green background */
        }
        .container {
            width: 80%;
            margin: 0 auto;
        }
        h1 {
            text-align: center;
        }
        .form-container {
            margin-top: 20px;
        }
        .form-container input[type="text"], .form-container input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
        }
        .form-container input[type="submit"], .form-container input[type="reset"] {
            padding: 10px 20px;
            margin: 5px 5px;
            cursor: pointer;
        }
        .form-container input[type="submit"] {
            background-color: green;
            color: white;
        }
        .form-container input[type="reset"] {
            background-color: red;
            color: white;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Train List</h1>
    <p style="color:red">${successmsg}</p>
    <p style="color:red">${errormsg}</p>
    

    <!-- Form to add or update train details -->
    <div class="form-container">
     <form action="Updatetrain" method="POST">
    <label for="id">Train ID:</label>
    <input type="number" id="id" name="id" required>

    <label for="Name">Train Name:</label>
    <input type="text" id="Name" name="name" required>

    <label for="DepartureTime">Departure Time (HH:mm:ss):</label>
    <input type="text" id="DepartureTime" name="DepartureTime" required>

    <label for="ArrivalTime">Arrival Time (HH:mm:ss):</label>
    <input type="text" id="ArrivalTime" name="ArrivalTime" required>

    <label for="SourceStation">Source Station:</label>
    <input type="text" id="SourceStation" name="SourceStation" required>

    <label for="DestinationStation">Destination Station:</label>
    <input type="text" id="DestinationStation" name="DestinationStation" required>

    <label for="TotalSeats">Total Seats:</label>
    <input type="number" id="TotalSeats" name="TotalSeats" required>

    <label for="AvailableSeats">Available Seats:</label>
    <input type="number" id="AvailableSeats" name="AvailableSeats" required>

    <input type="submit" value="update">
</form>

    </div>

    
</div>

</body>
</html>
