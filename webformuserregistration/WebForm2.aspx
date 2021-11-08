<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="webformuserregistration.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>U.I. Form</title>

    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        body {
            background-color: #55E6C1;
        }

        .row {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-control {
            border-radius: 120px;
            border: 3px solid black;
        }

        .img-fluid {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .bord {
            border-radius: 20px;
            box-shadow: -8px 4px 11px 3px rgba(0,0,0,0.75);
            -webkit-box-shadow: -8px 4px 11px 3px rgba(0,0,0,0.75);
            -moz-box-shadow: -8px 4px 11px 3px rgba(0,0,0,0.75);
        }
    </style>
</head>
<body>


    <div class="container-fluid mt-5">
        <div class="row  m-auto">
            <div class="col-md-3 col-12 bg-light bord">
                <img width="150" height="150" class="img-fluid pt-2" src="image/user.png" />
                <h3 class="text-center">Welcome User</h3>
                <form id="form1" runat="server" class="">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="USERNAME :"></asp:Label>
                        <%--<label for="TextBox1">USERNAME :</label>--%>
                        <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="PASSWORD :"></asp:Label>
                        <%--<label for="TextBox2">PASSWORD :</label>--%>
                        <asp:TextBox ID="TextBox2" TextMode="password" class="form-control" runat="server"></asp:TextBox>
                        <input type="checkbox" onclick="myFunction()" />Show Password
                    </div>

                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WebForm4.aspx">ForgetPassword</asp:HyperLink>
                    ||
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm3.aspx">Sign Up</asp:HyperLink>

                    <div class="form-group pt-2" style="display: flex; justify-content: center">
                        <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-dark text-center w-25" OnClick="Button1_Click" />
                    </div>

                    <asp:Label ID="lblErrorMessage" runat="server" CssClass="mt-3 mc-3 ml-5 text-danger" Text="Incorrect User Credentials"></asp:Label>
                </form>
            </div>
        </div>
    </div>

    <script>
        function myFunction() {
            var x = document.getElementById("TextBox2");
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
