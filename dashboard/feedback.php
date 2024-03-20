<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
include('db.php');
$query = "SELECT * FROM tbl_feedback WHERE status = 1";
$result = mysqli_query($conn, $query);
$datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
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
                                    <h1>Feedback</h1>                                    
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
                                            <th style='text-wrap:wrap;text-align:center'>S.NO</th>
                                            <th style='text-wrap:wrap;text-align:center'>Date & Time</th>
                                            <th style='text-wrap:wrap;text-align:center'>Department From</th>
                                            <th style='text-wrap:wrap;text-align:center'>Department To</th>
                                            <th style='text-wrap:wrap;text-align:center'>Message</th>
                                            <th style='text-wrap:wrap;text-align:center'>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $serialNumber = 1;
                                        foreach ($datas as $data) {
                                            $id = $data['id'];
                                            echo "<tr>";
                                            echo "<td>" . $serialNumber++ . "</td>";
                                            echo "<td>" . $data['created_on'] . "</td>";
                                            echo "<td>" . $data['department_from'] . "</td>";
                                            echo "<td>" . $data['department_to'] . "</td>";
                                            echo "<td style='text-wrap:wrap'>" . $data['message'] . "</td>";
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
    </main>

    <!-- Wrapper End-->

    <?php include('script.php') ?>
    <script>
        $(document).ready(function () {
            $('.delete-btn').on('click', function () {
                var feedbackId = $(this).data('id');

                // Use SweetAlert for confirmation
                Swal.fire({
                    title: 'Are you sure?',
                    text: 'You won\'t be able to revert this!',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        // If user confirms, proceed with deletion
                        $.ajax({
                            method: "POST",
                            url: 'feedback-backend',
                            data: { req_type: 'delete', feedbackId: feedbackId },
                            success: function (response) {
                                // Show a success message
                                Swal.fire({
                                    icon: 'success',
                                    title: 'Deleted!',
                                    text: response,
                                }).then(() => {
                                    // Reload the page after deletion
                                    location.reload();
                                });
                            },
                            error: function (xhr, status, error) {
                                // Show an error message
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Error!',
                                    text: 'An error occurred while deleting the feedback.',
                                });
                                console.log('Error:', xhr.responseText);
                            }
                        });
                    }
                });
            });
        });
    </script>
</body>

</html>