<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
include('db.php');

class Customize
{
    function add()
    {
        extract($_REQUEST);
        global $conn;


        if (
            isset($_FILES['image1']) && $_FILES['image1']['error'] == UPLOAD_ERR_OK &&
            isset($_FILES['image2']) && $_FILES['image2']['error'] == UPLOAD_ERR_OK
        ) {

            $image1_tmp_name = $_FILES['image1']['tmp_name'];
            $image1_name = uniqid() . '.' . pathinfo($_FILES['image1']['name'],PATHINFO_EXTENSION);

            $image2_tmp_name = $_FILES['image2']['tmp_name'];
            $image2_name = uniqid() . '.' . pathinfo($_FILES['image2']['name'],PATHINFO_EXTENSION);

            // Fetch category name
            $categoryQuery = "SELECT name FROM tbl_customize_category WHERE id = '$categoryId'";
            $categoryResult = mysqli_query($conn, $categoryQuery);
            $category = mysqli_fetch_assoc($categoryResult);
            $categoryName = $category['name'];

            // Fetch subcategory name
            $subcategoryQuery = "SELECT name FROM tbl_customize_subcategory WHERE id = '$subcategoryId'";
            $subcategoryResult = mysqli_query($conn, $subcategoryQuery);
            $subcategory = mysqli_fetch_assoc($subcategoryResult);
            $subcategoryName = $subcategory['name'];

            // Choose a directory to store the uploaded images
            $upload_directory = 'uploads/';

            // Move the uploaded images to the chosen directory
            $target_path1 = $upload_directory . $image1_name;
            $target_path2 = $upload_directory . $image2_name;

            if (move_uploaded_file($image1_tmp_name, $target_path1) && move_uploaded_file($image2_tmp_name, $target_path2)) {
                // File moved successfully, now insert into the database
                $query = "INSERT INTO tbl_customize (category_id, subcategory_id, image1, image2, colorcode) VALUES ('$categoryId', '$subcategoryId', '$image1_name', '$image2_name','$colorcode')";
                $result = mysqli_query($conn, $query);

                if ($result) {
                    echo json_encode(['success' => true, 'message' => 'Record Added Successfully!']);
                } else {
                    echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
                }
            } else {
                echo "Error moving the uploaded images.";
            }
        } else {
            echo "Please select both images.";
        }
    }
    function delete()
    {
        extract($_REQUEST);
        global $conn;

        $query = "UPDATE tbl_customize SET status = 0 WHERE id = '$id'";
        $result = mysqli_query($conn, $query);

        if ($result) {
            echo json_encode(['success' => true, 'message' => 'Record Deleted Successfully!']);
        } else {
            echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
        }
    }
    function getSubcategories()
    {
        extract($_POST);
        global $conn;

        $subcategoryQuery = "SELECT id, name FROM tbl_customize_subcategory WHERE category_id = '$categoryId' AND status = 1";
        $subcategoryResult = mysqli_query($conn, $subcategoryQuery);
        $subcategories = mysqli_fetch_all($subcategoryResult, MYSQLI_ASSOC);
        echo json_encode($subcategories);
    }

}
$func_type = new Customize;

if ($_REQUEST['req_type'] == 'add') {
    $func_type->add();
} else if ($_REQUEST['req_type'] == 'delete') {
    $func_type->delete();
} else if ($_REQUEST['req_type'] == 'getSubcategories') {
    $func_type->getSubcategories();
}
?>