<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2nd page.aspx.cs" Inherits="Evaluation_1._2nd_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Form page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10/dist/sweetalert2.all.min.js"></script>
</head>
<body>
    <h1 class="text-success text-center">Careplus Hospital
    </h1>
    <h2 class="text-center">Doctor Details</h2>
    <div class="accordion" id="formAccordion">
        <div class="card">
            <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Contact Information
                    </button>
                </h5>
            </div>
            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#formAccordion">
                <div class="card-body">
                    <form id="myForm">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="fname"><b>First Name:</b></label>
                                <input type="text" class="form-control" id="firstname" placeholder="Enter First Name" name="fname" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="lname"><b>Last Name:</b></label>
                                <input type="text" class="form-control" id="lastname" placeholder="Enter Last Name" name="lname" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="dob"><b>Date of Birth</b></label>
                            <input type="datetime-local" id="dob" name="dob" class="form-control" />
                        </div>

                        <fieldset class="form-group">
                            <legend>Gender</legend>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="Male" />
                                    Male
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="Female" />
                                    Female
                                </label>
                            </div>
                        </fieldset>

                        <fieldset class="form-group">
                            <legend>Doctor's Qualification</legend>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="MBBS" name="qualification[]" id="defaultCheck1" />
                                <label class="form-check-label" for="defaultCheck1">MBBS</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="BDS" name="qualification[]" id="defaultCheck2" />
                                <label class="form-check-label" for="defaultCheck2">BDS</label>
                            </div>
                        </fieldset>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="clockIn"><b>Clock In</b></label>
                                <input type="datetime-local" id="clockIn" name="clockIn" class="form-control" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="clockOut"><b>Clock Out</b></label>
                                <input type="datetime-local" id="clockOut" name="clockOut" class="form-control" max="9999-12-31T23:59:59" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="email"><b>Email Id</b>:</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter Email Id" name="email" />
                        </div>

                        <div class="form-group">
                            <label for="contact"><b>Contact No:</b></label>
                            <input type="text" class="form-control" id="contact" placeholder="Enter Contact Number" name="contact" />
                        </div>
                        <div class="form-group row">
                            <label for="experience" class="col-md-5 col-form-label"><b>Experience:</b></label>
                            <div class="col-md-10">
                                <select id="experience" class="form-control">
                                    <option value="" selected="selected" disabled="disabled">Select years of experience</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                    <option value="4">Four</option>
                                </select>
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="specialities" class="col-md-5 col-form-label"><b>Specialities:</b></label>
                            <div class="col-md-10">
                                <select id="specialities" class="form-control" multiple="multiple">
                                    <!-- Add options here -->
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <button type="reset" class="btn bg-danger">Reset</button>
                            </div>
                            <div class="col-md-6">
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button id="updateButton" class="btn btn-primary" onclick="updateRow()" disabled="disabled">Update</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Add the following code block for the second collapsible card -->
    <div class="card">
        <div class="card-header" id="headingTwo">
            <h5 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Additional Information
                </button>
            </h5>
        </div>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#formAccordion">
            <div class="card-body">
                <!-- Second Card Body Content Here -->
                <table id="datatable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>First name</th>
                            <th>last name</th>
                            <th>DOB</th>
                            <th>Gender</th>
                            <th>Qualificaton</th>
                            <th>Clock in </th>
                            <th>Clock out</th>
                            <th>email </th>
                            <th>Contact no no</th>
                            <th>Experience</th>
                            <th>specialist</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%-- <tr>
                                <td>Govardhan</td>
                                <td>P</td>
                                <td>2023-03-02T14:16</td>
                                <td>Male</td>
                                <td>MBBS</td>
                                <td>14:5</td>
                                <td>14:8</td>
                                <td>govi262002@gmail.com</td>
                                <td>8925092002</td>
                                <td>one</td>
                                <td>Dermatologist</td>
                                <td>
                                   <button id="myButton" class="btn btn-primary" onclick="editClick()">Edit</button>

                                </td>
                                <td>
                                      <a href="#" onclick="onDelete()"><i class="fas fa-trash"></i></a>
                                </td>--%>
                        <%-- </tr>--%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
