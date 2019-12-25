<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="doc_reg_login.aspx.cs" Inherits="doc_reg_login" %>

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
        <%-- <script>
            var password = document.getElementById("password")
  , password2 = document.getElementById("password2");

            function validatePassword() {
                if (password.value != password2.value) {
                    password2.setCustomValidity("Passwords Don't Match");
                } else {
                    password2.setCustomValidity('');
                }
            }

            password.onchange = validatePassword;
            password2.onkeydown = validatePassword;
        </script>--%>
        <div class="container">
            <div class="row">
                <div class="col s12 offset-l2">
                    <ul id="tabs-swipe-demo" class="tabs">
                        <li class="tab col s3"><a href="#test-swipe-1">Register</a></li>
                        <li class="tab col s3"><a class="active" href="#test-swipe-2">Login</a></li>
                    </ul>
                    <!--Registration Tab-->
                    <div id="test-swipe-1" class="col s12">
                        <div class="container col s8">
                            <div class="row">
                            </div>
                            <%--  <form class="col s12">--%>
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
                                    <asp:TextBox ID="password" runat="server" placeholder="Password" TextMode="Password"
                                        ValidationGroup="btnRegister"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="req_password" runat="server" ControlToValidate="password"
                                        ErrorMessage="Please Enter Your Password" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                                </div>
                                 <div class="input-field hoverable col s6">
                                    <i class="material-icons prefix">people</i>
                                    <asp:TextBox ID="age" runat="server" placeholder="Age" ValidationGroup="btnRegister"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqAge" runat="server" ControlToValidate="age" ErrorMessage="Please Enter Your Age"
                                        ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="input-field hoverable col s6">
                                    <i class="material-icons prefix">card_giftcard</i>
                                    <asp:TextBox ID="degree" runat="server" placeholder="Degree" ValidationGroup="btnRegister"
                                        AutoPostBack="False"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqDegree" runat="server" ControlToValidate="degree"
                                        ErrorMessage="Please Enter Your Degree" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field hoverable col s6">
                                    <i class="material-icons prefix">location_city</i>
                                    <asp:TextBox ID="city" runat="server" placeholder="City" ValidationGroup="btnRegister"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqCity" runat="server" ControlToValidate="city"
                                        ErrorMessage="Please Enter Your City" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field hoverable col s6">
                                    <i class="material-icons prefix">location_on</i>
                                    <asp:TextBox ID="location" runat="server" placeholder="Location" ValidationGroup="btnRegister"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqLocation" runat="server" ControlToValidate="location"
                                        ErrorMessage="Please Enter Your Location" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field hoverable col s6">
                                    <i class="material-icons prefix">location_on</i>
                                    <asp:TextBox ID="address" TextMode="multiline" Columns="50" Rows="5" runat="server"
                                        placeholder="Address" ValidationGroup="btnRegister" />
                                    <asp:RequiredFieldValidator ID="req_address" runat="server" ControlToValidate="address"
                                        ErrorMessage="Please Enter Your Adress" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field hoverable col s6">
                                    <i class="material-icons prefix">contact_phone</i>
                                    <asp:TextBox ID="contact" runat="server" placeholder="Contact Number" ValidationGroup="btnRegister"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="req_contact" runat="server" ControlToValidate="contact"
                                        ErrorMessage="Please Enter Your Contact Number" ValidationGroup="vg_register"></asp:RequiredFieldValidator>
                                </div>
                               
                            </div>
                            <asp:Button ID="btnRegister" runat="server" Text="Register" class="waves-effect waves-light btn" ValidationGroup="vg_register"
                                OnClick="btnRegister_Click1"></asp:Button>
                        </div>
                        <%--  </form>--%>
                    </div>
                </div>
                <!--Login Tab-->
                <div id="test-swipe-2" class="col s12">
                    <div id="Div1" class="col s12">
                        <div class="container col s6">
                            <div class="row">
                            </div>
                            <%--    <form class="col s14">--%>
                            <div class="row">
                                <div class="input-field hoverable col s12">
                                    <i class="material-icons prefix">account_circle</i>
                                    <asp:TextBox ID="l_email" runat="server" ValidationGroup="btnLogin" placeholder="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="req_lemail" runat="server" ControlToValidate="l_email"
                                        ErrorMessage="Please Enter Your Email" ValidationGroup="vg_login"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field hoverable col s12">
                                    <i class="material-icons prefix">vpn_key</i>
                                    <asp:TextBox ID="l_password" runat="server" TextMode="Password" placeholder="Password"
                                        ValidationGroup="btnLogin"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="l_password"
                                        ErrorMessage="Please Enter Your Password" ValidationGroup="vg_login"></asp:RequiredFieldValidator>
                                </div>
                                <asp:Button ID="btnLogin" runat="server" Text="Login" class="waves-effect waves-light btn" ValidationGroup="vg_login"
                                    OnClick="btnLogin_Click"></asp:Button>
                                <asp:Label ID="lblLoginFailure" Text="Invalid Email/Password" Visible="false" runat="server" />
                            </div>
                            <%--</form>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </body>
    </html>
</asp:Content>
