<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsersWorkoutInformation.aspx.cs" Inherits="C2.DreamFitness.UsersWorkoutInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <style>
        .background {
            background-image: url('img/dark-background.png');
            color: rgb(235, 235, 235);
        }

        .exercise-container {
            border-radius: 10px;
            padding: 10px;
            margin-top: 20px;
        }

        .exercise {
            padding: 5px;
            border-radius: 10px;
            padding: 5rgb(217, 217, 217);
            background-color: rgb(68, 68, 68);
            border: 2px solid #fb8f8f;
        }

        .inside-exercise {
            margin-left: 10px;
        }

        .exercise-name {
            text-align: center;
            font-weight: bold;
            font-size: x-large;
            color: rgb(98, 255, 255);
            text-decoration: none;
        }

        .workout-name {
            margin-top: 50px;
            font-size: 30px;
            font-weight: bold;
        }

        .ex-img {
            max-width: 100%;
            margin-top: 20px;
        }

        .schedule-container {
            display: none;
            padding: 20px;
            border-radius: 15px;
            background-color: #343a40; /* Darker background color */
            color: #ffffff; /* Light text color for dark mode */
        }

        .schedule-table {
            border-radius: 10px;
        }

            .schedule-table th, .schedule-table td {
                text-align: center;
            }

            .schedule-table input[type="checkbox"] {
                margin: 0;
                vertical-align: middle;
            }
    </style>

    <body class="background">
        <div class="container" style="margin-top: 50px;">
            <asp:DataList ID="DataList1" runat="server" Class="Catego" CellPadding="0" CellSpacing="0">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("workout_template_name") %>' CssClass="workout-name" ></asp:Label>
                    <div style="margin-top: 20px;">
                        <div class="" style="width: 1000px;">
                            <p style="font-weight: bold;">Description:&nbsp; </p>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("workout_template_desc") %>'></asp:Label>
                        </div>
                        <div class="d-flex" style="justify-content: start; margin-top: 20px;">
                            <asp:Button ID="btnToggleSchedule" runat="server" Text="Schedule" OnClientClick="toggleScheduleContainer(); return false;" Style="background-color: #36abb9; border: 1px solid #36abb9;" class="btn btn-primary" />
                            <button type="button" onclick="customizeWorkout" style="margin-left: 20px; background-color: #36abb9; border: 1px solid #36abb9;" class="btn btn-primary">Customize Workout</button>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>


            <div id="scheduleContainer" class="mt-5 schedule-container">
                <h2>Weekly Schedule</h2>
                <table class="table table-bordered table-dark schedule-table">
                    <thead>
                        <tr>
                            <th></th>
                            <th>Morning</th>
                            <th>Afternoon</th>
                            <th>Evening</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">Monday</th>
                            <td>
                                <input type="checkbox" id="MondayMorning" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="MondayAfternoon" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="MondayEvening" runat="server" /></td>
                        </tr>
                        <tr>
                            <th scope="row">Tuesday</th>
                            <td>
                                <input type="checkbox" id="TuesdayMorning" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="TuesdayAfternoon" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="TuesdayEvening" runat="server" /></td>
                        </tr>
                        <tr>
                            <th scope="row">Wednesday</th>
                            <td>
                                <input type="checkbox" id="WednesdayMorning" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="WednesdayAfternoon" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="WednesdayEvening" runat="server" /></td>
                        </tr>
                        <tr>
                            <th scope="row">Thursday</th>
                            <td>
                                <input type="checkbox" id="ThursdayMorning" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="ThursdayAfternoon" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="ThursdayEvening" runat="server" /></td>
                        </tr>
                        <tr>
                            <th scope="row">Friday</th>
                            <td>
                                <input type="checkbox" id="FridayMorning" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="FridayAfternoon" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="FridayEvening" runat="server" /></td>
                        </tr>
                        <tr>
                            <th scope="row">Saturday</th>
                            <td>
                                <input type="checkbox" id="SaturdayMorning" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="SaturdayAfternoon" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="SaturdayEvening" runat="server" /></td>
                        </tr>
                        <tr>
                            <th scope="row">Sunday</th>
                            <td>
                                <input type="checkbox" id="SundayMorning" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="SundayAfternoon" runat="server" /></td>
                            <td>
                                <input type="checkbox" id="SundayEvening" runat="server" /></td>
                        </tr>
                    </tbody>
                </table>
                <div class="mt-3">
                    <asp:Button ID="Button1" runat="server" Text="Apply Schedule" OnClick="addToSchedule" Style="background-color: #36abb9; border: 1px solid #36abb9;" class="btn btn-primary" />
                </div>
            </div>

            <h3 style="margin-top: 70px;">Your Workout Regimen</h3>
            <div style="display: flex; justify-content: center;">
                <asp:DataList ID="DataList2" runat="server" Class="Catego" CellPadding="0" CellSpacing="0" RepeatColumns="1" RepeatDirection="Vertical">
                    <ItemTemplate>
                        <div class="exercise-container d-flex" style="justify-content: center;">
                            <div class="exercise" style="width: 700px;">
                                <div style="margin-left: 10px;">
                                    <div style="display: flex; justify-content: center;">
                                        <asp:LinkButton ID="exerciseid" runat="server" Text='<%# Eval("exercise_name") %>' CssClass="exercise-name" OnClick="btn_ThongTinExercise1" CommandArgument='<%# Eval("exercise_id") %>'></asp:LinkButton>
                                    </div>

                                    <div class="">
                                        <p style="color: rgb(255, 255, 255);">Description:&nbsp;</p>
                                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("exercise_desc") %>'></asp:Label>
                                    </div>
                                </div>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("exercise_img")  %>' CssClass=" workout-image ex-img" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>




        </div>




        <script type="text/javascript">
            function toggleScheduleContainer() {
                console.log("works");
                var scheduleContainer = document.getElementById('scheduleContainer');
                scheduleContainer.style.display = (scheduleContainer.style.display === 'none' || scheduleContainer.style.display === '') ? 'block' : 'none';
            }
        </script>
    </body>
    <script>
        window.embeddedChatbotConfig = {
            chatbotId: "MarFQjhQBviYq1HEv3c2r",
            domain: "www.chatbase.co"
        }
    </script>
    <script
        src="https://www.chatbase.co/embed.min.js"
        chatbotid="MarFQjhQBviYq1HEv3c2r"
        domain="www.chatbase.co"
        defer>
    </script>
</asp:Content>
