<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Confirmation</title>
    <!-- SweetAlert CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.5.9/dist/sweetalert2.min.css">
</head>
<body>
    <!-- SweetAlert JS (Place it in the footer or before any custom script) -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.5.9/dist/sweetalert2.min.js"></script>

    <script>
        // Check if the booking status is successful and trigger SweetAlert
        <% if(request.getAttribute("bookingStatus") != null && request.getAttribute("bookingStatus").equals("success")) { %>
            Swal.fire({
                title: 'Happy Journey!',
                text: 'Your booking has been confirmed. Have a great trip!',
                icon: 'success',
                confirmButtonText: 'OK'
            });
        <% } %>
    </script>
</body>
</html>
