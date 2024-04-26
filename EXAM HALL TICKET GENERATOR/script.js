// -------------------------------------FEES CALCULATION-----------------------------------------------//
function calculateTotal() {
    // Get values from input fields
    var theoryTotalPaper = parseInt(document.getElementsByName("theory_total_paper")[0].value);
    var practicalTotalPaper = parseInt(document.getElementsByName("practical_total_paper")[0].value);
    var penalty = parseInt(document.getElementsByName("penalty")[0].value);
    var examApplicationCost = parseInt(document.getElementsByName("exam_application_cost")[0].value);
    var markStatementCost = parseInt(document.getElementsByName("mark_statement_cost")[0].value);
    var consolidatedCost = parseInt(document.getElementsByName("consolidated_cost")[0].value);
    var provisionalCost = parseInt(document.getElementsByName("Provisional_cost")[0].value);
    var convocationCost = parseInt(document.getElementsByName("convocation_cost")[0].value);

    // Calculate the total amounts for theory and practical papers
    var theoryTotalAmount = theoryTotalPaper * 65;
    var practicalTotalAmount = practicalTotalPaper * 100;

    // Calculate the Grand Total
    var grandTotal = theoryTotalAmount + practicalTotalAmount + penalty + examApplicationCost + markStatementCost + consolidatedCost + provisionalCost + convocationCost;

    // Update the Total Amount fields
    document.getElementsByName("theory_total_fee")[0].value = theoryTotalAmount;
    document.getElementsByName("practical_total_fee")[0].value = practicalTotalAmount;

    // Set the Grand Total value in the corresponding input field
    document.getElementsByName("grand_total")[0].value = grandTotal;

    // In the calculateTotal() function
    localStorage.setItem("totalPaperFirstPage", theoryTotalPaper + practicalTotalPaper);
    localStorage.setItem("totalAmountFirstPage", theoryTotalAmount + practicalTotalAmount);

}

// Redirect to the second page (Page 2)
function redirectToSecondPage() {
    // Optionally, you can check if the values are already calculated
    if (localStorage.getItem("totalPaperFirstPage") && localStorage.getItem("totalAmountFirstPage")) {
        // Redirect to the second page
        window.location.href = "page2.html"; // Replace "page2.html" with the actual URL of your second page
    } else {
        alert("Please calculate the values on this page before proceeding.");
    }
}

// -----------------------------------------------FORM DATA'S SYNC-----------------------------------------------------//


// // Function to collect and store form data
function storeFormData() {
    const formData = {
        name: document.getElementById('name1').value,
        dob: document.getElementById('dob1').value,
        regno: document.getElementById('regno1').value,
        a1: document.getElementById('a1').value,
        b1: document.getElementById('b1').value,
        c1: document.getElementById('c1').value,
        d1: document.getElementById('d1').value,
        e1: document.getElementById('e1').value,
        f1: document.getElementById('f1').value,
        g1: document.getElementById('g1').value,
        h1: document.getElementById('h1').value,
        i1: document.getElementById('i1').value,
        j1: document.getElementById('j1').value,


    };

    // Store the form data in localStorage
    localStorage.setItem('formData', JSON.stringify(formData));
}

// Function to preview and store the uploaded photo
function previewPhoto() {
    const input = document.getElementById('image-input');
    const photo = document.getElementById('passport-photo');

    const file = input.files[0];
    const reader = new FileReader();

    reader.onload = function(e) {
        photo.src = e.target.result;
        // Store the base64-encoded photo in localStorage
        localStorage.setItem('photoData', e.target.result);
    };

    reader.readAsDataURL(file);
}

// Attach the functions to the form submission and photo upload
document.getElementById('form1').addEventListener('submit', storeFormData);
document.getElementById('image-input').addEventListener('change', previewPhoto);
     
