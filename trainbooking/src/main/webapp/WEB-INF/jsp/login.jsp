<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        
       body {
            font-family: Arial, sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-image: url('https://img.etimg.com/thumb/width-640,height-480,imgsize-1063601,resizemode-75,msid-115732288/industry/transportation/railways/high-speed-trains-indian-railways-280-kmph-speed-aerodynamic-design-indias-next-high-speed-trains-are-coming-soon-beml-icf-ashwini-vaishnaw/indian-railways-speeding-into-future.jpg');
            background-size: cover;
            background-position: center;
        }
        .container {
            background-color: powder blue;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            justify-content:flex-end; 
        }

       
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: black;
        }

       
        .error-message {
            color: red;
            font-size: 14px;
            margin-bottom: 10px;
        }

        
        .input-group {
            margin-bottom: 15px;
            
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
            
        }

        .input-group input:focus {
            border-color: #5c6bc0;
        }

        
        .submit-group input {
            width: 100%;
            padding: 10px;
            background-color: #5c6bc0;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
           
        }

        .submit-group input:hover {
            background-color: #3f51b5;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Train Ticket Login</h1>
        <p class="error-message">${errormsg}</p>
        <form action="loginpage" method="POST">
            <div class="input-group">
                <input type="text" placeholder="Enter your username" name="username" required>
            </div>
            <div class="input-group">
                <input type="password" placeholder="Enter your password" name="password" required>
            </div>
            <div class="input-group">
                <input type="text" placeholder="Enter your role" name="role" required>
            </div>
            <div class="submit-group">
                <input type="submit" value="Login">
            </div>
        </form>
    </div>
</body>
</html>