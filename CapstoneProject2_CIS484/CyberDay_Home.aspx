﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/CyberDaySite1.Master" AutoEventWireup="true" CodeBehind="CyberDay_Home.aspx.cs" Inherits="CapstoneProject2_CIS484.CyberDay_Home" enableEventValidation="false" %>
<asp:Content ID="HomepageContent" ContentPlaceHolderID="HomePlaceHolder" runat="server">

 
    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }

        var acc = document.getElementsByClassName("accordion");
        var i;

        for (i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function () {
                /* Toggle between adding and removing the "active" class,
                to highlight the button that controls the panel */
                this.classList.toggle("active");

                /* Toggle between hiding and showing the active panel */
                var panel = this.nextElementSibling;
                if (panel.style.display === "block") {
                    panel.style.display = "none";
                } else {
                    panel.style.display = "block";
                }
            });
        }
    </script>
    <div class="container" style="width: 100%; margin-left: 20px; margin-top: 20px; margin-right: 20px;">
        <div class="form-group">
            <h2 style="text-align: center" >Welcome to Cyber Day 2021</h2>
             <asp:Table runat="server" CellPadding="2" CssClass="m-5 p-5">
                <asp:TableRow RowSpan="2">
                    <asp:TableCell>
                        <asp:Label ID="lblAccessCode" runat="server" Text="Please enter your Event/Class code: " Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <asp:TextBox ID="txtAccessCodeEntry" BorderStyle="Double" runat="server" Width="100" MaxLength="300" ></asp:TextBox>
                    <asp:TableCell>
                        <asp:Button ID="btnAccessCodeEntry" runat="server" Text="Confirm" CausesValidation="false" UseSubmitBehavior="false" OnClick="btnAccessCodeEntry_Click" Width="100" />
                        <p>(Please navigate to the "USER" tab on the navigation pain after selecting CONFIRM to view more information)</p>
                    </asp:TableCell>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="lblAccessCodeStatus" runat="server" Text=""></asp:Label>
                     </asp:TableCell>
                 </asp:TableRow>
            </asp:Table>
        </div>
            <div class="slideshow-container">
                <div class="mySlides fade">
                    <div class="numbertext">1 / 4</div>
                    <img src="./images/Picture2.jpg" style="width: 100%">
                    <div class="text">Share your excitement in the field of computer information systems and cultivate the interests of young people in future business/technology related careers</div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">2 / 4</div>
                    <img src="./images/Picture1.jpg" style="width: 100%">
                    <div class="text">You will learn to develop advanced competencies and diagnostic skills to correct software problems</div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">3 / 4</div>
                    <img src="./images/Picture3.jpg" style="width: 100%">
                    <div class="text">Learning, fun and interative</div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">4 / 4</div>
                    <img src="./images/Picture4.jpg" style="width: 100%">
                    <div class="text">Get hands on experience</div>
                </div>

                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <br>
            <div style="text-align: center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
                <span class="dot" onclick="currentSlide(4)"></span>
            </div>
           <%-- <asp:Table runat="server" CellPadding="2" CssClass="m-5 p-5">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAccessCode" runat="server" Text="Have an EventCode or ClassCode? Enter Here!"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <br />
                        <asp:TextBox ID="txtAccessCodeEntry" BorderStyle="Double" runat="server" Width="100" MaxLength="300" ></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label8" runat="server" Text="When you submit, Click on the User Tab Above!"></asp:Label>
                        <asp:Label ID="lblAccessCodeStatus" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button ID="btnAccessCodeEntry" runat="server" Text="Confirm" CausesValidation="false" UseSubmitBehavior="false" OnClick="btnAccessCodeEntry_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>--%>
        <br />
        <br />
        <iframe width="560" height="315" src="https://www.youtube.com/embed/Ics5sqhAVm8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen"></iframe>
        <br />
        <br />
        <div id="accordion-div">
            <h3>FAQ</h3>
            <button type="button" class="accordion">Who signs up the students?</button>
            <div class="panel">
                <p class="answer">Teachers/Admins will send information out to the parents, Parents can then sign  their kid's up for Cyber Day</p>
            </div>

            <button type="button" class="accordion">What does Cyberday consist of?</button>
            <div class="panel">
                <p class="answer">Computer programming activities, Team building exercises, and Lunch</p>
            </div>

            <button type="button" class="accordion">What age is this event catered for?</button>
            <div class="panel">
                <p class="answer">This event typically caters to Middle Schoolers aged 10-12</p>
            </div>    
        </div>
    </div>
    <style>
        * {
            box-sizing: border-box
        }

        body {
            font-family: Verdana, sans-serif;
            margin: 0
        }

        .mySlides {
            display: none
        }

        img {
            vertical-align: middle;
        }

        /* Slideshow container */
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin-top: 50px !important;
            margin: auto;
        }

        /* Next & previous buttons */
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -22px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }

        /* Position the "next button" to the right */
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

            /* On hover, add a black background color with a little bit see-through */
            .prev:hover, .next:hover {
                background-color: rgba(0,0,0,0.8);
            }

        /* Caption text */
        .text {
            color: #f2f2f2;
            background-color: black;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            cursor: pointer;
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

            .active, .dot:hover {
                background-color: #717171;
            }

        /* Fading animation */
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
            animation-fill-mode: forwards;
        }

        @-webkit-keyframes fade {
            from {
                opacity: .4
            }

            to {
                opacity: 1
            }
        }

        @keyframes fade {
            from {
                opacity: .4
            }

            to {
                opacity: 1
            }
        }

        /* Style the buttons that are used to open and close the accordion panel */
        .accordion {
            background-color: #eee;
            color: #444;
            cursor: pointer;
            padding: 18px;
            width: 100%;
            text-align: left;
            border: none;
            outline: none;
            transition: 0.4s;
        }

            /* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
            .active, .accordion:hover {
                background-color: #ccc;
            }

        /* Style the accordion panel. Note: hidden by default */
        .panel {
            padding: 0 18px;
            background-color: white;
            display: none;
            overflow: hidden;
        }

        .answer {
            margin: 20px;
            height: 100%;
        }
    </style>
    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }

        var acc = document.getElementsByClassName("accordion");
        var i;

        for (i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function () {
                /* Toggle between adding and removing the "active" class,
                to highlight the button that controls the panel */
                this.classList.toggle("active");

                /* Toggle between hiding and showing the active panel */
                var panel = this.nextElementSibling;
                if (panel.style.display === "block") {
                    panel.style.display = "none";
                } else {
                    panel.style.display = "block";
                }
            });
        }
    </script>
