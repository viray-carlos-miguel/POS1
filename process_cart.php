<?php
session_start();
include('db_connect.php'); 

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    if (isset($_POST['buy_now'])) {
        $cart_id = intval($_POST['cart_id']);
        $product_id = intval($_POST['product_id']);
        $quantity = intval($_POST['quantity']);
        $total_price = floatval($_POST['total_price']);


        $insert_order_query = "INSERT INTO orders (product_id, quantity, total_price) 
                               VALUES ('$product_id', '$quantity', '$total_price')";
        if (mysqli_query($conn, $insert_order_query)) {
           
            $delete_cart_query = "DELETE FROM cart WHERE id = $cart_id";
            mysqli_query($conn, $delete_cart_query);

            
            $update_stock_query = "UPDATE products SET quantity = quantity - $quantity WHERE id = $product_id";
            mysqli_query($conn, $update_stock_query);

            
            header("Location: orders.php");
            exit();
        } else {
            echo "Error processing order: " . mysqli_error($conn);
        }
    }

    
    if (isset($_POST['remove_from_cart'])) {
        $cart_id = intval($_POST['cart_id']);

    
        $delete_query = "DELETE FROM cart WHERE id = $cart_id";
        if (mysqli_query($conn, $delete_query)) {
           
            header("Location: cart.php");
            exit();
        } else {
            echo "Error removing from cart: " . mysqli_error($conn);
        }
    }
} else {
    echo "Invalid request.";
}
?>
