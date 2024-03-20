<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
include('db.php');

class Gallery
{
    function add()
    {
        extract($_REQUEST);
        global $conn;

        // Fetch category name
        $categoryQuery = "SELECT name FROM tbl_gallery_category WHERE id = '$categoryId'";
        $categoryResult = mysqli_query($conn, $categoryQuery);
        $category = mysqli_fetch_assoc($categoryResult);
        $categoryName = $category['name'];

        // Fetch subcategory name
        $subcategoryQuery = "SELECT name FROM tbl_gallery_subcategory WHERE id = '$subcategoryId'";
        $subcategoryResult = mysqli_query($conn, $subcategoryQuery);
        $subcategory = mysqli_fetch_assoc($subcategoryResult);
        $subcategoryName = $subcategory['name'];

        if (isset($_FILES['image']) && $_FILES['image']['error'] == UPLOAD_ERR_OK) {
            $image_tmp_name = $_FILES['image']['tmp_name'];
            $image_name = uniqid() . '.' . pathinfo($_FILES['image']['name'],PATHINFO_EXTENSION);
            
            // Choose a directory to store the uploaded images
            $upload_directory = 'uploads/';

            // Move the uploaded image to the chosen directory
            $target_path = $upload_directory . $image_name;
            if (move_uploaded_file($image_tmp_name, $target_path)) {
                // File moved successfully, now insert into the database                
                $query = "INSERT INTO tbl_gallery (category_id,category_name,subcategory_id,subcategory_name,image,title,description) VALUES ('$categoryId','$categoryName','$subcategoryId','$subcategoryName','$image_name','$title','$description')";
                $result = mysqli_query($conn, $query);
                if ($result) {
                    echo json_encode(['success' => true, 'message' => 'Gallery Added Successfully!']);
                } else {
                    echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
                }
            } else {
                echo "Error moving the uploaded image.";
            }
        } else {
            $query = "INSERT INTO tbl_gallery (category_id,category_name,subcategory_id,subcategory_name,title,description) VALUES ('$categoryId','$categoryName','$subcategoryId','$subcategoryName','$title','$description')";
            $result = mysqli_query($conn, $query);

            if ($result) {
                echo json_encode(['success' => true, 'message' => 'Gallery Added Successfully!']);
            } else {
                echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
            }
        }
    }
    function delete()
    {
        extract($_REQUEST);
        global $conn;

        $query = "UPDATE tbl_gallery SET status = 0 WHERE id = '$id'";
        $result = mysqli_query($conn, $query);

        if ($result) {
            echo json_encode(['success' => true, 'message' => 'Gallery Deleted Successfully!']);
        } else {
            echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
        }
    }
    function getSubcategories()
    {
        extract($_POST);
        global $conn;

        $subcategoryQuery = "SELECT id, name FROM tbl_gallery_subcategory WHERE category_id = '$categoryId' AND status = 1";
        $subcategoryResult = mysqli_query($conn, $subcategoryQuery);
        $subcategories = mysqli_fetch_all($subcategoryResult, MYSQLI_ASSOC);        
        echo json_encode($subcategories);
    }
}
$func_type = new Gallery;

if ($_REQUEST['req_type'] == 'add') {
    $func_type->add();
} else if ($_REQUEST['req_type'] == 'delete') {
    $func_type->delete();
} else if ($_REQUEST['req_type'] == 'getSubcategories') {
    $func_type->getSubcategories();
} 
?>