</asp:Content>

<asp:Content ID="Content99" ContentPlaceHolderID="Eventsignup" runat="server">
    <fieldset>
        <legend>Create an Event:</legend>
    <div class="panel">
                <div class="answer">
                    <div class="form-group">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <div style="margin-top: 40px;">
                                    <div class="row">
                                        <div class="col">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                                                ControlToValidate="ContactRequestNameText"
                                                ValidationGroup="ContactRequestInput"
                                                ErrorMessage="Enter the contact name!"
                                                runat="Server" />
                                            <div class="form-group">
                                                <asp:Label ID="ContactRequestNameLabel" CssClass="label" runat="server" Text="Contact Name:"></asp:Label>
                                                <asp:TextBox CssClass="input--style-4" ValidationGroup="ContactRequestInput" ID="ContactRequestNameText" runat="server" required="false" />
                                            </div>
                                        </div>
                                        <div class="col">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9"
                                                ControlToValidate="ContactRequestOrganizationNameText"
                                                ValidationGroup="ContactRequestInput"
                                                ErrorMessage="Enter the school/organization!"
                                                runat="Server" />
                                            <div class="form-group">
                                                <asp:Label ID="Label3" CssClass="label" runat="server" Text="School/Organization Name:"></asp:Label>
                                                <asp:TextBox CssClass="input--style-4" ValidationGroup="ContactRequestInput" ID="ContactRequestOrganizationNameText" runat="server" required="false" />
                                            </div>
                                        </div>
                                        <br />
                                        <div class="col">
                                            <div class="form-group">
                                                <asp:Label ID="Label5" CssClass="label" runat="server" Text="Organization Type:"></asp:Label>
                                                <asp:DropDownList
                                                    ID="OrganizationTypeList"
                                                    runat="server"
                                                    CssClass="js-example-basic-single">
                                                    <asp:ListItem Value="School" Selected="True" Text="School" />
                                                    <asp:ListItem Value="HomeSchool" Text="Home School Co-Op" />
                                                    <asp:ListItem Value="AfterSchoolOrg" Text="After School Program" />
                                                    <asp:ListItem Value="Other" Text="Other" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10"
                                                ControlToValidate="EventNameRequest"
                                                ValidationGroup="ContactRequestInput"
                                                ErrorMessage="Enter an Event Name!"
                                                runat="Server" />
                                            <div class="form-group">
                                                <asp:Label ID="Label4" CssClass="label" runat="server" Text="Event Name:"></asp:Label>
                                                <asp:TextBox CssClass="input--style-4" ValidationGroup="ContactRequestInput" ID="EventNameRequest" runat="server" required="false" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="w-100"></div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label1" CssClass="label" runat="server" Text="Please select a date for the event:"></asp:Label>
                                        <asp:Calendar ID="EventRequestDate" OnSelectionChanged="EventRequestDate_SelectionChanged" runat="server"></asp:Calendar>
                                    </div>

                                    <!--Button options for Submit, Commit Populate and Reset Distinguishable-->
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm text-left">
                                                <asp:Button ID="SubmitButton" runat="server" ValidationGroup="ContactRequestInput" OnClick="SubmitButton_Click1" Text="Create Event" UseSubmitBehavior="true" Style="margin-left: 0%;" CssClass="btn btn-primary" />
                                            </div>
                                            <div class="col-sm text-center">
                                                <asp:Button ID="ResetButton" runat="server" OnClick="ResetButton_Click" ValidationGroup="ContactRequestInput" CausesValidation="False" Text="Reset" UseSubmitBehavior="False" CssClass="btn btn-danger" />
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Label ID="lblSuccess_EventCreation" runat="server" Text="Success. The event has been created!" Visible="false" Font-Bold="true"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
  </fieldset>
</asp:Content>

<%--<asp:Content ID="Content8" ContentPlaceHolderID="CoordinatorSubmissionViewPlaceholder" runat="server">
    <div class="form-group">

                <asp:GridView ID="ContactSubmissionGrid"
                    AutoGenerateColumns="true" OnRowDataBound="ContactSubmissionGrid_RowDataBound" OnSelectedIndexChanged="ContactSubmissionGrid_SelectedIndexChanged"
                    runat="server">

                    <HeaderStyle BackColor="#989898" ForeColor="white" />
                </asp:GridView>

        <asp:UpdatePanel ID="RequestListDDLUpdate" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:SqlDataSource runat="server"
                    ID="RequestListDataSource"
                    DataSourceMode="DataReader"
                    ConnectionString="<%$ ConnectionStrings:CyberCityDB%>"
                    SelectCommand="SELECT RequestID, ContactName FROM ContactRequest" />

                <asp:Button runat="server" ID="AddEvent" OnClick="addEvent_Click" Text="Approve" CausesValidation="False" UseSubmitBehavior="true" />
                <asp:Button runat="server" ID="DeleteEvent" OnClick="DeleteEvent_OnClickEvent_Click" Text="Delete" CausesValidation="False" UseSubmitBehavior="False" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>--%>
