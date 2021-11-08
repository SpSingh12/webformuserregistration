<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="webformuserregistration.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <title>USER DETAILS</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            /*font-family: 'Indie Flower', cursive;*/
            background-color: #55E6C1;
        }

        .table td {
            border: 0px;
        }

        .row {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-control {
            border: 2px solid black;
        }

        #GridView1 {
            border: 2px solid red;
            text-align: center;
            width: 100%;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="container pt-5">
            <div class="row">
                <div class="col-md-6 bg-white">
                    <table class="table">
                        <tr>
                            <td>USERNAME :</td>
                            <td>
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td>EMAIL :</td>
                            <td>
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td>PASSWORD :</td>
                            <td>
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Button ID="Button2" CssClass="btn bg-primary" runat="server" Text="INSERT" OnClick="Button2_Click" />
                                <asp:Button ID="Button3" CssClass="btn bg-success" runat="server" Text="UPDATE" OnClick="Button3_Click1" />
                                <asp:Button ID="Button1" CssClass="btn bg-danger" runat="server" Text="DELETE" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>

                    <%--this is for grid view--%>
                    <div class="container" style="overflow:scroll">
                        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        </asp:GridView>
                    </div>

                    <%--logout button--%>
                    <div class="container text-center mb-3 mt-4">
                        <asp:Label ID="lblUserDetails" runat="server" Text=""></asp:Label>
                        <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn  bg-danger" OnClick="btnLogout_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>


</body>
</html>
