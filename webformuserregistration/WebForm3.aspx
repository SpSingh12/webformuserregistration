<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="webformuserregistration.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <title>Sign Up</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #55E6C1;
        }

        .img {
            background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2lsxWTxWme65ycF7CCDqPqgeoiYtjEO4bCw&usqp=CAU);
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 img">
                <div class="container text-white">
                    <h5 class="p-3">Welcome To..</h5>
                    <h2 class="pt-5">Load Infotech</h2>
                    <p class="lead">We are provide Services and Security!!</p>
                </div>

                <div class="container text-center mt-5">
                    <p class="text-white">Already have an Account!!</p>
                    <a href="WebForm2.aspx" style="background: #55E6C1;" class="btn text-white mb-3">Log-In</a>
                </div>
            </div>

            <div class="col-md-6 bg-light p-3">
                <form id="form1" runat="server">
                    <div class="form-group">
                        <label for="TextBox1">USERNAME :</label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="TextBox2">Email Address :</label>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" class="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="TextBox3">Password :</label>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                        <input type="checkbox" onclick="myFunction()" />Show Password
                    </div>

                    <div class="form-group" style="display: flex; justify-content: center">
                        <asp:Button ID="Button1" runat="server" Style="background: #55E6C1;" class="btn" Text="Sign Up" OnClick="Button1_Click"  />
                    </div>
                </form>
                <p class="text-center">OR</p>
                <hr />
                <div class="text-center">
                    <img class="img-fluid" style="cursor: pointer;" width="50" height="50" src="image/search.png" />
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
        function myFunction() {
            var x = document.getElementById("TextBox3");
            if (x.type == "password") {
                x.type = "text";
            }
            else {
                x.type = "password";
            }
        }
    </script>
</body>
</html>