<asp:Content ID="EventInfo" ContentPlaceHolderID="EventInfoPlaceHolder" runat="server">
    <fieldset>
        <br />
        <legend>Event list:</legend>
    <div style="margin-top: 40px;">
        <div class="container-fluid">
            <div class="grid">
                <div class="grid-item grid-item--width3 grid-item--height3" style="height: 100%">
                    <div class="form-group">
<%--                        <asp:UpdatePanel ID="EventRefreshPanel" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>--%>
                        <asp:Label ID="Label6" CssClass="label" runat="server" Text="Event"></asp:Label>

                        <asp:SqlDataSource ID="EventdisplayDb" runat="server"
                            DataSourceMode="DataReader"
                            ConnectionString="<%$ ConnectionStrings:CyberCityDB%>"
                            SelectCommand="SELECT E.EventID, E.Name as 'Event Name', Date, O.Name as 'Organization Name', Type, ContactName as 'Contact Name', E.EventCode as 'Event Code' from Event E inner join Organization O on E.EventCode = O.EventCode Order by E.EventID ASC" />
                        <asp:GridView runat="server" ID="GvEventdisplay" DataSourceID="EventdisplayDb" OnRowDataBound="GvEventdisplay_RowDataBound" OnSelectedIndexChanged="GvEventdisplay_SelectedIndexChanged">
                            <HeaderStyle BackColor="#989898" ForeColor="white" />
                        </asp:GridView>
<%--                        </ContentTemplate>
                        </asp:UpdatePanel>--%>
                    </div>
                </div>

                <div class="grid-item grid-item--width2 grid-item--height2">
                    <h4>Volunteers: </h4>
                    <asp:Repeater ID="VolunteerRepeater" runat="server">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td><%# Container.DataItem %></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                    <!-- Repeater Displays all Instructors-->
                    <h4>Instructor: </h4>
                    <asp:Repeater ID="InstructorRepeater" runat="server">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td><%# Container.DataItem %></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="grid-item grid-item--width2 grid-item--height2 ">
                    <div class="form-group">
                        <asp:Label ID="Label9" CssClass="label" runat="server" Text="Students Attending Event"></asp:Label>
                        <asp:ListBox ID="StudentListBox" CssClass="custom-select" runat="server"></asp:ListBox>
                    </div>
                </div>

                <%--                <div class="grid-item">
                    <div class="form-group">
                        <!--Student Dropdown allows for profile data viewing-->
                        <asp:Label ID="StudentNameLabel" CssClass="label" runat="server" Text="Student Name"></asp:Label>
                        <asp:SqlDataSource runat="server"
                            ID="StudentNameDataSource"
                            DataSourceMode="DataReader"
                            ConnectionString="<%$ ConnectionStrings:dbconnection%>"
                            SelectCommand="SELECT StudentID, TRIM(FirstName +' ' + LastName) as StudentName FROM Student" />
                        <asp:DropDownList ID="StudentNameDDL"
                            DataSourceID="StudentNameDataSource"
                            DataTextField="StudentName"
                            DataValueField="StudentID"
                            AutoPostBack="true"
                            OnSelectedIndexChanged="StudentNameDDL_SelectedIndexChanged"
                            runat="server"
                            Width="100%"
                            CssClass="js-example-basic-single" />
                    </div>
                </div>
                <div class="grid-item grid-item--height2 grid-item--width2" style="align-items: flex-end">
                    <div class="form-group">
                        <table class="table table-bordered table-striped" style="margin-left: 5px">
                            <tr>
                                <td>Name:    </td>
                                <td>
                                    <asp:Label ID="StudentNameData" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Age: </td>
                                <td>
                                    <asp:DropDownList
                                        ID="StudentAgeEdit"
                                        runat="server"
                                        CssClass="js-example-basic-single"
                                        Width="50%">
                                        <asp:ListItem Value="6" />
                                        <asp:ListItem Value="7" />
                                        <asp:ListItem Value="8" />
                                        <asp:ListItem Value="9" />
                                        <asp:ListItem Value="10" />
                                        <asp:ListItem Value="11" />
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td>Notes: </td>
                                <td>
                                    <asp:TextBox ID="StudentNotesData" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>School: </td>
                                <td>
                                    <asp:Label ID="StudentSchoolData" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Teacher: </td>
                                <td>
                                    <asp:Label ID="StudentTeacherData" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Tshirt Color: </td>
                                <td>
                                    <asp:DropDownList
                                        ID="StudentColorEdit"
                                        runat="server"
                                        CssClass="js-example-basic-single"
                                        Width="50%">
                                        <asp:ListItem Value="Green" />
                                        <asp:ListItem Value="Blue" />
                                        <asp:ListItem Value="Red" />
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td>Tshirt Size: </td>
                                <td>
                                    <asp:DropDownList
                                        ID="StudentSizeEdit"
                                        runat="server"
                                        CssClass="js-example-basic-single"
                                        Width="50%">
                                        <asp:ListItem Value="Small" />
                                        <asp:ListItem Value="Medium" />
                                        <asp:ListItem Value="Large" />
                                    </asp:DropDownList></td>
                            </tr>
                        </table>
                        <asp:FormView ID="StudentFormView" runat="server">
                            <ItemTemplate>
                                <table class="table table-bordered table-striped" style="margin-left: 5px">
                                    <tr>
                                        <td>Student Name:    </td>
                                        <td><%#Eval("StudentName") %></td>
                                    </tr>
                                    <tr>
                                        <td>Age: </td>
                                        <td><%#Eval("Age") %></td>
                                    </tr>
                                    <tr>
                                        <td>Notes: </td>
                                        <td><%#Eval("Notes") %></td>
                                    </tr>
                                    <tr>
                                        <td>School: </td>
                                        <td><%#Eval("SchoolName") %></td>
                                    </tr>
                                    <tr>
                                        <td>Teacher: </td>
                                        <td><%#Eval("TeacherName") %></td>
                                    </tr>
                                    <tr>
                                        <td>Tshirt Color: </td>
                                        <td><%#Eval("Color") %></td>
                                    </tr>
                                    <tr>
                                        <td>Tshirt Size: </td>
                                        <td><%#Eval("Size") %></td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                </div>

                <div class="grid-item">
                    <asp:Button ID="StudentUpdateButton" runat="server" OnClick="StudentUpdateButton_Click" Style="padding-top: 0%; padding-bottom: 0%;" CssClass="btn btn-primary btn-sm" Text="Update" />
                </div>--%>
            </div>
        </div>
    </div>
    </fieldset>
