<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FoodBuilderTypePage.aspx.cs" Inherits="C2.DreamFitness.Food_Builder_Type" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="d-flex parent">
                <div class="card child" style="border-radius:15px">
                    <div>
                        <Asp:LinkButton ID="btnPersonalWorkout" runat="server" OnClick="navigateToCreatePersonalizedWorkoutPage">
                            <img src="img/Group 2.jpg" alt="" style="border-radius:15px">
                        </Asp:LinkButton>
                    </div>
                </div>
           
            <Asp:LinkButton ID="btnSystemWorkouts" runat="server" OnClick="navigateToWorkoutTemplateSelectionPage" PostBackUrl="FoodTemplateSelectionPage.aspx">
                <div class="card child" style="border-radius:15px">
                    <div>
                        <img src="img/Group 1.jpg" alt="" style="border-radius:15px">
                    </div>
                </div>
            </Asp:LinkButton>
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
