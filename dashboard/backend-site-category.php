<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
include('db.php');

class SiteCategory{
    function add()
    {
        extract($_REQUEST);
        global $conn;
        if (isset($_FILES['image']) && $_FILES['image']['error'] == UPLOAD_ERR_OK) {
            $image_tmp_name = $_FILES['image']['tmp_name'];
            $image_name = uniqid() . '.' . pathinfo($_FILES['image']['name'],PATHINFO_EXTENSION);

            // Choose a directory to store the uploaded images
            $upload_directory = 'uploads/';

            // Move the uploaded image to the chosen directory
            $target_path = $upload_directory . $image_name;
            
            if (move_uploaded_file($image_tmp_name, $target_path)) {
                // File moved successfully, now insert into the database                
                $query = "INSERT INTO tbl_site_category (name, image) VALUES ('$categoryName', '$image_name')";
                $result = mysqli_query($conn, $query);
                if ($result) {
                    echo json_encode(['success' => true, 'message' => 'Category Added Successfully!']);
                } else {
                    echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
                }
            } else {                
                echo json_encode(['success' => false, 'message' => 'Error moving the uploaded image!']);
            }
        } 
        else {
            echo json_encode(['success' => false, 'message' => 'Category Image is Empty!']);
        }     
    }
    
    function edit()
    {
        extract($_REQUEST);
        global $conn;
        if (isset($_FILES['editimage']) && $_FILES['editimage']['error'] == UPLOAD_ERR_OK) {
            $image_tmp_name = $_FILES['editimage']['tmp_name'];
            $image_name = uniqid() . '.' . pathinfo($_FILES['editimage']['name'],PATHINFO_EXTENSION);

            // Choose a directory to store the uploaded images
            $upload_directory = 'uploads/';

            // Move the uploaded image to the chosen directory
            $target_path = $upload_directory . $image_name;
            
            if (move_uploaded_file($image_tmp_name, $target_path)) {
                // File moved successfully, now insert into the database                
                $query = "UPDATE tbl_site_category SET name='$editcategoryName', image='$image_name' WHERE id='$editid'";
            } else {                
                echo json_encode(['success' => false, 'message' => 'Error moving the uploaded image!']);
            }
        } 
        else {
            $query = "UPDATE tbl_site_category SET name='$editcategoryName' WHERE id='$editid'";
        }
        $result = mysqli_query($conn, $query);
        if ($result) {
            echo json_encode(['success' => true, 'message' => 'Category Updated Successfully!']);
        } else {
            echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
        }
    }
    
    function fetch()
    {
        extract($_REQUEST);
        global $conn;

        $query = "select * from tbl_site_category WHERE id = '$id'";
        $result = mysqli_query($conn, $query);
        if ($result) {
            $data = mysqli_fetch_assoc($result);
            echo json_encode(['success' => true, 'data' => $data]);
        } else {
            echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
        }
    }
    
    function delete()
    {
        extract($_REQUEST);
        global $conn;

        $query = "UPDATE tbl_site_category SET status = 0 WHERE id = '$id'";
        $result = mysqli_query($conn, $query);

        if ($result) {
            echo json_encode(['success' => true, 'message' => 'Category Deleted Successfully!']);
        } else {
            echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
        }
    }
}
$func_type = new SiteCategory;

if ($_REQUEST['req_type'] == 'add') {
    $func_type->add();
} else if ($_REQUEST['req_type'] == 'delete') {
    $func_type->delete();
} else if ($_REQUEST['req_type'] == 'fetch') {
    $func_type->fetch();
} else if ($_REQUEST['req_type'] == 'edit') {
    $func_type->edit();
}
?>