</asp:Content>

<%--<asp:Content ID="AddInstructor" ContentPlaceHolderID="AddInstructorView" runat="server">
        <asp:UpdatePanel ID="UP98" runat="server">
            <ContentTemplate>
                <div class="row">
                    <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblInstructor_SchOrg1" CssClass="label" runat="server" Text="School/Organization: " Font-Bold="true"></asp:Label>
                                <asp:Label ID="DisplaySchool1" CssClass="label" runat="server" Text="PLACE SCHOOL/ORGANIZATION HERE"></asp:Label>
                            </div>
                    </div>
                     <div class="w-100"></div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblInstructor_FirstName1" CssClass="label" runat="server" Text="First Name"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="Instructor_tbFirstName1" runat="server" required="true" />
                            </div>
                             <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblInstructor_LastName1" CssClass="label" runat="server" Text="Last Name"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="Instructor_tbLastName1" runat="server" required="true" ValidateRequestMode="Inherit" />
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblInstructor_Email1" CssClass="label" runat="server" Text="Email Address"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="Instructor_tbEmail1" runat="server" required="true" />
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblInstructor_Phone1" CssClass="label" runat="server" Text="Phone Number"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="Instructor_tbPhone1" runat="server" required="true" ValidateRequestMode="Inherit" />
                            </div>
                        </div>
                        </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>--%>

<asp:Content ID="EventContactAddInstructorView" ContentPlaceHolderID="EventContactAddInstructorView" runat="server">
    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
            <ContentTemplate>
                <div style="margin-top: 40px;">
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblInstructor_SchOrg" CssClass="label" runat="server" Text="Select School/Organization:" Font-Bold="true"></asp:Label>
                                <asp:SqlDataSource ID="Orgview1" runat="server" DataSourceMode="DataReader" ConnectionString="<%$ ConnectionStrings:CyberCityDB%>"
                                     SelectCommand="select * from Organization"></asp:SqlDataSource>
                                <asp:DropDownList runat="server" ID="ddlOrgview"
                                     DataSourceID="Orgview1" DataTextField="Name" DataValueField="OrganizationID" AutoPostBack="true"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col">
                        <div class="form-group">
                        <asp:Label ID="InstEvent" CssClass="label" runat="server" Text="Select an Event:" Font-Bold="true"></asp:Label>
                        <asp:SqlDataSource runat="server" ID="Eventview1" DataSourceMode="DataReader" ConnectionString="<%$ ConnectionStrings:CyberCityDB%>" 
                            SelectCommand="select * from Event"></asp:SqlDataSource>

                        <asp:DropDownList runat="server" ID="EventView" 
                            DataSourceID="Eventview1" 
                            DataTextField="Name" 
                            DataValueField="EventID" 
                            AutoPostBack="true" ></asp:DropDownList>
                         </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblInstructor_FirstName" CssClass="label" runat="server" Text="Instructor's First Name:"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="Instructor_tbFirstName" runat="server" />
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblInstructor_LastName" CssClass="label" runat="server" Text="Instructor's Last Name:"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="Instructor_tbLastName" runat="server" ValidateRequestMode="Inherit" />
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblInstructor_Email" CssClass="label" runat="server" Text="Instructor's Email Address"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="Instructor_tbEmail" runat="server"/>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblInstructor_Phone" CssClass="label" runat="server" Text="Instructor's Phone Number"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="Instructor_tbPhone" runat="server" ValidateRequestMode="Inherit" />
                            </div>
                        </div>
                        <div class="w-100"></div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm text-left">
                            <asp:Button ID="Button1" runat="server" OnClick="SubmitButton_Click" Text="Create Instructor" Style="margin-left: 0%;" CssClass="btn btn-primary" CausesValidation="false" />
                        </div>
                        <div class="col-sm text-center">
                            <asp:Button ID="Instructor_ResetButton" OnClick="Instructor_ResetButton_Click" runat="server" ValidationGroup="StudentInput" CausesValidation="False" Text="Reset" UseSubmitBehavior="False" CssClass="btn btn-danger" />
                        </div>
                    </div>
                </div>
                <asp:Label ID="lblSucesss_InstructorCreation" runat="server" Text="Success. The instructor has been created!" Font-Bold="true" Visible="false"></asp:Label>
                </fieldset>
                <div class="col" />
                <fieldset>
                    <legend>View all registered instructors:</legend>
                    <asp:GridView
                        runat="server"
                        ID="Instructor_GridView"
                        DataSourceID="sqlsrcInstructor">
                    </asp:GridView>
                </fieldset>
                <asp:SqlDataSource
                    runat="server"
                    ID="sqlsrcInstructor"
                    DataSourceMode="DataReader"
                    ConnectionString="<%$ConnectionStrings:CyberCityDB%>"
                    SelectCommand="Select * from Instructor" />
                </br> 
                <fieldset>
                    <legend>Create a Volunteer:</legend>
                    <div style="margin-top: 40px;">
                        <div class="row">
                        <div class="col">
                        <div class="form-group">
                        <asp:Label ID="lblVolSelect" CssClass="label" runat="server" Text="Select an event:" Font-Bold="true"></asp:Label>
                        <asp:SqlDataSource runat="server" ID="eventview2" DataSourceMode="DataReader" ConnectionString="<%$ ConnectionStrings:CyberCityDB%>" 
                            SelectCommand="select * from Event"></asp:SqlDataSource>
                        <asp:DropDownList runat="server" ID="ddleventv" 
                            DataSourceID="eventview2" 
                            DataTextField="Name" 
                            DataValueField="EventID" 
                            AutoPostBack="true" ></asp:DropDownList>
                         </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblVolName" CssClass="label" runat="server" Text="Volunteer Name:"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="Vname1" runat="server"/>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="Label18" CssClass="label" runat="server" Text="Volunteer's Role (Chaperone/JMU Student/Other):"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="Role" runat="server" ValidateRequestMode="Inherit" />
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="Label19" CssClass="label" runat="server" Text="Volunteer's Email:"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="vemail1" runat="server" />
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="Label20" CssClass="label" runat="server" Text="Volunteer's Phone Number:"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="Vphone1" runat="server" ValidateRequestMode="Inherit" />
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="Label21" CssClass="label" runat="server" Text="Sign up for Meal Ticket? (input Y/N):"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="MealTicket" runat="server" ValidateRequestMode="Inherit" />
                            </div>
                        </div>
                        <div class="w-100"></div>
                    </div>

                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm text-left">
                            <asp:Button ID="SBVolunteer" runat="server" OnClick="SBVolunteer_Click" Text="Create Volunteer" Style="margin-left: 0%;" CssClass="btn btn-primary" />
                        </div>
                        <div class="col-sm text-right">
                            <asp:Button ID="RBVoluntter" OnClick="RBVoluntter_Click" runat="server" ValidationGroup="StudentInput" CausesValidation="False" Text="Reset" UseSubmitBehavior="False" CssClass="btn btn-danger" />
                        </div>
                    </div>
                </div>
                    <asp:Label ID="lblSucesss_VolunteerCreation" runat="server" Text="Sucesss. The volunteer has been created!" Font-Bold="true" Visible="false"></asp:Label>
                </fieldset>
                <div class="col" />
                <fieldset>
                    <legend>View all registered volunteers:</legend>
                    <asp:GridView
                        runat="server"
                        ID="VVolunteer1"
                        DataSourceID="Vvolunteer2">
                    </asp:GridView>
                </fieldset>
                <asp:SqlDataSource
                    runat="server"
                    ID="Vvolunteer2"
                    DataSourceMode="DataReader"
                    ConnectionString="<%$ ConnectionStrings:CyberCityDB%>"
                    SelectCommand="select V.Name, Role, Phone, Email, Phone, MealTicket,
                    T.Name, E.EventCode from Volunteer V inner join EventVolunteers E on V.VolunteerCode = E.VolunteerCode inner join Event T 
                    on E.EventCode = T.EventCode;"/>
            </fieldset> 
            </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>

