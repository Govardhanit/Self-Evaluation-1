<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Evaluation_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10/dist/sweetalert2.all.min.js"></script>
    <title>Careplus Hospital</title>
</head>
<body>
     <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <h4>Login</h4> 
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-group">
                                <label for="username">Username:</label>
                                <input type="text" class="form-control" id="username" placeholder="Enter username" /> 
                            </div>
                            <label for="username">Enter PIN:</label>
                            <div class="btn-group-vertical ml-4 mt-4" role="group" aria-label="Basic example">
                                <div class="btn-group">
                                    <input class="text-center form-control-lg mb-2" id="code" type="number" maxlength="4" /> 
                                </div>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value=document.getElementById('code').value + '1';">1</button>
                                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value=document.getElementById('code').value + '2';">2</button>
                                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value=document.getElementById('code').value + '3';">3</button>
                                </div>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value=document.getElementById('code').value + '4';">4</button>
                                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value=document.getElementById('code').value + '5';">5</button>
                                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value=document.getElementById('code').value + '6';">6</button>
                                </div>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value=document.getElementById('code').value + '7';">7</button>
                                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value=document.getElementById('code').value + '8';">8</button>
                                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value=document.getElementById('code').value + '9';">9</button>
                                </div>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value=document.getElementById('code').value.slice(0, -1);">&lt;</button>
                                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value=document.getElementById('code').value + '0';">0</button>

                                    <button type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementById('code').value=document.getElementById('code').value + '0';">0</button>
                                    <button type="button" class="btn btn-primary py-3" onclick="login()">Enter</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
   </body>
    <script>
        function login() {
            // Get the values from the form
            var username = document.getElementById('username').value;
            var pin = document.getElementById('code').value;

            // Perform validation
            if (username === "" || pin === "") {
                // If any field is empty, show an error message using Sweet Alert 2
                Swal.fire({
                    title: "Error",
                    text: "Please enter both your username and PIN.",
                    icon: "error",
                });
            } else if (pin.length > 4) {
                // If the PIN is more than 4 digits, show an error message using Sweet Alert 2
                Swal.fire({
                    title: "Error",
                    text: "Your PIN should be no more than 4 digits.",
                    icon: "error",
                });
            } else {
                // If all fields are filled and the PIN is no more than 4 digits, store the values in local storage and redirect to another page
                localStorage.setItem("username", username);
                localStorage.setItem("pin", pin);
                document.getElementById('username').value = "";
                document.getElementById('code').value = "";
                window.location.href = "https://localhost:44340/2nd%20page.aspx";
            }
        }
    </script>