<script> 
    const form = document.querySelector('#myForm');
    const table = document.querySelector('#datatable');
    form.addEventListener('submit', function (event) {
        event.preventDefault(); // prevent the form from submitting and refreshing the page

        // Get the values of the input fields
        const firstName = document.querySelector('#firstname').value;
        const lastName = document.querySelector('#lastname').value;
        const dob = document.querySelector('#dob').value;
        const gender = document.querySelector('input[name="optionsRadios"]:checked').value;
        // Get the values of the checkboxes
        const qualifications = [];
        const checkboxes = document.querySelectorAll('input[name="qualification[]"]:checked');
        for (let i = 0; i < checkboxes.length; i++) {
            qualifications.push(checkboxes[i].value);
        }
        const clockin = document.querySelector('#clockIn').value;
        const clockout = document.querySelector('#clockOut').value;
        const email = document.querySelector('#email').value;
        const number = document.querySelector('#contact').value;
        const experience = document.querySelector('#experience').value;
        // Get the values of the multiselect field
        const specialities = [];
        const selectedOptions = document.querySelectorAll('#specialities option:checked');
        for (let i = 0; i < selectedOptions.length; i++) {
            specialities.push(selectedOptions[i].textContent);
        }
        // Validate the input fields
        if (firstName === '') {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your first name',
            });
        } else if (lastName === '') {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your last name',
            });
        } else if (dob === '') {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your date of birth',
            });
        } else if (gender === '') {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please select your gender',
            });
        } else if (qualifications.length === 0) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please select at least one qualification',
            });
        } else if (clockin === '') {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your clock in time',
            });
        } else if (clockout === '') {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your clock out time',
            });
        } else if (email === '') {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your email',
            });
        } else if (number === '') {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your contact number',
            });
        } else if (experience === '') {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your experience',
            });
        } else if (specialities.length === 0) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please select at least one specialty',
            });
        } else {
            // Create a new row in the table with the input values
            const newRow = table.insertRow();
            const firstNameCell = newRow.insertCell(0);
            const lastNameCell = newRow.insertCell(1);
            const dobCell = newRow.insertCell(2);
            const genderCell = newRow.insertCell(3);
            const qualificationsCell = newRow.insertCell(4);
            const clockinCell = newRow.insertCell(5);
            const clockoutCell = newRow.insertCell(6);
            const emailCell = newRow.insertCell(7);
            const numberCell = newRow.insertCell(8);
            const experienceCell = newRow.insertCell(9);
            const specialitiesCell = newRow.insertCell(10);
            const editCell = newRow.insertCell(11);
            const deleteCell = newRow.insertCell(12);
            editCell.innerHTML = '  <button id="myButton" class="btn btn-primary" onclick="editClick()">Edit</button>';
            deleteCell.innerHTML = '<a href="#" onclick="onDelete(this)"><i class="fas fa-trash"></i></a>';

            firstNameCell.textContent = firstName;
            lastNameCell.textContent = lastName;
            dobCell.textContent = dob;
            genderCell.textContent = gender;
            qualificationsCell.textContent = qualifications.join(', ');
            clockinCell.textContent = clockin;
            clockoutCell.textContent = clockout;
            emailCell.textContent = email;
            numberCell.textContent = number;
            experienceCell.textContent = experience;
            specialitiesCell.textContent = specialities.join(', ');
        }
        // Reset the form
        form.reset();
        $('#specialities').val(null).trigger('change');

    });



    function editClick() {
        debugger
        // Retrieve the table row element that you want to edit
        var tableRow = table.rows[1];


        // Retrieve the values from the table cells
        var firstName = tableRow.cells[0].innerHTML;
        var lastName = tableRow.cells[1].innerHTML;
        var dob = tableRow.cells[2].textContent;
        var gender = tableRow.cells[3].textContent;
        var qualifications = tableRow.cells[4].textContent.split(', ');
        var clockin = tableRow.cells[5].textContent;
        var clockout = tableRow.cells[6].textContent;
        const email = tableRow.cells[7].textContent;
        const number = tableRow.cells[8].textContent;
        const experience = tableRow.cells[9].textContent;
        const specialities = tableRow.cells[10].textContent.split(', ');

        // Set the input values in the form fields
        document.getElementById("firstname").value = firstName;
        document.getElementById("lastname").value = lastName;
        document.getElementById("dob").value = dob;
        document.querySelector(`input[name="optionsRadios"][value="${gender}"]`).checked = true;
        const checkboxes = document.querySelectorAll('input[name="qualification[]"]');
        for (let i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = qualifications.includes(checkboxes[i].value);
        }
        document.getElementById("clockIn").value = clockin;
        document.getElementById("clockOut").value = clockout;
        document.getElementById("email").value = email;
        document.getElementById("contact").value = number;
        document.getElementById("experience").value = experience;
        const specialitiesSelect = document.getElementById("specialities");
        for (let i = 0; i < specialitiesSelect.options.length; i++) {
            if (specialities.includes(specialitiesSelect.options[i].textContent)) {
                specialitiesSelect.options[i].selected = true;
            } else {
                specialitiesSelect.options[i].selected = false;
            }
        }
        $('#specialities').trigger('change');
        document.querySelector('button[type="submit"]').style.display = 'none';
        // enable the Update button
        document.getElementById("updateButton").disabled = false;
        // Add SweetAlert2 validation
        Swal.fire({
            title: 'Start editing',
            text: "Your form.",
            icon: 'info',
        })
    }

    function updateRow() {
        // Get the values from the form fields
        const firstName = document.querySelector('#firstname').value;
        const lastName = document.querySelector('#lastname').value;
        const dob = document.querySelector('#dob').value;
        const gender = document.querySelector('input[name="optionsRadios"]:checked').value;
        const qualifications = [];
        const checkboxes = document.querySelectorAll('input[name="qualification[]"]:checked');
        for (let i = 0; i < checkboxes.length; i++) {
            qualifications.push(checkboxes[i].value);
        }
        const clockin = document.querySelector('#clockIn').value;
        const clockout = document.querySelector('#clockOut').value;
        const email = document.querySelector('#email').value;
        const number = document.querySelector('#contact').value;
        const experience = document.querySelector('#experience').value;
        const specialities = [];
        const selectedOptions = document.querySelectorAll('#specialities option:checked');
        for (let i = 0; i < selectedOptions.length; i++) {
            specialities.push(selectedOptions[i].textContent);
        }

        // Retrieve the table row element that you want to update
        const tableRow = table.rows[1];


        // Update the values in the table cells
        tableRow.cells[0].innerHTML = firstName;
        tableRow.cells[1].innerHTML = lastName;
        tableRow.cells[2].textContent = dob;
        tableRow.cells[3].textContent = gender;
        tableRow.cells[4].textContent = qualifications.join(', ');
        tableRow.cells[5].textContent = clockin;
        tableRow.cells[6].textContent = clockout;
        tableRow.cells[7].textContent = email;
        tableRow.cells[8].textContent = number;
        tableRow.cells[9].textContent = experience;
        tableRow.cells[10].textContent = specialities.join(', ');
        //// Hide the Update button and show the Submit button

        document.querySelector('.btn-primary[type="submit"]').style.display = 'inline-block';


        // Clear the input fields for firstName and lastName
        document.querySelector('#firstname').value = '';
        document.querySelector('#lastname').value = '';
        document.querySelector('#dob').value = '';
        document.querySelectorAll('input[name="optionsRadios"]').forEach((radio) => {
            radio.checked = false;
        });
        document.querySelectorAll('input[name="qualification[]"]').forEach((checkbox) => {
            checkbox.checked = false;
        });
        document.querySelector('#clockIn').value = '';
        document.querySelector('#clockOut').value = '';
        document.querySelector('#email').value = '';
        document.querySelector('#contact').value = '';
        document.querySelector('#experience').value = '';
        document.querySelectorAll('#specialities option').forEach((option) => {
            option.selected = false;
        });
        $('#specialities').trigger('change');
        // disable the Update button
        document.getElementById("updateButton").disabled = true;
        Swal.fire({
            title: 'Success!',
            text: 'Row updated successfully!',
            icon: 'success',
            confirmButtonColor: '#3085d6',
            confirmButtonText: 'OK'
        });
    }

    function onDelete(element) {
        const row = element.parentNode.parentNode;
        const rowIndex = row.rowIndex;
        const firstName = row.cells[0].innerHTML;
        Swal.fire({
            title: 'Are you sure?',
            text: `You are about to delete the row for ${firstName}.`,
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                table.deleteRow(rowIndex);
                Swal.fire(
                    'Deleted!',
                    `The row for ${firstName} has been deleted.`,
                    'success'
                );
            }
        });
    } 
</script>
<script>
    //Multiselect with select2 dropdown 
    $(document).ready(function () {
        $('#specialities').select2({
            placeholder: "Select specialities",
            allowClear: true,
            data: [
                { id: 'Dermatology', text: 'Dermatology' },
                { id: 'Anesthesiology', text: 'Anesthesiology' },
                { id: 'Ophthalmology', text: 'Ophthalmology' },
                { id: 'Pediatrics', text: 'Pediatrics' },
                { id: 'Psychiatry', text: 'Psychiatry' }
            ]
        });
    });

</script>
</html>