<%--<asp:Content ID="Addvolunteer" runat="server"  ContentPlaceHolderID="Volunteeradd" >
          
</asp:Content>--%>





<asp:Content ID="VolunteerView" ContentPlaceHolderID="VolunteerView" runat="server">
    <div runat="server" id="VolDiv" style="margin-top: 40px; display: none" visible="true">
        <div class="form-group">
            <asp:Table runat="server" CellPadding="2" CssClass="m-5 p-5">
                <asp:TableRow>
                    <asp:TableCell>
                        <h2 style="text-align: center">Welcome:<asp:Label ID="lblVolunteerName" runat="server" Text="VOLUNTEER NAME HERE"></asp:Label></h2>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div class="form-group">
            <asp:Table runat="server" CellPadding="2" CssClass="m-5 p-5" Border="1">
                <asp:TableRow>
                    <asp:TableCell>
                        <h6 style="        text-align: left">The Event selected to participate:</h6>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblName" runat="server" Text="EVENT NAME HERE"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEventDate" runat="server" Text="Date:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblDate" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblCoordinator" runat="server" Text="Coordinator:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblCoordinatorName" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div class="form-group">
            <asp:Table runat="server" CellPadding="2" CssClass="m-5 p-5">
                <asp:TableRow>
                    <asp:TableCell RowSpan="2">
                            <h4>Volunteer Information</h4>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblVolunteerName2" runat="server" Text="Name: "></asp:Label>
                        <asp:Label ID="lblName2" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblVolunteerRole" runat="server" Text="Role:"></asp:Label>
                        <asp:Label ID="lblRole" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblOrganizationID" runat="server" Text="Organization ID:"></asp:Label>
                        <asp:Label ID="lblID" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblVolunteerPhone" runat="server" Text="Phone:"></asp:Label>
                        <asp:Label ID="lblVolunteerP" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblVolunteerEmail" runat="server" Text="Email:"></asp:Label>
                        <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell RowSpan="2">
                    <h2 style="text-align: center">Save The Date:
                        <asp:Label ID="lblEventDate2" runat="server" Text=""></asp:Label></h2>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>
