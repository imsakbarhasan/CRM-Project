<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="images/logo.jpg">
    <title>Customer Relationship Management</title>
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
                    <h2>Products</h2>
                    <hr>
                    <div class="row" id="productContainer">

                        <!-- Add more products as needed -->
                    </div>
                    <!-- Add your content here -->
                </div>
            </div>
        </div>
    </div>
    <div id="loginModal" class="modal">
    <div class="login-container" style="background-color:#bee1ff;">
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

            $.ajax({
                url: 'controller/controller.php',
                method: 'POST',
                data: { action: 'getproductforpurchase' },
                dataType: 'json',
                success: function (response) {

                    if (response && response.length > 0) {

                        $('#productContainer').empty();


                        response.forEach(function (product) {

                            var productHtml = `
                    <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card-product h-100">
                                <img class="card-img-top" src="admin/${product.pimage}" alt="Product 1">
                                <div class="card-body">
                                    <h4 class="card-title">${product.pname}</h4>
                                    <h5>Rs.${product.ppunit}</h5>
                                    <p class="card-text">${product.product_desc}</p>
                                </div>
                                <div class="card-footer">
                                    <button  class=" addToCartButton btn btn-primary" data-id="${product.id}">Add to Cart</button>
                                    <button  class="buyNowButton btn btn-primary" data-id="${product.id}">Buy Now</button>
                                </div>
                            </div>
                        </div>
                    `;


                            $('#productContainer').append(productHtml);
                        });
                    } else {

                        $('#productContainer').html('<p>No products found.</p>');
                    }
                },
                error: function (xhr, status, error) {

                    console.error('Error fetching product data:', error);
                    $('#productContainer').html('<p>Failed to load products.</p>');
                }
            });
        });

    </script>
    <script>
        $(document).ready(function () {


            $(document).on('click', '.buyNowButton', function () {
                var id = $(this).data('id');
                openModal()

            });
            $(document).on('click', '.addToCartButton', function () {
                var id = $(this).data('id');
                openModal()


            });


        });



    </script>
<script>
function openModal() {
  document.getElementById('loginModal').style.display = 'block';
}

// Function to close the modal
function closeModal() {
  document.getElementById('loginModal').style.display = 'none';
}

window.onclick = function(event) {
  var modal = document.getElementById('loginModal');
  if (event.target == modal) {
    modal.style.display = 'none';
  }
}
</script>
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