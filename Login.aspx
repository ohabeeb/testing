<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ABUPQAS.Login" %>

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
<body style="background-color: white">
    <form id="Form1" runat="server">
    <div class="container">
        <div class="row text-center " style="padding-top: 100px;">
            <div class="col-md-12">
                <img src="assets/img/logo-invoice.png" />
            </div>
        </div>
        <div class="row ">

            <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">

                <div class="panel-body">
     
                        <hr />
                        <h5>Enter Details to Login</h5>
                        <br />
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                            <asp:TextBox ID="UserNameTextBox" runat="server" class="form-control" PlaceHolder="Your UserName"></asp:TextBox>

                        </div>
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <asp:TextBox ID="PasswordTextBox" runat="server" class="form-control" TextMode="Password" PlaceHolder="Your Password"></asp:TextBox>
                      
                        </div>
                        <div class="form-group">
                            <label class="checkbox-inline">
                                <input type="checkbox" />
                                Remember me
                            </label>
                            <span class="pull-right">
                                <a href="#">Forget password ? </a>
                            </span>
                        </div>
                        <asp:Button ID="LoginButton" runat="server" class="btn btn-primary " Text="Login Now" OnClick="LoginButton_Click" />
                        <asp:Label ID="StatusLable" runat="server" Font-Bold="true"></asp:Label>
                        <hr />
                        Not register ? <a href="Registration.aspx">click here </a>or go to <a href="Default.aspx">Home</a>
    
                </div>

            </div>


        </div>
    </div>
    </form>
</body>
</html>