<asp:Content ID="InstructorView" ContentPlaceHolderID="InstructorView" runat="server">
    <div runat="server" id="InstDiv" style="margin-top: 40px;" visible="false">
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell RowSpan="1">
                    <asp:Label ID="lblWelcomeEventPage" runat="server" Text="Welcome!" Font-Size="XX-Large"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow RowSpan="2">
                <asp:TableCell>
                    <fieldset>
                        <legend><b>Event Information:</b></legend>
                        <asp:GridView
                            runat="server"
                            ID="grdviewEventInfo"
                            DataSourceID="sqlsrcEventInfo">
                        </asp:GridView>
                    </fieldset>
                </asp:TableCell>
                <asp:TableCell>
                    <fieldset>
                        <legend><b>Event Activities:</b></legend>
                        <asp:GridView
                            runat="server"
                            ID="GridView1"
                            DataSourceID="sqlsrcEventActivities">
                        </asp:GridView>
                    </fieldset>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <br />
                    <br />
                    <asp:Label ID="lblEnterAccessCode" runat="server" Text="Please enter your instructor/student/volunteer code:" Font-Size="Larger" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="tbAccessCode" ValidationGroup="StudentInput" runat="server" CssClass="input--style-4" required="true"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button runat="server" Text="SUBMIT" ID="btnSubmitCode" OnClick="btnSubmitCode_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ID="instructorviewandedit" Visible="false">
                    <fieldset>
                        <legend>Update your personal information below:</legend>
                        <asp:UpdatePanel ID="UpdatePanelInstructorView" runat="server">
                        <ContentTemplate>
                            <div style="margin-top: 40px;">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Label ID="lblOrganization" CssClass="label" runat="server" Text="School/Organization: " Font-Bold="true"></asp:Label>
                                            <asp:Label ID="lblOrganization_Show" CssClass="label" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Label ID="lblName_Instructor" CssClass="label" runat="server" Text="Name"></asp:Label>
                                            <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="tbName_Instructor" runat="server" required="true" />
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Label ID="lblEmail_Instructor" CssClass="label" runat="server" Text="Email Address"></asp:Label>
                                            <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="tbEmail_Instructor" runat="server" required="true" />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Label ID="lblPhone_Instructor" CssClass="label" runat="server" Text="Phone Number"></asp:Label>
                                            <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="tbPhone_Instructor" runat="server" required="true" ValidateRequestMode="Inherit" />
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                </div>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm text-center">
                                        <asp:Button ID="btnUpdateInstructorInfo" runat="server" Text="Update Info" Style="margin-left: 0%;" CssClass="btn btn-primary" OnClick="btnUpdateInstructorInfo_Click" />
                                        <asp:Label ID="lblSuccessPopup" runat="server" Text="Your information has been successfuly updated!" Font-Bold="true" Font-Size="Large"  Visible="false"/>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    </fieldset>
                </asp:TableCell>
                <asp:TableCell ID="VolunteerViewInfo" Visible="false">
                    <fieldset>
                        <legend>Update your personal information below:</legend>
            <asp:UpdatePanel ID="UpdatePanelVolunteerView" runat="server">
                        <ContentTemplate>
                            <div style="margin-top: 40px;">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Label ID="lblName_Volunteer" CssClass="label" runat="server" Text="Name"></asp:Label>
                                            <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="tbName_Volunteer" runat="server" required="true" />
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Label ID="lblEmail_Volunteer" CssClass="label" runat="server" Text="Email Address"></asp:Label>
                                            <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="tbEmail_Volunteer" runat="server" required="true" />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Label ID="lblPhone_Volunteer" CssClass="label" runat="server" Text="Phone Number"></asp:Label>
                                            <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="tbPhone_Volunteer" runat="server" required="true" ValidateRequestMode="Inherit" />
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                </div>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm text-center">
                                        <asp:Button ID="btnUpdateVolunteerInfo" runat="server" Text="Update Info" Style="margin-left: 0%;" CssClass="btn btn-primary" OnClick="btnUpdateVolunteerInfo_Click" />
                                        <asp:Label ID="Label16" runat="server" Text="Your information has been successfuly updated!" Font-Bold="true" Font-Size="Large"  Visible="false"/>

                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    </fieldset>
                    
                </asp:TableCell>
                <asp:TableCell ID="ParentRegisterAndAttach" Visible="false">
                    <fieldset> 
                        <legend>Update your personal information below:</legend>
                        <asp:UpdatePanel ID="UpdatePanelParent" runat="server">
                        <ContentTemplate>
                            <div style="margin-top: 40px;">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Label ID="lblName_Student" CssClass="label" runat="server" Text="Name:"></asp:Label>
                                            <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="tbName_Student" runat="server" required="true" ValidateRequestMode="Inherit" />
                                        </div>
                                    </div>
                                    <div class="w-100"></div>

                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Label ID="lblNotes_Student" CssClass="label" runat="server" Text="Notes"></asp:Label>
                                            <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="tbNotes_Student" runat="server" required="true" ValidateRequestMode="Inherit" />
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Label ID="lblAge_Student" CssClass="label" runat="server" Text="Age"></asp:Label>
                                            <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="tbAge_Student" runat="server" required="true" ValidateRequestMode="Inherit" />
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Label ID="lblShirtSize_Student" CssClass="label" runat="server" Text="T-Shirt Size"></asp:Label>
                                            <asp:DropDownList
                                                ID="ddlShirtSize_Student"
                                                runat="server"
                                                CssClass="js-example-basic-single"
                                                Width="50%">
                                                <asp:ListItem Value="Small" />
                                                <asp:ListItem Value="Medium" />
                                                <asp:ListItem Value="Large" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Label ID="lblMeal_Student" CssClass="label" runat="server" Text="Would you like to sign up for Lunch?"></asp:Label>
                                            <asp:RadioButton ID="rbtnMeal_Yes" runat="server" Text="Yes" />
                                            <asp:RadioButton ID="rbtnMeal_No" runat="server" Text="No" />
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                </div>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm text-left">
                                        <asp:Button ID="btnUpdateStudent" runat="server" OnClick="btnUpdateStudent_Click" Text="Update Info" Style="margin-left: 0%;" CssClass="btn btn-primary" />
                                        <asp:Label ID="Label17" runat="server" Text="Your information has been successfuly updated!" Font-Bold="true" Font-Size="Large"  Visible="false"/>

                                    </div>
                                    <div class="col-sm text-right">
                                        <asp:Button ID="btnClearStudent" runat="server" OnClick="btnClearStudent_Click" ValidationGroup="StudentInput" CausesValidation="False" Text="Reset" UseSubmitBehavior="False" CssClass="btn btn-danger" />
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    </fieldset>
                    
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:SqlDataSource
            ID="sqlsrcEventInfo"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:CyberCityDB%>"
            SelectCommand=""></asp:SqlDataSource>
        <asp:SqlDataSource
            ID="sqlsrcEventActivities"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:CyberCityDB%>"
            SelectCommand=""></asp:SqlDataSource>
        <asp:SqlDataSource
            ID="sqlsrcViewStudents"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:CyberCityDB%>"
            SelectCommand="SELECT Name, Age, Notes, MealTicket as 'Meal Ticket Confirmation' from STUDENT"></asp:SqlDataSource>


        <%--        <asp:DetailsView ID="InstructorAccessCodeDetailView"
            DataSourceID="InstructorAccessCodeDataSource" AutoGenerateRows="true"
            Height="50px" Width="125px"
            EmptyDataText="Invalid Instructor"
            GridLines="Both"
            runat="server">

            <HeaderStyle BackColor="Navy" ForeColor="White" />
            <RowStyle BackColor="White" />
            <AlternatingRowStyle BackColor="LightGray" />
            <EditRowStyle BackColor="LightCyan" />
        </asp:DetailsView>--%>

        <%-- <asp:ListView runat="server" ID="InstructorAccessCodeListView"
        DataSourceID="StudentDataSource"
        DataKeyNames="STUDENTCODE">
        <LayoutTemplate>
          <div runat="server" id="lstStudent">
            <div runat="server" id="itemPlaceholder" />
          </div>
          <asp:DataPager runat="server" PageSize="5">
          </asp:DataPager>
        </LayoutTemplate>
        <ItemTemplate>
          <div class="plainBox" runat="server">
            <b>StudentID:</b>
            <asp:Label ID="lblStudentID" runat="server" Text='<%# Eval("STUDENTCODE")%>' /> <br />
          </div>
          <div class="plainBox" runat="server">
            <b>Name:</b>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name")%>' /> <br />
          </div>
          <div class="plainBox" runat="server">
            <b>Organization ID:</b>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("organizationID")%>' /> <br />
          </div>
        </ItemTemplate>
      </asp:ListView>--%>
        <%--FILE UPLOAD-------------------------------------------------------------------------------------------------------%>
        <h3>Please Upload Necessary Documents Here (ex: Photo Waiver)</h3>
        <div>
            <table>
                <tr>
                    <td>Select File : </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                    <td>
                        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" /></td>
                </tr>
            </table>
            <br />
            <div>
                <%-- Add a Datalist for show uploaded files --%>
                <asp:DataList ID="FileList" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="FileList_ItemCommand">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td><%#Eval("FileName","File Name : {0}") %></td>
                            </tr>
                            <tr>
                                <td><%#String.Format("{0:0.00}",Convert.ToDecimal(Eval("FileSize"))/1024)%> KB</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lbtnDownload" runat="server" CommandName="Download" CommandArgument='<%#Eval("FileID") %>'>Download</asp:LinkButton></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
        <%--END OF FILE UPLOAD--------------------------------------------------------------------------------%>

        <asp:SqlDataSource ID="StudentDataSource" runat="server"
            ConnectionString="<%$ ConnectionStrings:CyberCityDB %>"
            SelectCommand="">
            <SelectParameters>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

