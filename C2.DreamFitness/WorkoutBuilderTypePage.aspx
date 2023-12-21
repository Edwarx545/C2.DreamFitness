<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WorkoutBuilderTypePage.aspx.cs" Inherits="C2.DreamFitness.Workout_Builder_Type" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="d-flex parent">
            <div class="card child" style="height: 200px;">
                <div class="card-header" style="background-color: #36abb9; color: rgb(235, 235, 235); font-weight: bold; font-size: large;">
                    Build Your Own Workout Plan
                </div>
                <div>
                    <asp:LinkButton ID="btnPersonalWorkout" runat="server" OnClick="navigateToCreatePersonalizedWorkoutPage" PostBackUrl="CreatePersonalizedWorkoutPage.aspx">
                            <img src="img/planking1.png" alt="">
                    </asp:LinkButton>
                </div>
            </div>


            <asp:LinkButton ID="btnSystemWorkouts" runat="server" OnClick="navigateToWorkoutTemplateSelectionPage" PostBackUrl="WorkoutTemplateSelectionPage.aspx">
                <div class="card child" style="height: 200px;">
                    <div class="card-header" style="background-color: #36abb9; color: rgb(235, 235, 235);font-weight: bold; font-size: large;">
                        Choose Our Recommeneded Workout Plans
                    </div>
                    <div>
                        <img src="img/cardio-background.jpg" alt="">
                    </div>
                </div>
            </asp:LinkButton>
        </div>
    </div>
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
