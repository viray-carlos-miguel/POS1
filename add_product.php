<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Product</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
</head>
<body>

<div class="sidebar">
    <h4 class="text-white">POS System</h4>
    <a href="#"> Dashboard</a>
    <a href="product.php"> Products</a>
    <a href="customers.php"> Customers</a>
    <a href="reports.php"> Reports</a>
    <a href="settings.php"> Settings</a>
    <a href="logout.php">Logout</a>
</div>

<div class="container mt-5">
    <h2 class="text-center">Add New Product</h2>
    <form method="POST" action="add_product.php" enctype="multipart/form-data">
        <div class="mb-3">
            <label class="form-label">Product Name</label>
            <input type="text" name="name" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Price (₱)</label>
            <input type="number" step="0.01" name="price" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Upload Image</label>
            <input type="file" name="image" class="form-control" accept="image/*" required>
        </div>
        <button type="submit" class="btn btn-primary">Add Product</button>
    </form>
</div>

</body>
</html>