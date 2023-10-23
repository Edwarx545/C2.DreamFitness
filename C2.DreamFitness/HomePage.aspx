<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="C2.DreamFitness.App_Start.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
    <!-- front page -->
            <div class="container mt-5">
                <div class="row align-items-center">
                    <div class="col-6">
                        <h1 style="font-weight: bold;">Get your ideal body.</h1>
                        <h1 style="font-weight: bold;">Be your best version.</h1>
                        <p style="color: gray; margin-top: 20px;">
                            Introducing Dream Fitness, the ultimate wellness solution that
          seamlessly combines
          personalized workouts, adaptable schedules, progress tracking, tailored diet plans, and an insightful health
          chatbot, all designed to help you achieve your fitness aspirations and lead a healthier, happier life.
                        </p>
                        <div class="d-flex text-center align-items-center mt-5">
                            <div>
                                <button class="btn btn-primary me-5" type="submit">Start Traning</button>
                            </div>
                            <div>
                                <img src="img\play_btn.png" alt="play_btn" style="height: 38px; margin-right: 10px;">Watch Demo
                            </div>
                        </div>
                    </div>
                    <div class="col-6 text-center">
                        <img src="img\woman-helping-man-gym.jpg" alt="" width="600px">
                    </div>
                </div>
            </div>

            <!-- explore our program -->
            <div>
                <div class="container d-flex justify-content-between mt-5">
                    <div>
                        <h1 style="font-weight: bold;">Explore Our Program</h1>
                    </div>
                </div>

                <div class="container d-flex justify-content-between mt-5">
                    <div style="width: 300px">
                        <asp:LinkButton ID="myLinkButton" runat="server" OnClick="navigateToWorkoutBuilderTypePage" Style="text-decoration: none; color: #FFFFFF;">
          <div class="ps-3 pt-3 white-border" style="height: 300px;">
            <img src="img\icons8-fitness-100 (1).png" alt="" style="height: 40px;margin-bottom: 20px;">
            <p style="font-size: 25px; font-weight: bold;">Workout</p>
            <p class="small-intro-text" style="font-size: 14px">Create and manage your workout schedule, and closely
              monitor your
              progress through intelligent tracking. Get ready to embark on a tailored fitness journey that evolves with
              you.</p>
          </div>
                        </asp:LinkButton>
                    </div>

                    <div style="width: 300px">
                        <asp:LinkButton ID="LinkButton1" runat="server"  Style="text-decoration: none; color: #FFFFFF;">

                            <div class="ps-3 pt-3 white-border" style="height: 300px;">
                                <img src="img\icons8-diet-64.png" alt="" style="height: 40px; margin-bottom: 20px;">
                                <p style="font-size: 25px; font-weight: bold;">Diet</p>
                                <p class="small-intro-text" style="font-size: 14px;">
                                    Choose from predefined diet templates or fine-tune your
              own plan to match your dietary preferences and goals.
                                </p>
                            </div>
                        </asp:LinkButton>
                    </div>
                    <div style="width: 300px;">
                        <asp:LinkButton ID="LinkButton2" runat="server"  Style="text-decoration: none; color: #FFFFFF;">

                            <div class="ps-3 pt-3 white-border" style="height: 300px;">
                                <img src="img\icons8-progress-100 (1).png" alt="" style="height: 40px; margin-bottom: 20px;">
                                <p style="font-size: 25px; font-weight: bold;">Progress</p>
                                <p class="small-intro-text" style="font-size: 14px;">
                                    You'll gain insights into your progress, view
              performance metrics, and track your achievements. See the tangible results of your hard work as you make
              strides towards your fitness goals.
                                </p>
                            </div>
                        </asp:LinkButton>
                    </div>
                    <div style="width: 300px;">
                        <asp:LinkButton ID="LinkButton3" runat="server"  Style="text-decoration: none; color: #FFFFFF;">
                            <div class="ps-3 pt-3 white-border" style="height: 300px;">
                                <img src="img\icons8-ai-100.png" alt="" style="height: 40px; margin-bottom: 20px;">
                                <p style="font-size: 25px; font-weight: bold;">Chatbot</p>
                                <p class="small-intro-text" style="font-size: 14px;">
                                    Access a wealth of health-related knowledge, ask
              questions, and receive expert advice from our knowledgeable chatbot. Unlock the power of information and
              make informed choices on your journey to better health and fitness.
                                </p>
                            </div>
                        </asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </body>
</asp:Content>
    