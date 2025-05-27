<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Roboto', sans-serif;
    background-color: #f4f4f9;
}

.container {
    width: 80%; /* Increased width to 80% */
    margin: 0 auto;
    padding-top: 30px;
}

h1 {
    text-align: center;
    color: #333;
    font-size: 24px; /* Smaller title font size */
}

.form-container {
    margin-top: 20px;
    background-color: #f9fafb; /* Light grayish-blue background for the form */
    padding: 25px; /* Increased padding */
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    max-width: 700px; /* Increased max width for larger form */
    margin-left: auto;
    margin-right: auto;
}

.form-container label {
    display: block;
    font-size: 14px; /* Smaller label font size */
    font-weight: 600;
    margin-bottom: 8px;
    color: #333;
}

.form-container input[type="text"], .form-container input[type="number"], .form-container input[type="submit"], .form-container input[type="reset"] {
    width: 100%;
    padding: 10px 14px; /* Slightly larger padding */
    margin: 10px 0; /* Increased margin for more space between fields */
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 14px; /* Smaller font size */
    color: #333;
}

.form-container input[type="submit"], .form-container input[type="reset"] {
    background-color: green;
    color: white;
    cursor: pointer;
    font-weight: bold;
}

.form-container input[type="reset"] {
    background-color: red;
}

.form-container input[type="submit"]:hover, .form-container input[type="reset"]:hover {
    background-color: #4CAF50;
}

.form-container input[type="text"]:focus, .form-container input[type="number"]:focus {
    border-color: #4CAF50;
    outline: none;
}

p {
    color: red;
    text-align: center;
    font-size: 14px;
    margin-top: 10px;
}

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
}

.sidebar a {
    display: block;
    padding: 10px;
    text-decoration: none;
    color: white;
    font-size: 16px; /* Smaller font size for sidebar links */
    border-bottom: 1px solid #444;
}

.sidebar a:hover {
    background-color: #575757;
}

.main-content {
    margin-left: 250px;
    padding: 20px;
}

.header {
    background-color: #333;
    color: white;
    padding: 20px;
    text-align: center;
}

.dashboard {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 20px;
}

.card {
    background-color: white;
    padding: 20px;
    width: 22%;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    border-radius: 8px;
    margin-bottom: 20px;
}

.card h3 {
    margin-bottom: 10px;
    font-size: 24px;
}

.card p {
    font-size: 18px;
    color: #555;
}

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
    .form-container {
        padding: 15px;
    }
    .form-container input[type="text"], .form-container input[type="number"] {
        width: 100%;
    }
    .dashboard {
        flex-direction: column;
    }
    .card {
        width: 100%;
        margin-bottom: 20px;
    }
}
    
    
</style>
</head>
<body>

  <!-- Sidebar -->
  <div class="sidebar">
    <h2 style="color: white; text-align: center; padding-bottom: 30px;">Admin Panel</h2>
    <a href="#">Dashboard</a>
    <a href="trains">trains</a>
    <a href="AllTrainSchedule">TrainSchedule</a>
    <a href="#">Logout</a>
  </div>

  <!-- Main content -->
  <div class="main-content">
    <div class="header">
      <h1 style="color: white">Welcome to Indian Railway</h1>
    </div>


<div class="container">
    <h1>Train List</h1>
    <p style="color:red">${successmsg}</p>
    <p style="color:red">${errormsg}</p>
    

    <!-- Form to add or update train details -->
    <div class="form-container">
     <form action="TrainListServlet" method="POST">
    <label for="id">Train ID:</label>
    <input type="number" id="id" name="id" required>

    <label for="Name">Train Name:</label>
    <input type="text" id="Name" name="Name" required>

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

    <input type="submit" value="Insert">
</form>

    </div>
</div>
    </div>
  </div>

  <!-- Footer -->
  <footer>
    
  </footer>

</body>
</html>
