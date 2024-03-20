<!doctype html>
<html lang="en" dir="ltr">
<head>
    <?php
    include('head.php');
    include('db.php');
    include('error.php');
    ?>
</head>
<body class="  ">
    <!-- loader Start -->
    <?php include('loader.php') ?>
    <!-- loader END -->
    <?php include('sidenav.php') ?>
    <main class="main-content">
        <div class="position-relative iq-banner">
            <!--Nav Start-->
            <?php include('topnav.php') ?>
            <!-- Nav Header Component Start -->
            <div class="iq-navbar-header" style="height: 215px;">
                <div class="container-fluid iq-container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="flex-wrap d-flex justify-content-between align-items-center">
                                <div>
                                    <h1>Hello LIVIN TEAM!</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="iq-header-img">
                    <img src="../assets/images/dashboard/top-header.png" alt="header"
                        class="theme-color-default-img img-fluid w-100 h-100 animated-scaleX">
                    <img src="../assets/images/dashboard/top-header1.png" alt="header"
                        class="theme-color-purple-img img-fluid w-100 h-100 animated-scaleX">
                    <img src="../assets/images/dashboard/top-header2.png" alt="header"
                        class="theme-color-blue-img img-fluid w-100 h-100 animated-scaleX">
                    <img src="../assets/images/dashboard/top-header3.png" alt="header"
                        class="theme-color-green-img img-fluid w-100 h-100 animated-scaleX">
                    <img src="../assets/images/dashboard/top-header4.png" alt="header"
                        class="theme-color-yellow-img img-fluid w-100 h-100 animated-scaleX">
                    <img src="../assets/images/dashboard/top-header5.png" alt="header"
                        class="theme-color-pink-img img-fluid w-100 h-100 animated-scaleX">
                </div>
            </div>
            <!-- Nav Header Component End -->
            <!--Nav End-->
        </div>        
        <div class="conatiner-fluid content-inner mt-n5 py-0">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">                        
                        <div class="card-body">
                            <div class="row row-gap">
                                <div class='col-md-4'>
                                    <div class='card p-4 bg-info'>
                                        <?php
                                        if ($_SERVER["REQUEST_METHOD"] == "POST") {
                                            // Handle the form submission
                                            $newPassword = mysqli_real_escape_string($conn, $_POST['new_password']);
                                            $userId = 1; // Replace with the actual user ID

                                            // Update the password in the database
                                            $updateQuery = "UPDATE tbl_user SET password = '$newPassword' WHERE id = $userId";
                                            if (mysqli_query($conn, $updateQuery)) {
                                                // Retrieve the updated password after the update
                                                $userPassword = $newPassword;
                                                // echo "Password updated successfully.";
                                            } else {
                                                echo "Error updating password: " . mysqli_error($conn);
                                            }
                                        }

                                        $query = "SELECT * FROM tbl_user";
                                        $result = mysqli_query($conn, $query);
                                        $userData = mysqli_fetch_assoc($result); // Assuming you expect only one user here
                                        $userPassword = $userData['password']; // Assuming 'password' is the column name in your database
                                        ?>
                                        <form method="POST">
                                            <h4 class='text-white mb-3'>Password Reset</h4>
                                            <div style="position: relative;">
                                                <!-- Password input with a toggle checkbox -->
                                                <input type='password' class='form-control' name='new_password' id='passwordField' value='<?php echo $userPassword; ?>' />
                                                <i id="eyeIcon" class="fas fa-eye eye-icon" onclick="togglePasswordField()"></i>
                                            </div>
                                            <input type='checkbox' id='togglePassword' onclick='togglePasswordField()' class='text-white'><span class='text-white'>Show Password</span>
                                            <input type='submit' class='btn btn-warning mt-3' value='Update' />
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Section Start -->
        <!-- <?php include('footer.php') ?> -->
        <!-- Footer Section End -->
    </main>
    <!-- Wrapper End-->
    <?php include('script.php') ?>
    <script>
        function togglePasswordField() {
            var passwordField = document.getElementById('passwordField');
            var togglePassword = document.getElementById('togglePassword');

            if (togglePassword.checked) {
                passwordField.type = 'text';
            } else {
                passwordField.type = 'password';
            }
        }
    </script>
</body>

</html>