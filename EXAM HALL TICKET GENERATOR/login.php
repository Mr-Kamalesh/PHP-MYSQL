<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }

        h1 {
            color: #3498db;
        }

        p {
            font-size: 18px;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color:red;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">

        <?php
// Start a session
session_start();

// Establish a database connection
$db = mysqli_connect("localhost", "root", "", "examform");

if (isset($_POST['login'])) {
    $name = $_POST['name'];
    $password = $_POST['password'];

    // Retrieve user data from the database
    $query = "SELECT * FROM login_information WHERE name='$name'";
    $result = mysqli_query($db, $query);

    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);

        // Verify the password
        if (password_verify($password, $row['password'])) {
            $_SESSION['name'] = $name; // Start a user session
            header('Location: index.html'); // Redirect to the main page
        } else {
            echo "<h1>Enter Valid Details</h1><h1><a href='login.html'>Go Back</a></h1>";
        }
   
    }
}
?>

    </div>
</body>
</html>
