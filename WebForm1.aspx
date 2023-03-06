<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Evaluation_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Careplus Hospital</title>
   <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <%--fontawesome--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
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
                                   
                                   <input class="text-center form-control-lg mb-2" id="code" />
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
     <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <!-- Bootstrap Password Toggle JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-show-password/1.1.1/bootstrap-show-password.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function login() {
            var username = document.getElementById("username").value;
            var code = document.getElementById("code").value;

            // perform validation here
            if (username === "" || code === "") {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter both username and PIN!',
                });
            } else if (code.length !== 4) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'PIN must be 4 digits!',
                });
            } else {
                // perform login action here
                Swal.fire({
                    icon: 'success',
                    title: 'Login successful!',
                });
            }
        }<button type="button" class="btn btn-primary py-3" onclick="login()">Enter</button>


function login() {

  // redirect to the given link
  window.location.href = 'https://localhost:44340/2nd%20page.aspx?fname=Govardhan&lname=P&dob=2023-03-10T18%3A04&clockIn=2023-03-09T18%3A04&clockOut=2023-03-08T18%3A04&email=&contact=#';
}
    </script>

   
</html>
