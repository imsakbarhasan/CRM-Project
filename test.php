<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-7QmsT0RCY3ZFD4cJ5V61PfSpIt07l7bEKwNf7/5Emxn+6SnJ/sDv7f7+/ajTPTfD" crossorigin="anonymous">
    <style>
        /* Custom styles for the login page */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f8f9fa; /* Light background color */
        }
        .login-container {
            width: 100%;
            max-width: 400px; /* Adjust the max-width as needed */
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add shadow */
        }
        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form id="loginForm">
            <div class="mb-3">
                <label for="emailOrMobile" class="form-label">Email or Mobile</label>
                <input type="text" class="form-control" id="emailOrMobile" name="emailOrMobile" placeholder="Enter email or mobile" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
            </div>
            <div class="d-grid">
                <button type="submit" class="btn btn-primary">Login</button>
            </div>
        </form>
    </div>

    <!-- Include Bootstrap JS and any other JS libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gyb53dU9QAMTLNv4Lm/Pb3z1p+/9+6pBb5GvD8E00j5d6A3uVd" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-8b9MSKPe0hhGo3tN/bzruyE1eR2hHjWc2/01LjGJ/Kmo3hUlmjG3v+yRNU6XxNfw" crossorigin="anonymous"></script>
    
    <!-- Add your JavaScript code here -->
    <script>
        // Handle the form submission
        document.getElementById('loginForm').addEventListener('submit', function(event) {
            event.preventDefault();
            // Your AJAX code to handle form submission goes here
            // Use the form data and send it to your server for authentication
        });
    </script>
</body>
</html>
