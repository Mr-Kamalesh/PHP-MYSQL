<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
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
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registration Successful</h1>
        <?php
        // Establish a database connection
        $db = mysqli_connect("localhost", "root", "", "examform");

        if (isset($_POST['register'])) {
            $name = $_POST['name'];
            $password = password_hash($_POST['password'], PASSWORD_DEFAULT); // Securely hash the password

            // Insert user data into the database
            $query = "INSERT INTO login_information (name, password) VALUES ('$name', '$password')";
            mysqli_query($db, $query);

            echo "<p>Your registration was successful.</p>";
        }
        ?>
        <a href="login.html">Go to Login</a>
    </div>
</body>
</html>
