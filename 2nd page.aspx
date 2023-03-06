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
                        <div class="form-group">
                            <label for="fname">First Name:</label>
                            <input type="text" class="form-control" id="firstname"
                                placeholder="Enter First Name" name="fname" />
                        </div>
                        <div class="form-group">
                            <label for="lname">Last Name:</label>
                            <input type="text" class="form-control" id="lastname"
                                placeholder="Enter Last Name" name="lname" />
                        </div>
                        <div class="form-group">
                            <label for="dob">Date of Birth</label>
                            <input type="datetime-local" id="dob" name="dob" class="form-control" required="required" />
                        </div>
                        <fieldset class="form-group">
                            <lable>Gender</lable>
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
                        <lable>Doctors qualification</lable>

                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="MBBS" name="qualification" id="defaultCheck1" />
                            <label class="form-check-label" for="defaultCheck1">MBBS </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="BDS" name="qualification" id="defaultCheck2" />
                            <label class="form-check-label" for="defaultCheck2">BDS </label>
                        </div>
                        <br />
                        <%--clock in--%>
                        <div class="form-group">
                            <label for="clockIn">Clock In</label>
                            <input type="datetime-local" id="clockIn" name="clockIn" class="form-control" required="required" />
                        </div>
                        <%--clock out--%>
                        <div class="form-group">
                            <label for="clockOut">Clock Out</label>
                            <input type="datetime-local" id="clockOut" name="clockOut" class="form-control" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">Email Id:</label>
                            <input type="email" class="form-control" id="email"
                                placeholder="Enter Email Id" name="email" />
                        </div>
                        <div class="form-group">
                            <label for="contact">Contact No:</label>
                            <input type="text" class="form-control" id="contact"
                                placeholder="Enter Contact Number" name="contact" />
                        </div>
                        <div class="form-group">
                            <label for="experience">Year of experience</label>
                            <select id="experience" class="form-control">
                                <option value="" selected="selected" disabled="disabled">Select years of experience</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                                <option value="4">Four</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="specialities">Specialities:</label>
                            <select id="specialities" class="form-control" multiple="multiple">
                            </select>
                        </div>
                        <button type="reset" class="btn bg-danger">Reset</button>
                        <button id="submitButton" class="btn btn-primary" onclick="submitClick()" value="submit">Submit</button>
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
                        <tr>
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
                                <a href="#" onclick="onEdit(this)"><i class="fas fa-edit"></i></a>
                            </td>
                            <td>
                                <a href="#" onclick="onDelete(this)"><i class="fas fa-trash"></i></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
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
        function validateForm() {
            var firstName = $("#firstname").val();
            var lastName = $("#lastname").val();
            var DOB = $("#dob").val();
            var gender = ("input[name='optionsRadios']:checked").val();
            var qualification = $("input[name='qualification']:checked").map(function () { return $(this).val(); }).get().join(", ");
            var entrytiming = $("#clockIn").val();
            var clockend = $("#clockOut").val();
            var email = $("#email").val();
            var contact = $("#contact").val();
            var experience = $("#experience").val();
            var specialities = $("#specialities").val();
            var valid = true;
            if (!firstName) {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your first name'
                });
            }
            if (!lastName) {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your last name'
                });
            }
            if (!DOB) {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your date of birth'
                });
            }
            if (!gender) {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please select your gender'
                });
            }
            if (!qualification) {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your qualification'
                });
            }
            if (!entrytiming) {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your entry timing'
                });
            }
            if (!clockend) {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your end timing'
                });
            }
            if (!email) {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your email'
                });
            }
            if (!contact) {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your contact number'
                });
            }
            if (!experience) {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your experience'
                });
            }
            if (!specialities) {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter your specialities'
                });
            }

            return valid;
        }
    function submitClick() {
        debugger
        if (validateForm()) {
            debugger
            var table = document.querySelector("#datatable tbody");
            var row = table.insertRow(-1);
            var firstNameCell = row.insertCell(0);
            var lastNameCell = row.insertCell(1);
            var DOBCell = row.insertCell(2);
            var genderCell = row.insertCell(3);
            var qualificationCell = row.insertCell(4);
            var entrytimingCell = row.insertCell(5);
            var clockendCell = row.insertCell(6); 
            var contactCell = row.insertCell(7);
            var experienceCell = row.insertCell(8);
            var specialitiesCell = row.insertCell(9);
            var editCell = row.insertCell(10);
            var deleteCell = row.insertCell(11);
            firstNameCell.innerHTML = $("#firstname").val();
            lastNameCell.innerHTML = $("#lastname").val();
            DOBCell.innerHTML = $("#dob").val();
            genderCell.innerHTML = $("input[name='optionsRadios']:checked").val();
            qualificationCell.innerHTML = $("input[name='qualification']:checked").map(function () { return $(this).val(); }).get().join(", ");
            entrytimingCell.innerHTML = $("#clockIn").val();
            clockendCell.innerHTML = $("#clockOut").val();
            emailCell.innerHTML = $("#email").val();
            contactCell.innerHTML = $("#contact").val();
            experienceCell.innerHTML = $("#experience").val();
            specialitiesCell.innerHTML = $("#specialities").val();
            editCell.innerHTML = `<a href="#" onclick="onEdit(this)" ><i class="fas fa-edit"></i></a>`;
            deleteCell.innerHTML = `<a href="#" onclick="onDelete(this)"><i class="fas fa-trash"></i></a>`;
            var data = {
                firstName: $("#firstname").val(),
                lastName: $("#lastname").val(),
                firstName: $("#firstname").val(),
                lastName: $("#lastname").val(),
                DOB: $("#dob").val(),
                gender: $("input[name='optionsRadios']:checked").val(),
                qualification: $("input[name='qualification']:checked").map(function () { return $(this).val(); }).get(),
                entrytiming: $("#clockIn").val(),
                endtiming: $("#clockOut").val(),
                contact: $("#contact").val(),
                experience: $("#experience").val(),
                specialities: $("#specialities").val()
            };
        };
        //get the data from the Table using Table id
        var existingData = localStorage.getItem("dataTable");
        if (existingData) {
            existingData = JSON.parse(existingData);
        } else {
            existingData = [];
        }
        //Push the data as string in LocalStorage using setItem and JSON.stringify
        existingData.push(data);
        localStorage.setItem("dataTable", JSON.stringify(existingData));

        //Clear Input Field
        clearfield();
    }
</script>
</html>
