<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
include('db.php');
$query = "SELECT * FROM tbl_customize_category WHERE status = 1";
$result = mysqli_query($conn, $query);
$categoryData = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>
<!doctype html>
<html lang="en" dir="ltr">

<head>
    <?php include('head.php') ?>
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
                                    <h1>Customize - Category</h1>
                                </div>
                                <div>
                                    <a id="showPopup" class="btn btn-link btn-soft-light">
                                        <svg class="icon-20" width="20" viewBox="0 0 24 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M9.87651 15.2063C6.03251 15.2063 2.74951 15.7873 2.74951 18.1153C2.74951 20.4433 6.01251 21.0453 9.87651 21.0453C13.7215 21.0453 17.0035 20.4633 17.0035 18.1363C17.0035 15.8093 13.7415 15.2063 9.87651 15.2063Z"
                                                stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                                stroke-linejoin="round"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M9.8766 11.886C12.3996 11.886 14.4446 9.841 14.4446 7.318C14.4446 4.795 12.3996 2.75 9.8766 2.75C7.3546 2.75 5.3096 4.795 5.3096 7.318C5.3006 9.832 7.3306 11.877 9.8456 11.886H9.8766Z"
                                                stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                                stroke-linejoin="round"></path>
                                            <path d="M19.2036 8.66919V12.6792" stroke="currentColor" stroke-width="1.5"
                                                stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M21.2497 10.6741H17.1597" stroke="currentColor" stroke-width="1.5"
                                                stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                        Add Customize Category
                                    </a>
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
            </div> <!-- Nav Header Component End -->
            <!--Nav End-->
        </div>
        <div class="conatiner-fluid content-inner mt-n5 py-0">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="datatable" class="table table-striped" data-toggle="data-table">
                                    <thead>
                                        <tr>
                                            <th>S.NO</th>
                                            <th>Category</th>
                                            <th>Date & Time</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $serialNumber = 1;
                                        foreach ($categoryData as $data) {
                                            $id = $data['id'];
                                            echo "<tr>";
                                            echo "<td>" . $serialNumber++ . "</td>";
                                            echo "<td>" . $data['name'] . "</td>";
                                            echo "<td>" . $data['created_on'] . "</td>";

                                            echo "<td>  <a class='btn btn-sm btn-icon btn-danger delete-btn' data-id='$id' data-bs-toggle='tooltip' data-bs-placement='top' title='Delete'  href='#'>
                                                            <span class='btn-inner'>
                                                                <svg class='icon-20' width='20' viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg' stroke='currentColor'>
                                                                    <path d='M19.3248 9.46826C19.3248 9.46826 18.7818 16.2033 18.4668 19.0403C18.3168 20.3953 17.4798 21.1893 16.1088 21.2143C13.4998 21.2613 10.8878 21.2643 8.27979 21.2093C6.96079 21.1823 6.13779 20.3783 5.99079 19.0473C5.67379 16.1853 5.13379 9.46826 5.13379 9.46826' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path>
                                                                    <path d='M20.708 6.23975H3.75' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path>
                                                                    <path d='M17.4406 6.23973C16.6556 6.23973 15.9796 5.68473 15.8256 4.91573L15.5826 3.69973C15.4326 3.13873 14.9246 2.75073 14.3456 2.75073H10.1126C9.53358 2.75073 9.02558 3.13873 8.87558 3.69973L8.63258 4.91573C8.47858 5.68473 7.80258 6.23973 7.01758 6.23973' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path>
                                                                </svg>
                                                            </span>
                                                        </a></td>";
                                            echo "</tr>";
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Section Start -->
        <?php include('footer.php') ?>
        <!-- Footer Section End -->
        <!-- add category popup - start -->
        <div id="overlay">
            <div id="popup">
                <h4 class="text-center fw-700 text-primary text-uppercase mb-2">Add Customize Category</h4>
                <form id="categoryForm">
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label class="form-label" for="categoryName">Category Name</label>
                                <input type="text" class="form-control" name="categoryName" id="categoryName" required>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="req_type" id="req_type" value="add">
                    <input type="submit" class="btn btn-primary w-100" name="addData" value="Submit">
                </form>
                <input id="closePopup" type="button" class="close btn btn-danger mt-3 w-100" value="Close">
            </div>
        </div>
        <!-- add category popup - end -->
    </main>

    <!-- Wrapper End-->

    <?php include('script.php') ?>
    <script>
        $(document).ready(function () {
            $("#showPopup").click(function () {
                $("#overlay").fadeIn(300);
                $("#popup").fadeIn(300);
            });

            $("#closePopup").click(function () {
                $("#overlay").fadeOut(300);
                $("#popup").fadeOut(300);
            });
            // add category - start
            $("#categoryForm").submit(function (e) {
                e.preventDefault(); // Prevent form submission
                var categoryName = $('#categoryName').val();
                if (categoryName.trim() === '' || /\d/.test(categoryName)) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Validation Error',
                        text: 'Numbers not allowed and cannot be a empty!',
                    });
                    return;
                }
                var formData = new FormData($(this)[0]);
                console.log(formData);
                $.ajax({
                    type: 'POST',
                    url: 'backend-customize-category',
                    data: formData,
                    contentType: false,
                    processData: false,
                    success: function (response) {
                        var result = JSON.parse(response);
                        if (result.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: result.message,
                            }).then(function () {
                                location.reload();
                            });
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: result.message,
                            });
                        }
                    },
                    error: function (error) {
                        console.log(error);
                    }
                });
                // Close the popup
                $("#overlay").fadeOut(300);
                $("#popup").fadeOut(300);
            });
            // add category - end            
            // delete category - start
            $('.delete-btn').on('click', function () {
                var id = $(this).data('id');
                // Use SweetAlert for confirmation
                Swal.fire({
                    title: 'Are you sure?',
                    text: 'You Want to Delete this Category!',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        // User confirmed, proceed with deletion
                        $.ajax({
                            method: "POST",
                            url: 'backend-customize-category',
                            data: { req_type: 'delete', id: id },
                            success: function (response) {
                                var result = JSON.parse(response);
                                Swal.fire({
                                    icon: result.success ? 'success' : 'error',
                                    title: result.success ? 'Success' : 'Error',
                                    text: result.message,
                                }).then(function () {
                                    if (result.success) {
                                        location.reload();
                                    }
                                });
                            },
                            error: function (xhr, status, error) {
                                console.log('Error:', xhr.responseText);
                            }
                        });
                    }
                });
            });
            // delete category - end
        });        
    </script>
</body>

</html>