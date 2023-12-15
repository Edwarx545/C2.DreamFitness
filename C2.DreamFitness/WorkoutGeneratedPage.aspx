<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WorkoutGeneratedPage.aspx.cs" Inherits="C2.DreamFitness.WorkoutGeneratedPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

        .repetition-container {
            border-radius: 10px;
            padding: 10px;
        }

        .number-of-rep {
            font-size: large;
        }

        .rep-title {
            color: rgb(98, 255, 255);
        }
        /* Dark mode styles */
        body {
            background-color: #121212;
            color: #ffffff;
        }

        .input-with-placeholder {
            background-color: #333;
            border: 1px solid #555;
            color: #fff;
            padding: 8px;
            border-radius: 4px;
            margin-bottom: 10px;
        }

        .input-with-placeholder::placeholder {
            color: #aaa;
        }

        .description {
            width: 700px; /* Adjust the width as needed */
            height: 180px; /* Adjust the height as needed */
            vertical-align: top;
        }

        /* Dark mode button styles */
        .dark-mode-button {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: 1px solid #555;
            border-radius: 4px;
            cursor: pointer;
        }

        .dark-mode-button:hover {
            background-color: #555;
        }
    </style>
    <body class="background">
        <div class="container" style="margin-top: 50px;">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <div>
                <asp:TextBox ID="title" runat="server" CssClass="input-with-placeholder"></asp:TextBox>
                <asp:Label ID="errorMessage" runat="server" Text="Please Check Your Input Again!"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="desc" runat="server" TextMode="MultiLine" Rows="4" Columns="70" CssClass="input-with-placeholder"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnSubmit" type="button" runat="server" OnClick="SaveWorkout" CssClass="dark-mode-button" Text="Create Workout"></asp:Button>
            </div>

            <h3 style="margin-top: 70px;">Your Workout Regimen</h3>
            <div style="display: flex; justify-content: center;">
                <asp:DataList ID="DataList1" runat="server" Class="Catego" CellPadding="0" CellSpacing="0" RepeatColumns="1" RepeatDirection="Vertical">
                    <ItemTemplate>
                        <div class="exercise-container d-flex" style="justify-content: center;">
                            <div class="exercise" style="width: 700px;">
                                <div style="margin-left: 10px;">
                                    <div style="display: flex; justify-content: center;">
                                        <asp:LinkButton ID="Label1" runat="server" Text='<%# Eval("exercise_name") %>' CssClass=" exercise-name"></asp:LinkButton>
                                    </div>

                                    <div class="">
                                        <p style="color: rgb(255, 255, 255);">Description:&nbsp;</p>
                                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("exercise_desc") %>'></asp:Label>
                                    </div>
                                </div>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "img/"+Eval("exercise_img")  %>' CssClass=" workout-image ex-img" />
                            </div>
                            <div>
                                <div class="repetition-container">
                                    <asp:Label ID="repNum" runat="server" CssClass="number-of-rep" Text='<%# GetExerciseRep(Eval("exercise_name")) %>'>
                                    </asp:Label>
                                    <asp:Label ID="repTitle" runat="server" CssClass="rep-title">
                                        REPS
                                    </asp:Label>
                                </div>
                                <div class="repetition-container">
                                    <asp:Label ID="Label3" runat="server" CssClass="number-of-rep" Text='<%# GetExerciseSet(Eval("exercise_name")) %>'>
                                    </asp:Label>
                                    <asp:Label ID="Label4" runat="server" CssClass="rep-title">
                                        SETS
                                    </asp:Label>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>

        </div>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <script>
            // Attach a jQuery function to the textbox on document ready
            $(document).ready(function () {
                $('#<%= title.ClientID %>').attr('placeholder', 'Title');
            });

            $(document).ready(function () {
                $('#<%= desc.ClientID %>').attr('placeholder', 'Description');
            });

            function validateAndSubmit() {
                var textBoxValue = $('#<%= title.ClientID %>').val();
                var validationLabel = $('#titleValidation');

                if (textBoxValue.length < 10) {
                    // Show validation message
                    validationLabel.show();

                    // Prevent postback
                    return false;
                } else {
                    // Hide validation message
                    validationLabel.hide();

                    // Trigger postback to invoke SaveWorkout
                    __doPostBack('<%= btnSubmit.UniqueID %>', '');

                    // Allow postback to occur
                    return true;
                }
            }
        </script>
    </body>
</asp:Content>
