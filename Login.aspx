<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cleveral.Login" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="TopContent" runat="server">
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style type="text/css">
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">Sign In</div>
                    <div style="float: right; font-size: 80%; position: relative; top: -10px"><a href="#">Forgot password?</a></div>
                </div>

                <div style="padding-top: 30px" class="panel-body">

                    <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>


                            <asp:TextBox ID="Username" runat="server" CssClass="form-control" placeholder="username or email" />&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Username" Display="Dynamic" ErrorMessage="Cannot be empty." runat="server" CssClass="errorValidator" ValidationGroup="Login" />
                        </div>

                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>


                            <asp:TextBox ID="Password" TextMode="Password" runat="server" CssClass="form-control" placeholder="password" />&nbsp;

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Password"
                                ErrorMessage="Cannot be empty." runat="server" CssClass="errorValidator" ValidationGroup="Login" />

                        </div>

                        <div class="input-group">
                            <div class="checkbox">
                                <label>
                                    <asp:CheckBox ID="Persist" runat="server" Text="Remember me" />
                                </label>
                            </div>
                        </div>


                        <div style="margin-top: 10px" class="form-group">
                            <!-- Button -->

                            <div class="col-sm-12 controls">
                                <asp:Button ID="LoginButton" Text="Login" runat="server" CssClass="btn btn-success" ValidationGroup="Login" />
                                <a id="btn-fblogin" href="#" class="btn btn-primary" style="display: none">Login with Facebook</a>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-md-12 control">
                                <div style="border-top: 1px solid#888; padding-top: 15px; font-size: 85%">
                                    Don't have an account! 
                                       
                                    <a href="#" onclick="$('#loginbox').hide(); $('#signupbox').show()">Sign Up Here
                                        </a>
                                </div>
                            </div>
                        </div>

                </div>
            </div>
        </div>
        <div id="signupbox" style="display: none; margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">Sign Up</div>
                    <div style="float: right; font-size: 85%; position: relative; top: -10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
                </div>
                <div class="panel-body">
                        <div id="signupalert" style="display: none" class="alert alert-danger">
                            <p>Error:</p>
                            <span></span>
                        </div>



                        <div class="form-group">
                            <label for="email" class="col-md-3 control-label">Email</label>
                            <div class="col-md-9">
                                <asp:TextBox ID="Email" runat="server" CssClass="form-control" placeholder="Email Address" />&nbsp;
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="firstname" class="col-md-3 control-label">First Name</label>
                            <div class="col-md-9">
                                <asp:TextBox ID="Name" runat="server" CssClass="form-control" placeholder="First Name" />&nbsp;
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="lastname" class="col-md-3 control-label">Last Name</label>
                            <div class="col-md-9">
                                <asp:TextBox ID="Surname" runat="server" CssClass="form-control" placeholder="Last Name" />&nbsp;
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-md-3 control-label">Password</label>
                            <div class="col-md-9">
                                <asp:TextBox ID="NewUserPassword" runat="server" CssClass="form-control" placeholder="Password" />&nbsp;
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="icode" class="col-md-3 control-label">Invitation Code</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="icode" placeholder="">
                            </div>
                        </div>

                        <div class="form-group">
                            <!-- Button -->
                            <div class="col-md-offset-3 col-md-9">
                                <asp:Button ID="SignupButton" Text="Sign Up" runat="server" CssClass="btn btn-info" ValidationGroup="Signup" />
                                <%--<span style="margin-left: 8px;">or</span>--%>
                            </div>
                        </div>

<%--                        <div style="border-top: 1px solid #999; padding-top: 20px" class="form-group">

                            <div class="col-md-offset-3 col-md-9">
                                <button id="btn-fbsignup" type="button" class="btn btn-primary"><i class="icon-facebook"></i>Sign Up with Facebook</button>
                            </div>

                        </div>--%>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <asp:Label ID="Msg" ForeColor="red" runat="server" />
        </div>
    </div>

</asp:Content>
