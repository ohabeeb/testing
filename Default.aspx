<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ABUPQAS.Default" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ABU Past Questions and Solution</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="adminform" runat="server">

        


        <div id="wrapper" >
                <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">COMPANY NAME</a>
            </div>

            <div class="header-right">

              <a href="message-task.html" class="btn btn-info" title="New Message"><b>30 </b><i class="fa fa-envelope-o fa-2x"></i></a>
                <a href="message-task.html" class="btn btn-primary" title="New Task"><b>40 </b><i class="fa fa-bars fa-2x"></i></a>
                <a href="login.html" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>


            </div>
        </nav>
             <asp:Button ID="LogoutButton" runat="server" Text="Logout" />

         <div class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1 col-xs-offset-0" >
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="SearchTextBox" SetFocusOnError="true" ForeColor="Red" Font-Bold="true" runat="server" ErrorMessage="Please input Course Code"></asp:RequiredFieldValidator>

             <div class="input-group">

         <asp:TextBox ID="SearchTextBox" runat="server" class="form-control"  PlaceHolder="Enter Course Code e.g COSC307"></asp:TextBox>
                 <span class="form-group input-group-btn">
           <asp:Button ID="SearchButton" runat="server" Text="Search" class="btn btn-default" OnClick="SearchButton_Click" />  
      </span>
    </div>
                 
                <div id="Row" runat="server" class="row">
        <div class="col-md-12">
            <!--   Kitchen Sink -->
            <div class="panel panel-default">
                <div class="panel-heading" style="text-align: left">
                    <strong>All Past Questions and Solutions</strong>
                </div>
                <div class="panel-body">
                    <div class="table-responsive" >
                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate>
                                <table class="table table-striped table-bordered table-hover table-responsive">
                                    <thead class="table-responsive">
                                        <tr class="table-responsive" style="text-align: left">                  
                                          
                                            <th>Course Materials</th>
                                            <th>Past Question Paper</th>
                                            <th>Solution</th>
                                            <th>Examination Paper Year</th>        
                                        </tr>
                                    </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tbody class="table-responsive">
                                    <tr class="table-responsive" style="text-align: left">                                                         
                                                        
                                        <td ><a href="download.aspx?ctid=<%#Eval("CourseMaterial") %>"><%#Eval("CourseMaterial") %></a></td>                                     
                                        <td ><a href="download.aspx?pqid=<%#Eval("PastQuestionPaper") %>"><%#Eval("PastQuestionPaper") %>  </a></td>                                     
                                        <td><a href="download.aspx?sid=<%#Eval("PastQuestionSolution") %>"><%#Eval("PastQuestionSolution") %></a></td>                                     
                                        <td ><%#Eval("ExaminationYear")%></td>   
                                    </tr>

                                </tbody>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                 
                            </FooterTemplate>
                        </asp:Repeater>

                           </div>
                </div>

                    </div>
            <!-- End  Kitchen Sink -->
        </div>
        </div>
     
    </div>
        </div>
        <div class="footer" style="background-color:white; color:black; text-align:right">


            <div class="row">
                <div class="col-lg-12">
                    &copy; <%Response.Write(DateTime.Now.Year); %> HabeebTechnologies
                </div>
            </div>
        </div>


        <!-- /. WRAPPER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="assets/js/bootstrap.min.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="assets/js/custom.js"></script>

    </form>
</body>
</html>


