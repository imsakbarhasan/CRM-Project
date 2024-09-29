<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="images/logo.jpg">
    <title>CRM || Registration</title>
    <?php include 'css/css.php'; ?>



</head>

<body>

    <!-- Header -->
    <?php include 'header.php'; ?>

    <div class="container-fluid mt-5">
        <div class="row">
            <!-- Left Section -->
            <?php include 'sidebar.php'; ?>


            <!-- Right Section -->
            <div class="col-md-9">
                <div class="right-section">
                    <!-- Content goes here -->
                    <h2 class="text-center">Registration</h2>
                    <hr>
                    <form id="registrationForm" method="POST">
                        <input type="hidden" name="action" value="registration">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" name="name" class="form-control" id="name" placeholder="Enter Name">
                            <span class="error"></span>
                        </div>
                        <div class="form-group">
                            <label for="gender">Select Gender</label>
                            <select name="gender" id="gender" class="form-control">
                                <option value="">Select Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                            <span class="error"></span>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" class="form-control" id="email" placeholder="Enter email">
                            <span class="error"></span>
                        </div>
                        <div class="form-group">
                            <label for="mobile">Mobile Number</label>
                            <input type="text" name="mobile" class="form-control" id="mobile"
                                placeholder="Enter Mobile Number">
                            <span class="error"></span>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name="password" class="form-control" id="password"
                                placeholder=" Enter Password">
                            <span class="error"></span>
                            <div id="password-message" class="message"></div>
                        </div>
                        <div class="form-group">
                            <label for="cnfpassword">Confirm Password</label>
                            <input type="password" name="cnfpassword" class="form-control" id="cnfpassword"
                                placeholder="Enter Confirm Password">
                            <span class="error"></span>
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <textarea name="address" class="form-control" placeholder="Enter Address"
                                id="address"></textarea>
                            <span class="error"></span>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-auto">
                                <h2 id="result"></h2>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-auto">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </form>
                    <!-- Add your content here -->
                </div>
            </div>
        </div>
    </div>


    <!-- Footer -->
    <footer class=" text-light p-3 mt-5 text-center">
        <div class="container">
            <p>&copy; 2024 Marc Laboratries Pvt Ltd. All rights reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS and any additional scripts -->
    <?php include 'js/js.php'; ?>
    <!-- Include any custom scripts here -->


    <script>
        $(document).ready(function () {
            $('#registrationForm').submit(function (event) {
                event.preventDefault(); // Prevent default form submission
                var formData = $(this).serialize();
                // Reset error messages
                $('.error').text('');

                // Get form data
                var name = $('#name').val();
                var gender = $('#gender').val();
                var email = $('#email').val();
                var mobile = $('#mobile').val();
                var password = $('#password').val();
                var confirmPassword = $('#cnfpassword').val();
                var address = $('#address').val();
                const capitalLetterPattern = /[A-Z]/; // At least one capital letter
                const lowercaseLetterPattern = /[a-z]/; // At least one lowercase letter
                const numberPattern = /[0-9]/; // At least one number
                const specialCharPattern = /[\W_]/; // At least one special character (e.g., !@#$%^&*)

                // Listen for changes in the password field

                // const password = $("#password").val();
                // console.log(password);
                let valid = true;

                let message = '';

                // Check for capital letters
                if (!capitalLetterPattern.test(password)) {
                    valid = false;
                    message += '<p class="error">Password must contain at least one capital letter (A-Z).</p>';
                }

                // Check for lowercase letters
                if (!lowercaseLetterPattern.test(password)) {
                    valid = false;
                    message += '<p class="error">Password must contain at least one lowercase letter (a-z).</p>';
                }

                // Check for numbers
                if (!numberPattern.test(password)) {
                    valid = false;
                    message += '<p class="error">Password must contain at least one number (0-9).</p>';
                }

                // Check for special characters
                if (!specialCharPattern.test(password)) {
                    valid = false;
                    message += '<p class="error">Password must contain at least one special character (e.g., !@#$%^&*).</p>';
                }

                // Show or hide messages based on validation result
                const passwordMessage = $('#password-message');
                if (valid) {
                    passwordMessage.html('<p class="success"></p>').show();
                } else {
                    passwordMessage.html(message).show();
                    return false;
                }


                // Validate name
                if (name.trim() === '') {
                    $('#name').next('.error').text('Name is required');
                    return false;
                }

                // Validate gender
                if (gender === '') {
                    $('#gender').next('.error').text('Gender is required');
                    return false;
                }

                // Validate email
                var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (!emailPattern.test(email)) {
                    $('#email').next('.error').text('Invalid email address');
                    return false;
                }

                // Validate mobile number
                if (mobile.trim() === '') {
                    $('#mobile').next('.error').text('Mobile number is required');
                    return false;
                }
                var mobilePattern = /^[0-9]{10}$/;
                if (!mobilePattern.test(mobile)) {
                    $('#mobile').next('.error').text('Invalid mobile number');
                    return false;
                }

                // Validate password
                if (password.length < 8) {
                    $('#password').next('.error').text('Password must be at least 8 characters');
                    return false;
                }

                // Validate confirm password
                if (confirmPassword !== password) {
                    $('#cnfpassword').next('.error').text('Passwords do not match');
                    return false;
                }

                // Validate address
                if (address.trim() === '') {
                    $('#address').next('.error').text('Address is required');
                    return false;
                }


                $.ajax({
                    type: 'POST',
                    url: 'controller/controller.php',
                    data: formData,
                    dataType: 'json',
                    success: function (response) {
                        // console.log(response.status);
                        if (response.status === 'success') {
                            document.getElementById('result').innerText = response.message;
                            document.getElementById('result').style.color = 'green'; // Set color to green for success
                            setTimeout(function () {
                                document.getElementById("registrationForm").reset();
                                document.getElementById('result').innerText = ''; // Reset the form fields
                            }, 5000);
                        } else {
                            document.getElementById('result').innerText = response.message;
                            document.getElementById('result').style.color = 'red'; // Set color to red for error
                        }
                    },
                    error: function (xhr, status, error) {
                        // Handle error response
                        console.error(xhr.responseText);
                    }
                });

            });
        });
    </script>

</body>

</html>