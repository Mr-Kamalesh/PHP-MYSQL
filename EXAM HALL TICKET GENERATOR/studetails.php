<?php
// Database connection parameters
$servername = "localhost";
$username = "root"; // Replace with your database username
$password = ""; // Replace with your database password
$dbname = "examform";

// Create a connection to the database
$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Handle personal details
    $degree = $_POST["degree"];
    $department = $_POST["department"];
    $photo=$_FILES["photo"];
    $regno = $_POST["regno"];
    $name = $_POST["name"];
    $gender = $_POST["gender"];
    $dob = $_POST["dob"];
    $nationality = $_POST["nationality"];
    $religion = $_POST["religion"];
    $category = $_POST["category"];
    $father_name = $_POST["father_name"];
    $mother_name = $_POST["mother_name"];
    $medium_of_study = $_POST["medium_of_study"];
    $physically_challenged = $_POST["physically_challenged"];
    $admission = $_POST["admission"];
    $address = $_POST["address"];

    // Insert personal details into the database
    $sql = "INSERT INTO studetails (degree, department, photo, regno, name, gender, dob, nationality, religion, category, father_name, mother_name, medium_of_study, physically_challenged, admission, address)
            VALUES ('$degree', '$department', '$photo', '$regno', '$name', '$gender', '$dob', '$nationality', '$religion', '$category', '$father_name', '$mother_name', '$medium_of_study', '$physically_challenged', '$admission', '$address')";

    if ($conn->query($sql) === TRUE) {
        echo "<h2>Personal details added successfully!</h2><br>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    //Handle Form for paper codes 
    $paper_1 = $_POST["paper_1"];
    $paper1_sem1 = $_POST["paper1_sem1"];
    $paper1_sem2 = $_POST["paper1_sem2"];
    $paper1_sem3 = $_POST["paper1_sem3"];
    $paper1_sem4 = $_POST["paper1_sem4"];
    $paper1_sem5 = $_POST["paper1_sem5"];
    $paper1_sem6 = $_POST["paper1_sem6"];

    $paper_2 = $_POST["paper_2"];
    $paper2_sem1 = $_POST["paper2_sem1"];
    $paper2_sem2 = $_POST["paper2_sem2"];
    $paper2_sem3 = $_POST["paper2_sem3"];
    $paper2_sem4 = $_POST["paper2_sem4"];
    $paper2_sem5 = $_POST["paper2_sem5"];
    $paper2_sem6 = $_POST["paper2_sem6"];

    $paper_3 = $_POST["paper_3"];
    $paper3_sem1 = $_POST["paper3_sem1"];
    $paper3_sem2 = $_POST["paper3_sem2"];
    $paper3_sem3 = $_POST["paper3_sem3"];
    $paper3_sem4 = $_POST["paper3_sem4"];
    $paper3_sem5 = $_POST["paper3_sem5"];
    $paper3_sem6 = $_POST["paper3_sem6"];

    $paper_4 = $_POST["paper_4"];
    $paper4_sem1 = $_POST["paper4_sem1"];
    $paper4_sem2 = $_POST["paper4_sem2"];
    $paper4_sem3 = $_POST["paper4_sem3"];
    $paper4_sem4 = $_POST["paper4_sem4"];
    $paper4_sem5 = $_POST["paper4_sem5"];
    $paper4_sem6 = $_POST["paper4_sem6"];

    $paper_5 = $_POST["paper_5"];
    $paper5_sem1 = $_POST["paper5_sem1"];
    $paper5_sem2 = $_POST["paper5_sem2"];
    $paper5_sem3 = $_POST["paper5_sem3"];
    $paper5_sem4 = $_POST["paper5_sem4"];
    $paper5_sem5 = $_POST["paper5_sem5"];
    $paper5_sem6 = $_POST["paper5_sem6"];

    $paper_6 = $_POST["paper_6"];
    $paper6_sem1 = $_POST["paper6_sem1"];
    $paper6_sem2 = $_POST["paper6_sem2"];
    $paper6_sem3 = $_POST["paper6_sem3"];
    $paper6_sem4 = $_POST["paper6_sem4"];
    $paper6_sem5 = $_POST["paper6_sem5"];
    $paper6_sem6 = $_POST["paper6_sem6"];

    $paper_7 = $_POST["paper_7"];
    $paper7_sem1 = $_POST["paper7_sem1"];
    $paper7_sem2 = $_POST["paper7_sem2"];
    $paper7_sem3 = $_POST["paper7_sem3"];
    $paper7_sem4 = $_POST["paper7_sem4"];
    $paper7_sem5 = $_POST["paper7_sem5"];
    $paper7_sem6 = $_POST["paper7_sem6"];

    $paper_8 = $_POST["paper_8"];
    $paper8_sem1 = $_POST["paper8_sem1"];
    $paper8_sem2 = $_POST["paper8_sem2"];
    $paper8_sem3 = $_POST["paper8_sem3"];
    $paper8_sem4 = $_POST["paper8_sem4"];
    $paper8_sem5 = $_POST["paper8_sem5"];
    $paper8_sem6 = $_POST["paper8_sem6"];

    $practical_1 = $_POST["practical_1"];
    $practical1_sem1 = $_POST["practical1_sem1"];
    $practical1_sem2 = $_POST["practical1_sem2"];
    $practical1_sem3 = $_POST["practical1_sem3"];
    $practical1_sem4 = $_POST["practical1_sem4"];
    $practical1_sem5 = $_POST["practical1_sem5"];
    $practical1_sem6 = $_POST["practical1_sem6"];

    $practical_2 = $_POST["practical_2"];
    $practical2_sem1 = $_POST["practical2_sem1"];
    $practical2_sem2 = $_POST["practical2_sem2"];
    $practical2_sem3 = $_POST["practical2_sem3"];
    $practical2_sem4 = $_POST["practical2_sem4"];
    $practical2_sem5 = $_POST["practical2_sem5"];
    $practical2_sem6 = $_POST["practical2_sem6"];

    $practical_3 = $_POST["practical_3"];
    $practical3_sem1 = $_POST["practical3_sem1"];
    $practical3_sem2 = $_POST["practical3_sem2"];
    $practical3_sem3 = $_POST["practical3_sem3"];
    $practical3_sem4 = $_POST["practical3_sem4"];
    $practical3_sem5 = $_POST["practical3_sem5"];
    $practical3_sem6 = $_POST["practical3_sem6"];

    $practical_4 = $_POST["practical_4"];
    $practical4_sem1 = $_POST["practical4_sem1"];
    $practical4_sem2 = $_POST["practical4_sem2"];
    $practical4_sem3 = $_POST["practical4_sem3"];
    $practical4_sem4 = $_POST["practical4_sem4"];
    $practical4_sem5 = $_POST["practical4_sem5"];
    $practical4_sem6 = $_POST["practical4_sem6"];

    $practical_5 = $_POST["practical_5"];
    $practical5_sem1 = $_POST["practical5_sem1"];
    $practical5_sem2 = $_POST["practical5_sem2"];
    $practical5_sem3 = $_POST["practical5_sem3"];
    $practical5_sem4 = $_POST["practical5_sem4"];
    $practical5_sem5 = $_POST["practical5_sem5"];
    $practical5_sem6 = $_POST["practical5_sem6"];


    $sql1= "INSERT INTO papercode (paper_1, paper1_sem1, paper1_sem2, paper1_sem3, paper1_sem4, paper1_sem5, paper1_sem6,
    paper_2, paper2_sem1, paper2_sem2, paper2_sem3, paper2_sem4, paper2_sem5, paper2_sem6, 
    paper_3, paper3_sem1, paper3_sem2, paper3_sem3, paper3_sem4, paper3_sem5, paper3_sem6,
    paper_4, paper4_sem1, paper4_sem2, paper4_sem3, paper4_sem4, paper4_sem5, paper4_sem6,
    paper_5, paper5_sem1, paper5_sem2, paper5_sem3, paper5_sem4, paper5_sem5, paper5_sem6,
    paper_6, paper6_sem1, paper6_sem2, paper6_sem3, paper6_sem4, paper6_sem5, paper6_sem6,
    paper_7, paper7_sem1, paper7_sem2, paper7_sem3, paper7_sem4, paper7_sem5, paper7_sem6,
    paper_8, paper8_sem1, paper8_sem2, paper8_sem3, paper8_sem4, paper8_sem5, paper8_sem6,
    practical_1, practical1_sem1, practical1_sem2, practical1_sem3, practical1_sem4, practical1_sem5, practical1_sem6,
    practical_2, practical2_sem1, practical2_sem2, practical2_sem3, practical2_sem4, practical2_sem5, practical2_sem6, 
    practical_3, practical3_sem1, practical3_sem2, practical3_sem3, practical3_sem4, practical3_sem5, practical3_sem6,
    practical_4, practical4_sem1, practical4_sem2, practical4_sem3, practical4_sem4, practical4_sem5, practical4_sem6,
    practical_5, practical5_sem1, practical5_sem2, practical5_sem3, practical5_sem4, practical5_sem5, practical5_sem6)
    VALUES ('$paper_1', '$paper1_sem1', '$paper1_sem2', '$paper1_sem3', '$paper1_sem4', '$paper1_sem5', '$paper1_sem6',
    '$paper_2', '$paper2_sem1', '$paper2_sem2', '$paper2_sem3', '$paper2_sem4', '$paper2_sem5', '$paper2_sem6', 
    '$paper_3', '$paper3_sem1', '$paper3_sem2', '$paper3_sem3', '$paper3_sem4', '$paper3_sem5', '$paper3_sem6',
    '$paper_4', '$paper4_sem1', '$paper4_sem2', '$paper4_sem3', '$paper4_sem4', '$paper4_sem5', '$paper4_sem6',
    '$paper_5', '$paper5_sem1', '$paper5_sem2', '$paper5_sem3', '$paper5_sem4', '$paper5_sem5', '$paper5_sem6',
    '$paper_6', '$paper6_sem1', '$paper6_sem2', '$paper6_sem3', '$paper6_sem4', '$paper6_sem5', '$paper6_sem6',
    '$paper_7', '$paper7_sem1', '$paper7_sem2', '$paper7_sem3', '$paper7_sem4', '$paper7_sem5', '$paper7_sem6',
    '$paper_8', '$paper8_sem1', '$paper8_sem2', '$paper8_sem3', '$paper8_sem4', '$paper8_sem5', '$paper8_sem6',
    '$practical_1', '$practical1_sem1', '$practical1_sem2', '$practical1_sem3', '$practical1_sem4', '$practical1_sem5', '$practical1_sem6',
    '$practical_2', '$practical2_sem1', '$practical2_sem2', '$practical2_sem3', '$practical2_sem4', '$practical2_sem5', '$practical2_sem6', 
    '$practical_3', '$practical3_sem1', '$practical3_sem2', '$practical3_sem3', '$practical3_sem4', '$practical3_sem5', '$practical3_sem6',
    '$practical_4', '$practical4_sem1', '$practical4_sem2', '$practical4_sem3', '$practical4_sem4', '$practical4_sem5', '$practical4_sem6',
    '$practical_5', '$practical5_sem1', '$practical5_sem2', '$practical5_sem3', '$practical5_sem4', '$practical5_sem5', '$practical5_sem6')";


    if ($conn->query($sql1) === TRUE) {
        echo "<h2>Paper code details added successfully!</h2><br>";
    } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    }


    // fees details///////////

    $theory_total_paper = $_POST['theory_total_paper'];
    $theory_total_fee = $_POST['theory_total_fee'];
    $practical_total_paper = $_POST['practical_total_paper'];
    $practical_total_fee = $_POST['practical_total_fee'];
    $penalty = $_POST['penalty'];
    $exam_application_cost = $_POST['exam_application_cost'];
    $mark_statement_cost = $_POST['mark_statement_cost'];
    $consolidated_cost = $_POST['consolidated_cost'];
    $Provisional_cost = $_POST['Provisional_cost'];
    $convocation_cost = $_POST['convocation_cost'];
    $grand_total = $_POST['grand_total'];
    $Challan = $_POST['Challan'];
    $Amount_Rs =$_POST['Amount_Rs'];
    $C_Date=$_POST['C_Date'];





    // Insert fees and hall ticket details into the database
    $sql2 = "INSERT INTO feedetails (theory_total_paper, theory_total_fee, practical_total_paper, practical_total_fee, penalty, exam_application_cost, mark_statement_cost, consolidated_cost, Provisional_cost, convocation_cost, grand_total, Challan, Amount_Rs, C_Date)
    VALUES ('$theory_total_paper', '$theory_total_fee', '$practical_total_paper', '$practical_total_fee', '$penalty', '$exam_application_cost', '$mark_statement_cost', '$consolidated_cost', '$Provisional_cost', '$convocation_cost', '$grand_total', '$Challan', '$Amount_Rs', '$C_Date')";




    if ($conn->query($sql2) === TRUE) {
        echo "<h2>Fee details added successfully!</h2><br>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Close the database connection
    $conn->close();
}
    // // Redirect to index1.html
    header("Location: index1.html");
    exit;
?>
