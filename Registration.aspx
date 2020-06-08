<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ABUPQAS.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Responsive Bootstrap Advance Admin Template</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">


            <div class="row ">

                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">

                    <div class="panel-heading">
                        SINGUP FORM
                    </div>
                    <div class="panel-body">


                        <div class="form-group">
                            <label>Enter First Name</label>
                            <asp:TextBox ID="FirstNameTextBox" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Enter Last Name</label>
                            <asp:TextBox ID="LastNameTextBox" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Select Gender</label>
                            <asp:DropDownList ID="GenderDropDownList" runat="server" class="form-control">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Enter UserName</label>
                            <asp:TextBox ID="UserNameTextBox" runat="server" class="form-control"></asp:TextBox>
                            <asp:Label ID="StatusLable" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>
                        </div>
                        <div class="form-group">
                            <label>Enter Password</label>
                            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Retype Password</label>
                            <asp:TextBox ID="RetypePasswordTextBox" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Enter Mobile Number</label>
                            <asp:TextBox ID="MobileNumberTextBox" runat="server"  class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Enter Email</label>
                            <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email"  class="form-control"></asp:TextBox>
                        </div>
                        <asp:Button ID="RegistrationButton" runat="server" class="btn btn-success" Text="Register Now" OnClick="RegistrationButton_Click" />
                 
                    </div>
                </div>

            </div>


        </div>
    </form>
</body>
</html>
