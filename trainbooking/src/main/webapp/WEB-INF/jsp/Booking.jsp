<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Booking Form</title>
    
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
    <style>
        /* Internal CSS */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>User Booking Form</h2>
    <form action="#" method="post">
        <input type="text" placeholder="Enter your name" name="name">
        <input type="text" placeholder="Enter your phonenumber" name="phonenumber">
        <input type="text" placeholder="Enter totalmember" name="totalmember">
        <input type="submit" id="myButton" value="BookHere">
    </form>
    
    
    <script>
document.getElementById("myButton").addEventListener("click", function(e) {
    e.preventDefault();  
    
    Swal.fire({
    	title: 'Happy Journey!',
        text: 'Your booking has been confirmed. Have a great trip!',
        icon: 'success',
        confirmButtonText: 'OK'
    });
});
</script>

    
    
    
    
</body>
</html>
