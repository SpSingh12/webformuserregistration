<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="webformuserregistration.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <title>ForGot - Pass</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: #55E6C1;
        }

        .d {
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row d">
            <div class="col-md-4 bg-white mt-5">
                <img class="img-fluid" src="image/confused (1).png" /><hr style="height: 1px; border-width: 0; color: red; background-color: gray" />
                &nbsp;<h5>Forgot Password?</h5>
                <p>please enter your password email address we will get to you with the reset password link and confirmation OTP thanks!</p>

                <form id="form1" runat="server" class="">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                        <asp:TextBox ID="TextBox2" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                    <asp:Button ID="ButPwd" class="form-control mt-4 mb-4" Style="background-color: #55E6C1;" runat="server" Text="RESET" OnClick="ButPwd_Click" />


                </form>
                <div class="text-center">
                    <asp:HyperLink ID="HyperLink1" Style="background: #55E6C1;" runat="server" class="btn text-white mb-3" NavigateUrl="~/WebForm2.aspx">Back To Log-In</asp:HyperLink>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
