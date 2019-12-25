<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="user_register_login.aspx.cs" Inherits="user_register_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('ul.tabs').tabs();
        });
        
    </script>
    <h1 align="center">
        Please Register/Login</h1>
    <div class="container">
        <div class="row">
            <div class="col s12 m10 l10 offset-l1 offset-m1">
                <ul id="tabs-swipe-demo" class="tabs">
                    <li class="tab col s3 l3 m3 offset-l3"><a href="#test-swipe-1">Register</a></li>
                    <li class="tab col s3 l3 m3 offset-l3"><a class="active" href="#test-swipe-2">Login</a></li>
                </ul>
            </div>
            <!--Registration Tab-->
            <div id="test-swipe-1" class="col s12 l10 offset-l1 center">
                <div class="container">
                    <div class="row">
                        <div class="input-field hoverable col s6">
                            <i class="material-icons prefix">contacts</i>
                            <asp:TextBox ID="first_name" runat="server" placeholder="First Name" ValidationGroup="btnRegister"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="req_fname" runat="server" ControlToValidate="first_name"
                                ErrorMessage="Please Enter Your First Name" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                        </div>
                        <div class="input-field hoverable col s6">
                            <i class="material-icons prefix">contacts</i>
                            <asp:TextBox ID="last_name" runat="server" placeholder="Last Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="req_lname" runat="server" ControlToValidate="last_name"
                                ErrorMessage="Please Enter Your Last Name" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field hoverable col s6">
                            <i class="material-icons prefix">account_circle</i>
                            <asp:TextBox ID="user_name" runat="server" placeholder="UserName" ValidationGroup="btnRegister"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="req_uname" runat="server" ControlToValidate="user_name"
                                ErrorMessage="Please Enter Your User Name" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                        </div>
                        <div class="input-field hoverable col s6">
                            <i class="material-icons prefix">email</i>
                            <asp:TextBox ID="email_reg" runat="server" placeholder="Email" ValidationGroup="btnRegister"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="req_email" runat="server" ControlToValidate="email_reg"
                                ErrorMessage="Please Enter Your Email" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field hoverable col s6">
                            <i class="material-icons prefix">vpn_key</i>
                            <asp:TextBox ID="password_reg" runat="server" placeholder="Password" TextMode="Password"
                                ValidationGroup="btnRegister"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="req_password" runat="server" ControlToValidate="password_reg"
                                ErrorMessage="Please Enter Your Password" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                        </div>
                        <script type="text/javascript">
                            $(document).ready(function () {

                                $('.datepicker').datepicker();


                            });
                        </script>
                        <div class="input-field hoverable col s6">
                            <div>
                                <i class="material-icons prefix">account_circle</i>
                                <asp:TextBox ID="datePicker" runat="server" class="datepicker" placeholder="Date Of Birth"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="req_dob" runat="server" ControlToValidate="datePicker"
                                    ErrorMessage="Please Enter Your DOB" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field hoverable col s6">
                            <i class="material-icons prefix">contact_phone</i>
                            <asp:TextBox ID="contact" runat="server" placeholder="Contact Number" ValidationGroup="btnRegister"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="req_contact" runat="server" ControlToValidate="contact"
                                ErrorMessage="Please Enter Your Contact Number" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                        </div>
                        <div class="input-field hoverable col s6">
                            <i class="material-icons prefix">location_city</i>
                            <asp:TextBox ID="city" runat="server" placeholder="City"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="req_City" runat="server" ControlToValidate="city"
                                ErrorMessage="Please Enter Your City" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field hoverable col s6">
                            <i class="material-icons prefix">location_on</i>
                            <asp:TextBox ID="location" runat="server" placeholder="Location" ValidationGroup="btnRegister"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="req_location" runat="server" ControlToValidate="location"
                                ErrorMessage="Please Enter Your Location" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                        </div>
                        <div class="input-field hoverable col s6">
                            <i class="material-icons prefix">contact_phone</i>
                            <asp:TextBox ID="age" runat="server" placeholder="Age" ValidationGroup="btnRegister"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="req_age" runat="server" ControlToValidate="age" ErrorMessage="Please Enter Your Age"
                                ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field hoverable col s6">
                            <i class="material-icons prefix">group_work</i>
                            <asp:TextBox ID="blood_grp" runat="server" placeholder="Blood Group" ValidationGroup="vg_register"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="req_blood_grp" runat="server" ControlToValidate="blood_grp"
                                ErrorMessage="Please Enter Your Blood Group" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" class="waves-effect waves-light btn"
                        OnClick="btnRegister_Click1" ValidationGroup="vg_register"></asp:Button>
                </div>
            </div>
            <!--Login Tab-->
            <div id="test-swipe-2" class="col s12 l10 offset-l1 center">
                <div id="Div1">
                    <div class="container">
                        <div class="row">
                        </div>
                        <div class="row">
                            <div class="input-field hoverable col s12">
                                <i class="material-icons prefix">account_circle</i>
                                <asp:TextBox ID="l_email" runat="server" ValidationGroup="btnLogin" placeholder="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="l_email"
                                    ErrorMessage="Please Enter Your Email" ValidationGroup="vg_login"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field hoverable col s12">
                                <i class="material-icons prefix">vpn_key</i>
                                <asp:TextBox ID="l_password" runat="server" placeholder="Password" TextMode="Password"
                                    ValidationGroup="btnLogin"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqPassword" runat="server" ControlToValidate="l_password"
                                    ErrorMessage="Please Enter Your Password" ValidationGroup="vg_login"></asp:RequiredFieldValidator>
                            </div>
                            <asp:Button ID="btnLogin" type="button" runat="server" Text="Login" class="waves-effect waves-light btn"
                                OnClick="btnLogin_Click1" ValidationGroup="vg_login"></asp:Button>
                            <asp:Label ID="lblLoginFailure" runat="server" Text="Invalid Email/Password" TextMode="Password"
                                Visible="false"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
