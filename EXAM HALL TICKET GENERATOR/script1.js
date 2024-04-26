// Function to retrieve and populate form data
function populateFormData() {
    // Retrieve the form data from localStorage
    const storedData = localStorage.getItem('formData');

    if (storedData) {
        const formData = JSON.parse(storedData);

        // Populate input fields in index2.html
        document.getElementById('name2').value = formData.name;
        document.getElementById('dob2').value = formData.dob;
        document.getElementById('regno2').value = formData.regno;
        document.getElementById('a2').value = formData.a1;
        document.getElementById('b2').value = formData.b1;
        document.getElementById('c2').value = formData.c1;
        document.getElementById('d2').value = formData.d1;
        document.getElementById('e2').value = formData.e1;
        document.getElementById('f2').value = formData.f1;
        document.getElementById('g2').value = formData.g1;
        document.getElementById('h2').value = formData.h1;
        document.getElementById('i2').value = formData.i1;
        document.getElementById('j2').value = formData.j1;

    }

    // Retrieve the base64-encoded photo
    const storedPhotoData = localStorage.getItem('photoData');

    if (storedPhotoData) {
        const photo = document.getElementById('displayed-photo');
        photo.src = storedPhotoData;
    }
}

// Attach the function to the window's onload event
window.onload = populateFormData;

// On Page 2
document.addEventListener("DOMContentLoaded", function () {
// Retrieve the values from local storage
var totalPaperFirstPage = parseInt(localStorage.getItem("totalPaperFirstPage"));
var totalAmountFirstPage = parseInt(localStorage.getItem("totalAmountFirstPage"));

// Update the input fields on Page 2
document.getElementById("total_paper_second_page").value = totalPaperFirstPage;
document.getElementById("total_amount_second_page").value = totalAmountFirstPage;
});

// ----------------------------------------------------------------------------------------------------------------//

function printForm() {
    window.print();
}