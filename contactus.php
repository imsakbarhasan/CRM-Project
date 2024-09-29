<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="images/logo.jpg">
    <title>CRM || ContactUs</title>
    <?php include 'css/css.php'; ?>



</head>

<body>

    <!-- Header -->
    <?php include 'header.php';?>

    <div class="container-fluid mt-5">
        <div class="row">
            <!-- Left Section -->
            <?php include 'sidebar.php'; ?>


            <!-- Right Section -->
            <div class="col-md-9">
                <div class="right-section">
                    <!-- Content goes here -->
                    <h2 class="text-center">Contact Us</h2>
                    <hr>
                    <form id="contactForm" method="POST">
                        <input type="hidden" value="contact" name="action">
                        <div class="form-group">
                            <label for="username">Name</label>
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
                            <label for="address">Address</label>
                            <textarea name="address" class="form-control" placeholder="Enter Address"
                                id="address"></textarea>
                                <span class="error"></span>
                        </div>
                        <div class="form-group">
                            <label for="address">Enquiry</label>
                            <textarea name="enquiry" class="form-control" placeholder="Enter Enquiry"
                                id="enquiry"></textarea>
                                <span class="error"></span>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-auto">
                                <h2 id="result"></h2>
                            </div>
                        </div>
                        <!-- <button type="submit" class="btn btn-primary center-button">Submit</button> -->
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
    <footer class=" text-light p-3 mt-5 text-center ">
        <div class="container">
            <p>&copy; 2024 Marc Laboratries Pvt Ltd. All rights reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS and any additional scripts -->
    <?php include 'js/js.php'; ?>
    <!-- Include any custom scripts here -->
    <script>
        $(document).ready(function () {
            $('#contactForm').submit(function (event) {
                event.preventDefault(); // Prevent default form submission
                var formData = $(this).serialize();
                // Reset error messages
                $('.error').text('');

                // Get form data
                var name = $('#name').val();
                var gender = $('#gender').val();
                var email = $('#email').val();
                var mobile = $('#mobile').val();
                var enquiry = $('#enquiry').val();
                var address = $('#address').val();

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


                // Validate address
                if (address.trim() === '') {
                    $('#address').next('.error').text('Address is required');
                    return false;
                }
                if (enquiry.trim() === '') {
                    $('#enquiry').next('.error').text('Enquiry is required');
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
                                document.getElementById("contactForm").reset();
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