<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Dashboard - Train Schedule</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Roboto', sans-serif;
        background-color: #f4f4f9;
        display: flex;
        height: 100vh;
        flex-direction: column;
    }

    .container {
        width: 90%; /* Ensure container matches the header width */
        margin: 20px auto; /* Centers the container */
        padding-top: 20px;
    }

    h1 {
        text-align: center;
        color: #333;
        font-size: 24px;
    }

    /* Sidebar */
    .sidebar {
        height: 100vh;
        width: 250px;
        background-color: #333;
        position: fixed;
        top: 0;
        left: 0;
        padding-top: 20px;
        color: white;
        box-shadow: 2px 0 5px rgba(0,0,0,0.1);
    }

    .sidebar h2 {
        text-align: center;
        padding-bottom: 30px;
        color: white;
    }

    .sidebar a {
        display: block;
        padding: 10px;
        text-decoration: none;
        color: white;
        font-size: 16px;
        border-bottom: 1px solid #444;
    }

    .sidebar a:hover {
        background-color: #575757;
    }

    /* Main content */
    .main-content {
        margin-left: 250px;
        padding: 20px;
        flex-grow: 1;
    }

    .header {
        background-color: #333;
        color: white;
        padding: 20px;
        text-align: center;
        margin-bottom: 20px;
    }

    /* Table Styling */
    .table-container {
        width: 110%; /* Full width of the main content */
        overflow-x: auto; /* Enables horizontal scrolling if needed */
        overflow-y: auto; /* Enables vertical scrolling if needed */
        max-height: 500px; /* Set maximum height for the table */
        margin-top: 20px;
    }

    table {
        width: 100%; /* Full width for table */
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

    /* Footer */
    footer {
        text-align: center;
        background-color: #333;
        color: white;
        padding: 10px;
        position: fixed;
        width: 100%;
        bottom: 0;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .sidebar {
            width: 100%;
            height: auto;
            position: relative;
        }

        .main-content {
            margin-left: 0;
        }

        table {
            width: 100%;
        }
    }
</style>
</head>
<body>

  <!-- Sidebar -->
  <div class="sidebar">
    <h2>Admin Panel</h2>
    <a href="#">Dashboard</a>
    <a href="trains">Trains</a>
    <a href="AllTrainSchedule">Train Schedule</a>
    <a href="#">Logout</a>
  </div>

  <!-- Main Content -->
  <div class="main-content">
    <div class="header">
      <h1 style="color:white">Welcome to Indian Railway Admin</h1>
    </div>

    <!-- Train Schedule -->
    <div class="container">
        <h1>Train Bookings</h1>

        <!-- Success and Error Messages -->
        <p style="color:red">${successmsg}</p>
        <p style="color:red">${errormsg}</p>

        <!-- Table Wrapper for Scrolling -->
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Name</th>
                        <th>DepartureTime</th>
                        <th>ArrivalTime</th>
                        <th>SourceStation</th>
                        <th>DestinationStation</th>
                        <th>TotalSeats</th>
                        <th>AvailableSeats</th>
                        <th>update</th>
                        <th>delete</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop through train list -->
                    <c:forEach items="${emplist}" var="train">
                        <tr>
                            <td>${train.id}</td>
                            <td>${train.name}</td>
                            <td>${train.departureTime}</td>
                            <td>${train.arrivalTime}</td>
                            <td>${train.sourceStation}</td>
                            <td>${train.destinationStation}</td>
                            <td>${train.totalSeats}</td>
                            <td>${train.availableSeats}</td>
                            <td>
                                <form action="update" method="post">
                                    <input type="submit" value="update">
                                </form>
                            </td>
                            <td>
                                <form action="delete" method="post">
                                 <input type="hidden" name="trainid"value="${train.id}">
                                    <input type="submit" value="delete">
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
  </div>

  <!-- Footer -->
  <footer>
    
  </footer>

</body>
</html>
