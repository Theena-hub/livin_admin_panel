<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
include('db.php');

class GallerySubCategory
{
    function add()
    {
        extract($_REQUEST);
        global $conn;
        // Fetch category name based on category ID
        $queryCategory = "SELECT name FROM tbl_gallery_category WHERE id = '$categoryId'";
        $resultCategory = mysqli_query($conn, $queryCategory);
        $categoryData = mysqli_fetch_assoc($resultCategory);
        $categoryName = $categoryData['name'];

        if (isset($_FILES['image']) && $_FILES['image']['error'] == UPLOAD_ERR_OK) {
            $image_tmp_name = $_FILES['image']['tmp_name'];
            $image_name = uniqid() . '.' . pathinfo($_FILES['image']['name'],PATHINFO_EXTENSION);

            // Choose a directory to store the uploaded images
            $upload_directory = 'uploads/';

            // Move the uploaded image to the chosen directory
            $target_path = $upload_directory . $image_name;
            if (move_uploaded_file($image_tmp_name, $target_path)) {
                // File moved successfully, now insert into the database                
                $query = "INSERT INTO tbl_gallery_subcategory (category_id,category_name,name,image) VALUES ('$categoryId','$categoryName','$subcategoryName','$image_name')";
                $result = mysqli_query($conn, $query);
                if ($result) {
                    echo json_encode(['success' => true, 'message' => 'Sub Category Added Successfully!']);
                } else {
                    echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
                }
            } else {                
                echo json_encode(['success' => false, 'message' => 'Error moving the uploaded image!']);
            }
        } 
        else {
            $query = "INSERT INTO tbl_gallery_subcategory (category_id,category_name,name) VALUES ('$categoryId','$categoryName','$subcategoryName')";
                $result = mysqli_query($conn, $query);
                if ($result) {
                    echo json_encode(['success' => true, 'message' => 'Sub Category Added Successfully!']);
                } else {
                    echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
                }
        }        
    }
    function delete()
    {
        extract($_REQUEST);
        global $conn;

        $query = "UPDATE tbl_gallery_subcategory SET status = 0 WHERE id = '$id'";
        $result = mysqli_query($conn, $query);

        if ($result) {
            echo json_encode(['success' => true, 'message' => 'Sub Category Deleted Successfully!']);
        } else {
            echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
        }
    }
}

$func_type = new GallerySubCategory;

if ($_REQUEST['req_type'] == 'add') {
    $func_type->add();
} else if ($_REQUEST['req_type'] == 'delete') {
    $func_type->delete();
}
?>