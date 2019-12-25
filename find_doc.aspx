<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="find_doc.aspx.cs" Inherits="find_doc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .card-image
        {
            height: 100px;
            width: 200px;
            top: 30px;
            left: 0%;
        }
    </style>
    <div class="container">
        <div class="row">
            <h1 align="center">
                List Of Doctors</h1>
            <div class="col s12 m12 l12">
                <div class="card horizontal">
                    <div class="card-image">
                        <img src="images/11.jpg">
                    </div>
                    <div class="card-stacked">
                        <div class="card-content">
                            <p>
                                <a href="!#">
                                    <h3>
                                        <u>Dr. Sunita Jonwal</u></h3>
                                </a><a><i class="material-icons">work</i>MD - Ayurveda, BAMS Ayurveda, 28 Years Experience<a>
                                    <br>
                                    <a><i class="material-icons">verified_user</i>Medical Registration Verified</a>
                                    <br>
                                    Dr. Sunita Jonwal is an Ayurvedic Gynecologist, Infertility Specialist, Expert in
                                    Dr. Jonwals NAP Therapy - Advanced Ayurvedic panchakarma Treatment, Super Specialist
                                    in multiple disease management. She has vast experience of 28 years in these fields.
                                    Dr. Sunita Laxman Jonwal practices at DrJonwal's Niramay Ayush Panchkarm Health
                                    Institute & Research Hospital in Borivali / Kandivali West, Mumbai and Dr. Sunita
                                    Jonwal's Niramay Ayush Panchkarm in Borivali West, Mumbai. She completed MD from
                                    R. A. Podar Government Medical College ( Ayurvedic ), Mumbai in 2006, BAMS Mumbai
                                    in 1990 She is a member of Maharashtra Council of Indian Medicine, Borivali Medical
                                    Brotherhood, Kandivli Medical Association, Malad Medical Association and ROME.
                                    <p class="left">
                                        <b>Timing: 10.00.am-4.00pm</b><br>
                                        <b>Consulting Fees: 700/-</b><br>
                                        <b>Contact: 9865896478</b>
                                        <br>
                                        <b>Address: </b>Plot Number 30/221, Matoshree Bungalow, Charkop Sector 6, Landmark:
                                        Behind Ambe Mata Mandir & Near Chickuwadi Mhada Colony Bridge, Mumbai <a href="https://www.google.co.in/maps/dir/''/Plot+Number+30%2F221,+Matoshree+Bungalow,+Charkop+Sector+6,+Landmark:+Behind+Ambe+Mata+Mandir+%26+Near+Chickuwadi+Mhada+Colony+Bridge,+Mumbai/@19.2195997,72.7645965,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x3be7b1334ff3834f:0x8d5599b7b38d439d!2m2!1d72.834637!2d19.219613">
                                            <b><u>Get Directions</u></b><a>
                                    </p>
                        </div>
                        <div class="card-action">
                            <asp:Button ID="btnBook1" runat="server" Text="Book My Appointment" 
                                class="waves-effect waves-light btn" onclick="btnBook1_Click" >
                            </asp:Button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col s12 m12 l12">
                <div class="card horizontal">
                    <div class="card-image">
                        <img src="images/12.jpg">
                    </div>
                    <div class="card-stacked">
                        <div class="card-content">
                            <p>
                                <a href="!#">
                                    <h3>
                                        <u>Dr. Jeevan Shetty</u></h3>
                                </a><a><i class="material-icons">work</i>BDS, P.C.A.D (New York University) U.S.A, Fellowship
                                    in Oral implantlogy Dentist, Implantologist, Cosmetic/Aesthetic Dentist, 19 Years
                                    Experience</a>
                                <br>
                                <a><i class="material-icons">verified_user</i>Medical Registration Verified</a>
                                <br>
                                Dr. Jeevan Shetty is a fine clinician who has done various courses in India and
                                abroad after graduation. He has completed his post graduate course in cosmetic dentistry
                                and modern advances in dentistry from the New York University (NYU), U.S.A. He completed
                                his Fellowship in Implantology under the Maharashtra university of health sciences(MUHS).
                                He has attended various conferences in India and abroad including the FDI(Fédération
                                Dentaire Internationale, France). He is a visiting faculty at various places including
                                the Godrej Memorial Hospital.</p>
                            <p class="left">
                                <b>Timing: 10.00.am-4.00pm</b><br>
                                <b>Consulting Fees: 700/-</b>
                                <br>
                                <b>Contact: 8856985454</b>
                                <br>
                                <b>Address: </b>C-18, Prashant Apartments, Landmark: Opposite to I.I.T Maingate,
                                Mumbai <a href="https://www.google.com/maps/search/C-18,+Prashant+Apartments,+Landmark:+Opposite+to+I.I.T+Maingate,+Mumbai/@19.1248353,72.9148543,17z/data=!3m1!4b1">
                                    <b><u>Get Directions</u></b><a>
                            </p>
                        </div>
                        <div class="card-action">
                            <asp:Button ID="btnBook2" CssClass="waves-effect waves-light btn" runat="server" Text="Book My Appointment" onclick="btnBook2_Click">
                            </asp:Button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col s12 m12 l12">
                <div class="card horizontal">
                    <div class="card-image">
                        <img src="images/13.jpg">
                    </div>
                    <div class="card-stacked">
                        <div class="card-content">
                            <p>
                                <a href="!#">
                                    <h3>
                                        <u>Dr. Rajendra Sankpal</u></h3>
                                </a><a><i class="material-icons">work</i>BDS, Fellowship in Oral implantlogy, Diploma
                                    in Laser Dentistry, Fellowship and Diplomate in Implantology from ICOI (USA) Dentist,Dental
                                    Surgeon, Implantologist, 26 Years Experience<a>
                                        <br>
                                        <a><i class="material-icons">verified_user</i>Medical Registration Verified</a>
                                        <br>Dr. Rajendra K Sankpal is a Dental Surgeon and an Oral Implantologist.
                                Has over 26 yrs of clinical experience in the field of dentistry. Dr. R. K. Sankpal
                                graduated from Government Dental College and Hospital Mumbai. Ex-assistant lecturer
                                Government Dental College Mumbai. Nobel Fellow in Implant and Esthetic Dentistry,
                                Nobel Biocare (Sweden), Fellow International Congress of Oral Implantology (USA),
                                Certified Inman Aigner user (UK) for without braces teeth alignment, Diploma in
                                Kaser Dentistry. He is trained in computer guided implant dentistry at Leuven University
                                (Belgium ), 3d digital dentistry -materialize dental (Belgium). Certified by the
                                Academy of Cosmetic Dentistry in India winner of “Scholastic Award” from Indian
                                Dental Association Mumbai. Worked as a clinical assistant at Government Dental College
                                and Hospital Mumbai. Worked as assistant lecturer in the department of prosthetic
                                dentistry at Government Dental College
                            </p>
                            <p class="left">
                                <b>Timing: 10.00.am-4.00pm</b><br>
                                <b>Consulting Fees: 700/-</b>
                                <br>
                                <b>Contact: 9854578545</b>
                                <br>
                                <b>Address: </b>M001, 1st Floor, Gateway Plaza, Hiranandani Gardens, Landmark: Opposite
                                Powai Plaza & Above Indusind Bank, Mumbai<a href="https://www.google.com/maps/search/M001,+1st+Floor,+Gateway+Plaza,+Hiranandani+Gardens,+Landmark:+Opposite+Powai+Plaza+%26+Above+Indusind+Bank,+Mumbai/@19.1246145,72.9149515,17z"><b><u>Get
                                    Directions</u></b></a>
                            </p>
                        </div>
                        <div class="card-action">
                            <asp:Button ID="btnBook3" runat="server" Text="Book My Appointment" class="waves-effect waves-light btn" onclick="btnBook3_Click">
                            </asp:Button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col s12 m12 l12">
                <div class="card horizontal">
                    <div class="card-image">
                        <img src="images/14.jpg">
                    </div>
                    <div class="card-stacked">
                        <div class="card-content">
                            <p>
                                <a href="!#">
                                    <h3>
                                        <u>Dr. Mansi Sanghvi </u>
                                    </h3>
                                </a><a><i class="material-icons">work</i>MBBS, DNB - Dermatology & Venereology Dermatologist,
                                    Cosmetologist, Trichologist, Dermatosurgeon, Aesthetic Dermatologist, 13 Years Experience<a>
                                        <br>
                                        <a><i class="material-icons">verified_user</i>Medical Registration Verified</a>
                                        <br>Dr. Mansi Sanghvi is a motivated, patient-focused dermatologist with
                                over 12 years of clinical experience, with a special interest in anti-aging and
                                aesthetic medicine. Dr. Mansi completed her post graduation and 3-year residency
                                training in Dermatology & Venereology in 2009. She is a Diplomate of National Board
                                in Skin & VD. She is NBE Board certified (National Board of Examinations, New Delhi)
                                for the practice of Dermatology in India. She has been practicing as a cosmetic
                                dermatologist in Mumbai for more than 9 years now.
                            </p>
                            <p align="left">
                                <b>Timing: 10.00.am-4.00pm</b><br>
                                <b>Consulting Fees: 700/-</b>
                                <br>
                                <b>Contact: 8798545465</b>
                                <br>
                                <b>Address: </b>Shop Number 11& 12, First Floor, Lake Primrose Shopping, Landmark:
                                First Floor Opposite Bookers, Mumbai<a href="https://www.google.com/maps/place/COSMO+DENT/@19.1141252,72.8971845,17z/data=!3m1!4b1!4m5!3m4!1s0x3be7c7e1db2c6ea9:0xfd59acfe8d3d4521!8m2!3d19.1141252!4d72.8993732"><b><u>Get
                                    Directions</u></b></a>
                            </p>
                        </div>
                        <div class="card-action">
                            <asp:Button ID="btnBook4" runat="server" Text="Book My Appointment" class="waves-effect waves-light btn" onclick="btnBook4_Click">
                            </asp:Button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col s12 m12 l12">
                <div class="card horizontal">
                    <div class="card-image">
                        <img src="images/15.jpg">
                    </div>
                    <div class="card-stacked">
                        <div class="card-content">
                            <p>
                                <a href="!#">
                                    <h3>
                                        <u>Dr. Aarti Patil</u></h3>
                                </a><a><i class="material-icons">work</i>MD - Obstetrics & Gynaecology, Post Graduate
                                    Proficiency In Panchakarma, Yoga Teachers Training Course, MBA - Global Management
                                    Gynecologist, Infertility Specialist, 6 Years Experience<a>
                                        <br>
                                        <a><i class="material-icons">verified_user</i>Medical Registration Verified</a>
                                        <br>Being an ardent practitioner of Yoga since childhood, Dr. Aarati, Master
                                of Gynaecology (Ayurveda), pursued her passion by getting an international certificate
                                as a 'Yoga Teacher'. Her research on Hormonal Replacement Therapy (HRT) and its
                                risk aftermath resulted in her in exploring other alternatives which lead her to
                                Ayurveda & Panchakarma. Dr. Aarati also holds an MBA in Global management (Switzerland).</p>
                            <p align="left">
                                <b>Timing: 10.00.am-4.00pm</b><br>
                                <b>Consulting Fees: 700/-</b></p>
                            <b>Contact: 9865896478</b>
                            <br>
                            <b>Address: </b>708, Aston Building, Sundervan Complex Road, Sundervan Complex,
                            Shastri Nagar, Landmark: Mercedes Benz Showroom, Mumbai<a href="https://www.google.com/maps/search/708,+Aston+Building,+Sundervan+Complex+Road,+Sundervan+Complex,+Shastri+Nagar,+Landmark:+Mercedes+Benz+Showroom,+Mumbai/@19.1372948,72.8236503,17z/data=!3m1!4b1"><b><u>Get
                                Directions</u></b></a>
                        </div>
                        <div class="card-action">
                            <%--<a class="waves-effect waves-light btn modal-trigger" href="#modal5"><i class="material-icons right">
                        book</i>Book My Appointment</a>--%>
                            <asp:Button ID="btnBook5" runat="server" Text="Book My Appointment" class="waves-effect waves-light btn" onclick="btnBook5_Click">
                            </asp:Button>
                        </div>
                    </div>
                </div>
            </div>
            <script>
                $(document).ready(function () {
                    $('.modal').modal();
                });
            </script>
            <div id="modal5" class="modal">
                <div class="modal-content">
                    <h4>
                        Modal Header</h4>
                    <p>
                        A bunch of text</p>
                </div>
                <div class="modal-footer">
                    <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
                </div>
            </div>
        </div>
    </div>
    <asp:HiddenField ID="HiddenField1" runat="server" Value="1"  />
    <asp:HiddenField ID="HiddenField2" runat="server" Value="2"  />
    <asp:HiddenField ID="HiddenField3" runat="server" Value="3"  />
    <asp:HiddenField ID="HiddenField4" runat="server" Value="4"  />
    <asp:HiddenField ID="HiddenField5" runat="server" Value="5"  />
</asp:Content>
