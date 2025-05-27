<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    table {
        width: 80%;
        margin: 50px auto;
        border-collapse: collapse;
        background-color: white;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    h2 {
        text-align: center;
        color: #333;
    }

    .front-row-button {
        background-color: #ff5722;
        color: white;
        padding: 8px 16px;
        border: none;
        cursor: pointer;
    }

    .front-row-button:hover {
        background-color: #e64a19;
    }
</style>
</head>
<body>
<h2>Train Bookings</h2>
<table>
<tr>
    <th>id</th>
    <th>Name</th>
    <th>DepartureTime</th>
    <th>ArrivalTime</th>
    <th>SourceStation</th>
    <th>DestinationStation</th>
    <th>TotalSeats</th>
    <th>AvailableSeats</th>
    <th>Select</th>
</tr>


<c:forEach items="${emplist}" var="passen">
    <tr>
        <td>${passen.id}</td>
        <td>${passen.name}</td>
        <td>${passen.departureTime}</td>
        <td>${passen.arrivalTime}</td>
        <td>${passen.sourceStation}</td>
        <td>${passen.destinationStation}</td>
        <td>${passen.totalSeats}</td>
        <td>${passen.availableSeats}</td>

        <td>
                <form action="booking" method="post">
                    <input type="submit"  value="Book Now">
                </form>
         </td> 
    </tr>
</c:forEach>
</table>
</body>
</html>
