<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WorkoutInformationPage.aspx.cs" Inherits="C2.DreamFitness.WorkoutInformationPage" %>

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
    </style>
    <body class="background">
        <div class="container" style="margin-top: 50px;">
            <asp:DataList ID="DataList1" runat="server" Class="Catego" CellPadding="0" CellSpacing="0">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("workout_template_name") %>' CssClass="workout-name"></asp:Label>
                    <div style="margin-top: 20px;">
                        <div class="d-flex">
                            <p style="font-weight: bold;">Age:&nbsp;</p>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("workout_template_age") %>'></asp:Label>
                            <p style="font-weight: bold; margin-left: 30px;">Gender:&nbsp;</p>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("workout_template_gender") %>'></asp:Label>
                            <p style="font-weight: bold; margin-left: 30px;">Equipment:&nbsp; </p>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("workout_template_equipment") %>'></asp:Label>
                            <p style="font-weight: bold; margin-left: 30px;">Type:&nbsp; </p>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("workout_template_type") %>'></asp:Label>
                        </div>
                        <div class="" style="width: 1000px;">
                            <p style="font-weight: bold;">Description:&nbsp; </p>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("workout_template_desc") %>'></asp:Label>
                        </div>
                        <div class="d-flex" style="justify-content: start; margin-top: 20px;">
                            <button type="button" style="background-color: #36abb9; border: 1px solid #36abb9;" class="btn btn-primary">Add This Workout</button>
                            <button type="button" style="margin-left: 20px; background-color: #36abb9; border: 1px solid #36abb9;" class="btn btn-primary">Try This Workout Now!</button>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>

            <h3 style="margin-top: 70px;">Your Workout Regimen</h3>
            <div style="display: flex; justify-content: center;">
                <asp:DataList ID="DataList2" runat="server" Class="Catego" CellPadding="0" CellSpacing="0" RepeatColumns="1" RepeatDirection="Vertical">
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
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("exercise_img")  %>' CssClass=" workout-image ex-img" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
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

