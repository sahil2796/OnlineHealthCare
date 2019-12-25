<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="pharma_reg_login.aspx.cs" Inherits="pharma_reg_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!DOCTYPE HTML>
    <html>
    <head>
    </head>
    <body>
        <!--Tabs-->
        <script>
            $(document).ready(function () {
                $('.tabs').tabs();
            });
        </script>
        <div class="container">
            <div class="row">
                <div class="col s12 offset-l2">
                    <ul id="tabs-swipe-demo" class="tabs">
                        <%--<li class="tab col s3"><a href="#test-swipe-1">Register</a></li>--%>
                        <li class="tab col s3"><a class="active" href="#test-swipe-2">Login</a></li>
                    </ul>
                    <!--Registration Tab-->
                    <%--<div id="test-swipe-1" class="col s12">
                        <div class="container col s8">
                            <div class="row">
                            </div>
                            <div class="row">
                                <div class="input-field hoverable col s6">
                                    <i class="material-icons prefix">contacts</i>
                                    <asp:TextBox ID="first_name" runat="server" placeholder="First Name" ValidationGroup="btnRegister"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="req_fname" runat="server" ControlToValidate="first_name"
                                        ErrorMessage="Please Enter Your First Name" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field hoverable col s6">
                                    <i class="material-icons prefix">contacts</i>
                                    <asp:TextBox ID="last_name" runat="server" placeholder="Last Name" ValidationGroup="btnRegister"></asp:TextBox>
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
                                    <asp:TextBox ID="email" runat="server" placeholder="Email" ValidationGroup="btnRegister"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="req_email" runat="server" ControlToValidate="email"
                                        ErrorMessage="Please Enter Your Email" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field hoverable col s6">
                                    <i class="material-icons prefix">vpn_key</i>
                                    <asp:TextBox ID="password" runat="server" placeholder="Password" ValidationGroup="btnRegister"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="req_password" runat="server" ControlToValidate="password"
                                        ErrorMessage="Please Enter Your Password" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field hoverable col s6">
                                    <i class="material-icons prefix">replay</i>
                                    <asp:TextBox ID="password2" runat="server" placeholder="Retype Password" ValidationGroup="btnRegister"></asp:TextBox>
                                    <asp:Label ID="password23" runat="server" Text="Retype Password" ValidationGroup="vg_register"></asp:Label>
                                </div>
                                <div class="row">
                                    <div class="input-field hoverable col s6">
                                        <i class="material-icons prefix">contact_phone</i>
                                        <asp:TextBox ID="contact" runat="server" placeholder="Contact Number" ValidationGroup="btnRegister"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="req_contact" runat="server" ControlToValidate="contact"
                                            ErrorMessage="Please Enter Your Contact Number" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
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
                                        <i class="material-icons prefix">contact_phone</i>
                                        <asp:TextBox ID="medical_name" runat="server" placeholder="Medical Name" ValidationGroup="btnRegister"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="req_medical_name" runat="server" ControlToValidate="medical_name"
                                            ErrorMessage="Please Enter Your Medical Name" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="input-field hoverable col s6">
                                        <i class="material-icons prefix">contact_phone</i>
                                        <asp:TextBox ID="licence_no" runat="server" placeholder="Licence Number" ValidationGroup="btnRegister"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="req_licence_no" runat="server" ControlToValidate="licence_no"
                                            ErrorMessage="Please Enter Your Licence Number" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
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
                                        <i class="material-icons prefix">location_on</i>
                                        <asp:TextBox ID="address" TextMode="multiline" Columns="50" Rows="5" runat="server"
                                            placeholder="Address" />
                                        <asp:RequiredFieldValidator ID="req_address" runat="server" ControlToValidate="address"
                                            ErrorMessage="Please Enter Your Adress" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <asp:Button ID="btnRegister" runat="server" Text="Register" class="waves-effect waves-light btn"
                                    OnClick="btnRegister_Click1"></asp:Button>
                            </div>
                        </div>
                    </div>--%>
                    <!--Login Tab-->
                    <div id="test-swipe-2" class="col s12">
                        <div id="Div1" class="col s12">
                            <div class="container col s6">
                                <div class="row">
                                </div>
                                <div class="row">
                                    <div class="input-field hoverable col s12">
                                        <i class="material-icons prefix">account_circle</i>
                                        <asp:TextBox ID="l_email" runat="server" ValidationGroup="btnLogin" placeholder="UserName/Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="req_lemail" runat="server" ControlToValidate="l_email"
                                            ErrorMessage="Please Enter Your Email" ValidationGroup="p_login"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field hoverable col s12">
                                        <i class="material-icons prefix">vpn_key</i>
                                        <asp:TextBox ID="l_password" runat="server" placeholder="Password" ValidationGroup="btnLogin" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="req_lpasssword" runat="server" ControlToValidate="l_password"
                                            ErrorMessage="Please Enter Your Password" ValidationGroup="p_login" TextMode="password"></asp:RequiredFieldValidator>
                                    </div>
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" class="waves-effect waves-light btn"
                                        OnClick="btnLogin_Click" ValidationGroup="p_login"></asp:Button>
                                    <asp:Label Text="Invalid Email/Password" runat="server" ID="lblLoginFailure" Visible="false" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
