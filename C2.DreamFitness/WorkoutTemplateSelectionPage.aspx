<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WorkoutTemplateSelectionPage.aspx.cs" Inherits="C2.DreamFitness.WorkoutTemplateSelectionPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .workout-image {
            border-radius: 10px;
            padding: 5px;
            background-color: rgb(78, 78, 78);
        }

        .background {
            background-image: url('img/dark-background.png');
        }

        .blueText {
            color: #36abb9;
        }

        .text-truncate {
            display: -webkit-box;
            -webkit-line-clamp: 2; /* Limit to 3 lines */
            -webkit-box-orient: vertical;
            overflow: hidden;
            white-space: normal;
            text-overflow: ellipsis;
        }

        .link-button {
            text-decoration: none;
        }
    </style>
    <body class="background">
<<<<<<< HEAD
    <div class="container">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Vertical">
            <ItemTemplate>
                 <div class="d-flex" style="text-align: left; height: 200px;width: 1500px; color: white; margin-top: 100px;">
                    <div class="workout-image child">
                        <a href="">
                            <img src='<%# Eval("workout_template_img") %>' alt="" style="border-radius: 10px;" />
                        </a>
                    </div>
                    <div class="child" style="width: 800px; margin-left: 50px;">
                        <asp:LinkButton ID="workoutName" runat="server" OnClick="btnXemThongTin_Click" Text='<%# Eval("workout_template_name") %>' CommandArgument='<%# Eval("workout_template_id") %>' CssClass="blueText link-button" Font-Size="20"></asp:LinkButton>
                        <div class="d-flex rating mt-3">
                            <p style="text-align: center; margin-right:10px">Difficulty:&nbsp;</p>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("workout_template_difficulty") %>'></asp:Label>
=======
        <div class="container">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Vertical">
                <ItemTemplate>
                    <div class="d-flex" style="text-align: left; height: 200px; width: 1500px; color: white; margin-top: 100px;">
                        <div class="workout-image child">
                            <a href="">
                                <img src="img/planking1.png" alt="" style="border-radius: 10px;">
                            </a>
>>>>>>> a4ca79adb1b845756e9a9513031e024d8751102c
                        </div>
                        <div class="child" style="width: 800px; margin-left: 50px;">
                            <asp:LinkButton ID="workoutName" runat="server" OnClick="btnXemThongTin_Click" Text='<%# Eval("workout_template_name") %>' CommandArgument='<%# Eval("workout_template_id") %>' CssClass="blueText link-button" Font-Size="20"></asp:LinkButton>
                            <div class="d-flex rating mt-3">
                                <p style="text-align: center; margin-right: 10px">Difficulty:&nbsp;</p>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("workout_template_difficulty") %>'></asp:Label>
                            </div>
                            <div class="d-flex" style="white-space: nowrap;">
                                <p>Age:&nbsp;</p>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("workout_template_age") %>'></asp:Label>
                                <p style="margin-left: 100px;">Gender:&nbsp;</p>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("workout_template_gender") %>'></asp:Label>
                                <p style="margin-left: 100px;">Equipment:&nbsp; </p>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("workout_template_equipment") %>'></asp:Label>
                                <p style="margin-left: 100px;">Type:&nbsp; </p>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("workout_template_type") %>'></asp:Label>
                            </div>
                            <div class="d-flex" style="color: rgb(164, 164, 164);">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("workout_template_desc") %>' CssClass="text-truncate"></asp:Label>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>

        </div>
        <script>
            const stars = document.querySelectorAll('.star');
            const post = document.querySelector('.post');

            stars.forEach((star) => {
                star.addEventListener('click', () => {
                    const rating = star.getAttribute('data-rating');
                    // You can send the rating to the server or perform other actions here.
                    // For now, we'll just display an alert.
                    alert(`You rated this post ${rating} stars.`);
                });
            });

            post.addEventListener('mouseleave', () => {
                stars.forEach((star) => star.classList.remove('selected'));
            });

            post.addEventListener('mouseenter', () => {
                const postRating = post.getAttribute('data-rating');
                if (postRating) {
                    stars[postRating - 1].classList.add('selected');
                }
            });
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

