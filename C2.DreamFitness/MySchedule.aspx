<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MySchedule.aspx.cs" Inherits="C2.DreamFitness.MySchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background-color: #2b2b2b; /* Dark background color for dark mode */
            color: #ffffff; /* Text color */
            font-family: Arial, sans-serif;
        }

        .day {
            margin-top: 20px;
        }

        .timeline {
            display: flex;
            margin-bottom: 10px;
        }

        .morning, .afternoon, .evening {
            flex-grow: 1;
            padding: 10px;
            border-radius: 5px;
            margin-right: 10px;
            width: 300px; /* Set your desired fixed width here */
            overflow: hidden; /* Add overflow: hidden to prevent content from overflowing */
            white-space: nowrap; /* Prevent text from wrapping to the next line */
            text-overflow: ellipsis;
        }

        .morning {
            background: linear-gradient(to bottom, #87CEEB, #FFD700); /* Gradient from sky blue to light yellow */
            color: #333; /* Dark text color for contrast */
            height: 180px; /* Adjust height based on your design */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        }

        .afternoon {
            background: linear-gradient(to bottom, #FAD02E, #FF6347); /* Gradient from gold to coral */
            color: #333; /* Dark text color for contrast */
            height: 180px; /* Adjust height based on your design */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        }

        .evening {
            background: linear-gradient(to bottom, #191970, #000000); /* Gradient from midnight blue to black */
            color: #fff; /* White text color for contrast */
            height: 180px; /* Adjust height based on your design */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        }

        .activity {
            background-color: #F5DEB3; /* Wheat color for the activity */
            color: #333; /* Dark text color for contrast */
            padding: 10px;
            margin-top: 10px;
            border-radius: 5px;
            display: flex;
            align-items: center;
        }

        .daytime-icon {
            float: right;
            height: 30px;
        }

        .schedule-cont {
        }
    </style>
    <body class="background">
        <div class="container" style="width: 80%;">
            <h1 style="text-align: center; margin-bottom: 20px;">Weekly Schedule</h1>
            <div class="day" style="margin-top: 50px;">
                <h4>Monday</h4>
                <div class="timeline">
                    <div class="morning">
                        <div class="activity">
                            <asp:Label ID="monday_morning_workout" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="afternoon">
                        <div class="activity">
                            <asp:Label ID="monday_afternoon_workout" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="evening">
                        <div class="activity">
                            <asp:Label ID="monday_evening_workout" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="day" style="margin-top: 50px;">
                <h4>Tuesday</h4>
                <div class="timeline">
                    <div class="morning">
                        <div class="activity">
                            <asp:Label ID="tuesday_morning_workout" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="afternoon">
                        <div class="activity">
                            <asp:Label ID="tuesday_afternoon_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                    <div class="evening">
                        <div class="activity">
                            <asp:Label ID="tuesday_evening_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                </div>
            </div>

            <div class="day" style="margin-top: 50px;">
                <h4>Wednesday</h4>
                <div class="timeline">
                    <div class="morning">
                        <div class="activity">
                            <asp:Label ID="wednesday_morning_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                    <div class="afternoon">
                        <div class="activity">
                            <asp:Label ID="wednesday_afternoon_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                    <div class="evening">
                        <div class="activity">
                            <asp:Label ID="wednesday_evening_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                </div>
            </div>

            <div class="day" style="margin-top: 50px;">
                <h4>Thursday</h4>
                <div class="timeline">
                    <div class="morning">
                        <div class="activity">
                            <asp:Label ID="thursday_morning_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                    <div class="afternoon">
                        <div class="activity">
                            <asp:Label ID="thursday_afternoon_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                    <div class="evening">
                        <div class="activity">
                            <asp:Label ID="thursday_evening_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                </div>
            </div>

            <div class="day" style="margin-top: 50px;">
                <h4>Friday</h4>
                <div class="timeline">
                    <div class="morning">
                        <div class="activity">
                            <asp:Label ID="friday_morning_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                    <div class="afternoon">
                        <div class="activity">
                            <asp:Label ID="friday_afternoon_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                    <div class="evening">
                        <div class="activity">
                            <asp:Label ID="friday_evening_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                </div>
            </div>


            <div class="day" style="margin-top: 50px;">
                <h4>Saturday</h4>
                <div class="timeline">
                    <div class="morning">
                        <div class="activity">
                            <asp:Label ID="saturday_morning_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                    <div class="afternoon">
                        <div class="activity">
                            <asp:Label ID="saturday_afternoon_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                    <div class="evening">
                        <div class="activity">
                            <asp:Label ID="saturday_evening_workout" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="day" style="margin-top: 50px;">
                <h4>Sunday</h4>
                <div class="timeline">
                    <div class="morning">
                        <div class="activity">
                            <asp:Label ID="sunday_morning_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                    <div class="afternoon">
                        <div class="activity">
                            <asp:Label ID="sunday_afternoon_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                    <div class="evening">
                        <div class="activity">
                            <asp:Label ID="sunday_evening_workout" runat="server"></asp:Label>
                        </div>

                    </div>
                </div>
            </div>

        </div>
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