<asp:Content ID="CoordinatorNewContent" ContentPlaceHolderID="CoordinatorNewPlaceholder" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div style="margin-top: 40px;">
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <asp:Label ID="CoordinatorName" CssClass="label" runat="server" Text="Name"></asp:Label>
                            <asp:TextBox CssClass="input--style-4" ID="CoordinatorNameText" runat="server" CausesValidation="false" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                ControlToValidate="CoordinatorNameText"
                                ValidationGroup="SignUpGroup"
                                ErrorMessage="Enter Name."
                                runat="Server">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="Email" CssClass="label" runat="server" Text="Email"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ID="EmailTextBox" runat="server" CausesValidation="false" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                                    ControlToValidate="EmailTextBox"
                                    ValidationGroup="SignUpGroup"
                                    ErrorMessage="Enter Email."
                                    runat="Server">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="Phone" CssClass="label" runat="server" Text="Phone"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ID="PhoneTextBox" runat="server" CausesValidation="false" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                    ControlToValidate="PhoneTextBox"
                                    ValidationGroup="SignUpGroup"
                                    ErrorMessage="Enter Phone."
                                    runat="Server">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="form-group">
                            <asp:Label ID="Username" CssClass="label" runat="server" Text="Username"></asp:Label>
                            <asp:TextBox CssClass="input--style-4" ID="UsernameTextBox" runat="server" CausesValidation="false" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                ControlToValidate="UsernameTextBox"
                                ValidationGroup="SignUpGroup"
                                ErrorMessage="Enter Username."
                                runat="Server">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <br />

                    <div class="row">
                        <div class="md-form form-sm mb-5">
                            <i class="fas fa-lock prefix"></i>
                            <asp:Label ID="Password" CssClass="label" runat="server" Text="Password" AssociatedControlID="modalLRInput13" />
                            <asp:TextBox CssClass="form-control form-control-sm validate" type="password" ID="modalLRInput13" CausesValidation="false" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                ControlToValidate="modalLRInput13"
                                ValidationGroup="SignUpGroup"
                                ErrorMessage="Enter Password."
                                runat="Server">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <!--Same button functions outside of commit in order to streamline process-->
                <div class="container">
                    <asp:Label ID="lblStatus" runat="server"></asp:Label>
                    <div class="row text-center form-sm">
                        <asp:Button ID="SubmitCoordinator" runat="server" OnClick="SubmitCoordinator_Click" ValidationGroup="SignUpGroup" Text="Submit" Style="margin-left: 0%;" CssClass="btn btn-info" />
                    </div>
                    <div class="row text-center form-sm">
                        <asp:Button ID="PopulateCoordinator" runat="server" OnClick="PopulateCoordinator_Click" CausesValidation="False" Text=" Fill " CssClass="btn btn-success" UseSubmitBehavior="False" />
                    </div>
                    <div class="row text-center form-sm">
                        <asp:Button ID="ResetCoordinator" runat="server" OnClick="ResetCoordinator_Click" CausesValidation="False" Text="Reset" UseSubmitBehavior="False" CssClass="btn btn-danger" />
                    </div>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

