<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
include('db.php');

class Blog
{
    function add()
    {
        extract($_REQUEST);
        global $conn;

        if (
            isset($_FILES['image']) && $_FILES['image']['error'] == UPLOAD_ERR_OK &&
            isset($_FILES['imageOne']) && $_FILES['imageOne']['error'] == UPLOAD_ERR_OK &&
            isset($_FILES['imageTwo']) && $_FILES['imageTwo']['error'] == UPLOAD_ERR_OK &&
            isset($_FILES['imageThree']) && $_FILES['imageThree']['error'] == UPLOAD_ERR_OK &&
            isset($_FILES['imageFour']) && $_FILES['imageFour']['error'] == UPLOAD_ERR_OK
            ) {
            
            $image_tmp_name = $_FILES['image']['tmp_name'];
            $image_name = uniqid() . '.' . pathinfo($_FILES['image']['name'],PATHINFO_EXTENSION);
            

            $imageOne_tmp_name = $_FILES['imageOne']['tmp_name'];
            $imageOne_name = uniqid() . '.' . pathinfo($_FILES['imageOne']['name'],PATHINFO_EXTENSION);
            
            
            $imageTwo_tmp_name = $_FILES['imageTwo']['tmp_name'];
            $imageTwo_name = uniqid() . '.' . pathinfo($_FILES['imageTwo']['name'],PATHINFO_EXTENSION);
            
            $imageThree_tmp_name = $_FILES['imageThree']['tmp_name'];
            $imageThree_name = uniqid() . '.' . pathinfo($_FILES['imageThree']['name'],PATHINFO_EXTENSION);
            
            $imageFour_tmp_name = $_FILES['imageFour']['tmp_name'];
            $imageFour_name = uniqid() . '.' . pathinfo($_FILES['imageFour']['name'],PATHINFO_EXTENSION);

            // Choose a directory to store the uploaded images
            $upload_directory = 'uploads/';

            // Move the uploaded image to the chosen directory
            $target_path = $upload_directory . $image_name;
            $target_path1 = $upload_directory . $imageOne_name;
            $target_path2 = $upload_directory . $imageTwo_name;
            $target_path3 = $upload_directory . $imageThree_name;
            $target_path4 = $upload_directory . $imageFour_name;
        
            if (move_uploaded_file($image_tmp_name, $target_path) && move_uploaded_file($imageOne_tmp_name, $target_path1) && move_uploaded_file($imageTwo_tmp_name, $target_path2) && move_uploaded_file($imageThree_tmp_name, $target_path3) && move_uploaded_file($imageFour_tmp_name, $target_path4)) {
                // File moved successfully, now insert into the database                
                $query = "INSERT INTO tbl_blog (image,title,description,imageOne,imageTwo,imageThree,imageFour) VALUES ('$image_name','".addslashes($title)."','".addslashes($description)."','$imageOne_name','$imageTwo_name','$imageThree_name','$imageFour_name')";
                $result = mysqli_query($conn, $query);
                if ($result) {
                    echo json_encode(['success' => true, 'message' => 'Blog Added Successfully!']);
                } else {
                    echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
                }
            } else {
                echo "Error moving the uploaded image.";
            }
        } else {
            $query = "INSERT INTO tbl_blog (title,description) VALUES ('".addslashes($title)."','".addslashes($description)."')";
            $result = mysqli_query($conn, $query);

            if ($result) {
                echo json_encode(['success' => true, 'message' => 'Blog Added Successfully!']);
            } else {
                echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
            }
        }
    }
    function delete()
    {
        extract($_REQUEST);
        global $conn;

        $query = "UPDATE tbl_blog SET status = 0 WHERE id = '$id'";
        $result = mysqli_query($conn, $query);

        if ($result) {
            echo json_encode(['success' => true, 'message' => 'Blog Deleted Successfully!']);
        } else {
            echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
        }
    }   
}
$func_type = new Blog;

if ($_REQUEST['req_type'] == 'add') {
    $func_type->add();
} else if ($_REQUEST['req_type'] == 'delete') {
    $func_type->delete();
} 
?>