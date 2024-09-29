<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="images/logo.jpg">
    <title>CRM || Login</title>
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
                    <div class="login-container">
                        <!-- Content goes here -->
                        <h2 class="text-center">Login</h2>
                        <hr>
                        <form id="loginForm" method="post">
                            <input type="hidden" name="action" value="login">
                            <div class="form-group">
                                <label for="username">UserName/Mobile</label>
                                <input type="text" name="username" class="form-control" id="username"
                                    placeholder="Enter UserName Or Mobile">
                                <span class="error"></span>
                            </div>



                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" name="password" class="form-control" id="password"
                                    placeholder=" Enter Password" required>
                            </div>

                            <!-- <button type="submit" class="btn btn-primary center-button">Submit</button> -->
                            <div class="row justify-content-center">
                                <div class="col-auto">
                                    <h2 id="result"></h2>
                                </div>
                            </div>
                            <div class="row justify-content-center">
                                <div class="col-auto">
                                    <button type="submit" class="btn btn-primary">Login</button>
                                </div>
                            </div>
                        </form>
                        <!-- Add your content here -->
                    </div>
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
            $('#loginForm').submit(function (event) {
                event.preventDefault(); // Prevent default form submission
                var formData = $(this).serialize();




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
                                document.getElementById("loginForm").reset();
                                document.getElementById('result').innerText = ''; // Reset the form fields
                                window.location.href = response.page;
                            }, 5000);
                        } else {
                            document.getElementById('result').innerText = response.message;
                            document.getElementById('result').style.color = 'red';
                            setTimeout(function () {
                                document.getElementById('result').innerText ='';
                                document.getElementById("loginForm").reset();
                            }, 5000)
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