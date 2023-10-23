<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="C2.DreamFitness.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="src/logged_in_homepage.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <style>
        .small-intro-text {
            color: rgb(205, 204, 204);
        }

        .white-border {
            border: 1px solid rgb(233, 103, 103);
            border-radius: 10px;
            /* Adjust the value to control the roundness of the corners */
            padding: 10px;
            /* Add some padding to the div for visual effect */
        }

            .white-border:hover {
                background-color: #097fd9;
                border: 1px solid #097fd9;
            }

                .white-border:hover p {
                    color: white;
                }
    </style>
</head>
<body style="background-color: rgb(21, 21, 21); color: white; font-family: Verdana, Geneva, Tahoma, sans-serif;">
    <form id="form1" runat="server">
        <div class="container">
            <div class="d-flex justify-content-between my-3" style="height: 50px;">
                <div>
                    <img src="img\df_logo_bg_removed.png" alt="df logo" style="max-height: 60px">
                </div>
                <div class="d-flex">
                    <div class="d-flex justify-content-end mt-1">
                        <div class="mx-4">
                            <p class="text-start">Home</p>
                        </div>
                        <div class="me-4">
                            <p class="text-start">Categories</p>
                        </div>
                        <div class="me-4">
                            <p class="text-start">Community</p>
                        </div>
                    </div>

                    <div>
                        <div class="dropdown">
                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="userDropdown"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img src="img\user_icon.png" alt="Custom Icon" style="height: 30px;">
                            </a>
                            <div class="dropdown-menu" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">Profile</a>
                                <a class="dropdown-item" href="#">Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
                        <asp:LinkButton ID="myLinkButton" runat="server" OnClick="navigateToWorkoutBuilder" Style="text-decoration: none; color: #FFFFFF;">
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

                   
                </div>
            </div>
        </div>
    </form>
</body>
</html>
