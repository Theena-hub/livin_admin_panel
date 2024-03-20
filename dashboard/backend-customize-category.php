<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
include('db.php');

class CustomizeCategory{
    function add()
    {
        extract($_REQUEST);
        global $conn;

        $query = "INSERT INTO tbl_customize_category (name) VALUES ('".addslashes($categoryName)."')";
        $result = mysqli_query($conn, $query);

        if ($result) {
            echo json_encode(['success' => true, 'message' => 'Category Added Successfully!']);
        } else {
            echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
        }
    }
    function delete()
    {
        extract($_REQUEST);
        global $conn;

        $query = "UPDATE tbl_customize_category SET status = 0 WHERE id = '$id'";
        $result = mysqli_query($conn, $query);

        if ($result) {
            echo json_encode(['success' => true, 'message' => 'Category Deleted Successfully!']);
        } else {
            echo json_encode(['success' => false, 'error' => mysqli_error($conn), 'query' => $query]);
        }
    }
}
$func_type = new CustomizeCategory;

if ($_REQUEST['req_type'] == 'add') {
    $func_type->add();
} else if ($_REQUEST['req_type'] == 'delete') {
    $func_type->delete();
}
?>