<asp:Content ID="StudentSignUp" ContentPlaceHolderID="StudentSignUp" runat="server">
    <div runat="server" id="StudentSignUpDiv" style="margin-top: 40px; display: none" visible="false">

        <asp:UpdatePanel ID="UpdatePanelStudentSignup" runat="server">
            <ContentTemplate>
                <div style="margin-top: 40px;">
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblOrganization_StudentSignup" CssClass="label" runat="server" Text="School/Organization: " Font-Bold="true"></asp:Label>
                                <asp:Label ID="lblOrganization_StudentSignup_Show" CssClass="label" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblName_StudentSignup" CssClass="label" runat="server" Text="Name:"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="tbName_StudentSignup" runat="server" required="true" />
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblNotes_StudentSignup" CssClass="label" runat="server" Text="Notes:"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="tbNotes_StudentSignup" runat="server" required="true" ValidateRequestMode="Inherit" />
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblAge_StudentSignup" CssClass="label" runat="server" Text="Age:"></asp:Label>
                                <asp:TextBox CssClass="input--style-4" ValidationGroup="StudentInput" ID="tbAge_StudentSignup" runat="server" required="true" ValidateRequestMode="Inherit" />                               
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblShirtSize_StudentSignup" CssClass="label" runat="server" Text="T-Shirt Size:"></asp:Label>
                                <asp:DropDownList
                                    ID="ddlStudentSize"
                                    runat="server"
                                    CssClass="js-example-basic-single"
                                    Width="50%">
                                    <asp:ListItem Value="Small" />
                                    <asp:ListItem Value="Medium" />
                                    <asp:ListItem Value="Large" />
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <asp:Label ID="lblMealTicket_StudentSignup" CssClass="label" runat="server" Text="Would you like to sign up for Lunch?"></asp:Label>
                                <asp:RadioButton ID="rbtnMeal_Yes_StudentSignup" runat="server" Text="Yes" />
                                <asp:RadioButton ID="rbtnMeal_No_StudentSignup" runat="server" Text="No" />
                            </div>
                        </div>
                        <div class="w-100"></div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm text-left">
                            <asp:Button ID="btnStudentSignUp" runat="server" OnClick="btnStudentSignUp_Click" Text ="Sign Up" Style="margin-left: 0%;" CssClass="btn btn-primary" />
                        </div>
                        <div class="col-sm text-right">
                            <asp:Button ID="btnStudentSignUpReset" runat="server" OnClick="btnStudentSignUpReset_Click" ValidationGroup="StudentInput" CausesValidation="False" Text="Reset" UseSubmitBehavior="False" CssClass="btn btn-danger" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <asp:Label ID="lblSucessStudentSignup" runat="server" Text="Success. Student is now signed up for Cyber Day!" Font-Bold="true" Visible="false"></asp:Label>
                        </div>
                    </div>
                    <div class="w-100"></div>
                </div>

                <%--<div class="col" />
            <fieldset>
                <legend>View Instructors</legend>
                <asp:GridView
                    runat="server"
                    ID="GridView1"
                    DataSourceID="sqlsrcInstructor">
                </asp:GridView>
            </fieldset>
            <asp:SqlDataSource
                runat="server"
                ID="SqlDataSource1"
                DataSourceMode="DataReader"
                ConnectionString="<%$ ConnectionStrings:CyberCityDB%>"
                SelectCommand="" />--%>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
<asp:Content ID="StudentPage" ContentPlaceHolderID="StudentPage" runat="server">
    <div runat="server" id="StudentPageDiv" style="margin-top: 40px; display: none" visible="false">
        <script type="text/javascript">
            $(document).ready(function () {
                $(".js-example-basic-single").select2();
            });
        </script>
        <div style="margin-top: 40px;">
            <div class="container-fluid">
                <div class="grid">
                    <div class="grid-item grid-item--width2 grid-item--height3">
                        <!-- Info Display -->
                        <table class="table table-bordered table-striped" style="margin-left: 5px">
                            <tr>
                                <td>Student Code:    </td>
                                <td>
                                    <asp:Label ID="Student_lblStudentCode" runat="server"></asp:Label>
                            </tr>
                            <tr>
                                <td>Name:   </td>
                                <td>
                                    <asp:TextBox ID="Student_tbStudentName" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                            <tr>
                                <td>Notes:   </td>
                                <td>
                                    <asp:TextBox ID="Student_tbStudentNotes" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Instructor Name: </td>
                                <td>
                                    <asp:Label ID="Student_lblInstructorName" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Organization Name: </td>
                                <td>
                                    <asp:Label ID="Student_lblOrganizationName" runat="server"></asp:Label></td>
                            </tr>
                        </table>
                        <div class="grid-item grid-item--width2 grid-item--height3">
                            <!-- Info Display -->
                            <table class="table table-bordered table-striped" style="margin-left: 5px">
                            </table>
                        </div>
                    </div>
                    <div class="grid-item grid-item--width2 grid-item--height3">
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                            <ContentTemplate>
                                <div style="margin-top: 40px;">
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <fieldset>
                                                    <legend>View your Events:</legend>
                                                    <asp:GridView
                                                        runat="server"
                                                        ID="StudentEvent_GridView"
                                                        DataSourceID="sqlsrcStudentEvent">
                                                    </asp:GridView>
                                                </fieldset>
                                                <asp:SqlDataSource
                                                    runat="server"
                                                    ID="sqlsrcStudentEvent"
                                                    DataSourceMode="DataReader"
                                                    ConnectionString="<%$ ConnectionStrings:CyberCityDB%>"
                                                    SelectCommand="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
