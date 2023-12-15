<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="C2.DreamFitness.App_Start.Findexercise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <link rel="stylesheet" href="/src/excercise.css">
        <div class="blog-sec">
            <h1 class="section-title">Excercise</h1>
            <div class="meal-search-box">
                <asp:TextBox ID="txtSearch" class="search-control" runat="server" placeholder="Enter an excercise"></asp:TextBox>
                <asp:Button ID="btnSearch" class="btnsearch1" runat="server" OnClick="btnSearch_Click">
            </div>
            <div>
                <asp:DataList ID="DataList3" runat="server" Style="justify-content: space-between;" RepeatColumns="3" RepeatDirection="Vertical">
                    <ItemTemplate>
                        <div class="" style="margin: 20px; width: auto">
                            <asp:Image ID="Image1" runat="server" Style="width: auto; height: 325px" ImageUrl='<%# Eval("exercise_img")%>'></asp:Image>
                            <asp:LinkButton ID="exerciseid" runat="server" OnClick="btn_ThongTinExercise" Style="display: flex; flex-direction: column; align-items: center;" Text='<%# Eval("exercise_name") %>' CommandArgument='<%# Eval("exercise_id") %>'></asp:LinkButton>
                            <p></p>
                            <asp:Label ID="Label3" runat="server" Text='<%# "Gender: " + Eval("exercise_gender") %>'></asp:Label>
                            <p></p>
                            <asp:Label ID="Label2" runat="server" class="" Text='<%# "Age: " + Eval("exercise_age") %>'> </asp:Label>
                            <p></p>
                            <asp:Label ID="Label4" runat="server" class="" Text='<%# "Muscle Group: " + Eval("muscle_group_name") %>'> </asp:Label>
                            <p></p>
                    </div>
                    </ItemTemplate>
                </asp:DataList>
                    <img src="img/squats.jpg">
                    <div class="blog-intro">
                        <p>Squats</p>
                    </div>
                </div>
                <div class="blog-card">
                    <img src="img/chest.png">
                    <div class="blog-intro">
                        <p>Chest press on flat bench</p>
                    </div>
                </div>
                <div class="blog-card">
                    <img src="img/kettlebell.png">
                    <div class="blog-intro">
                        <p>Kettlebell swing</p>
                    </div>
                </div>
                <div class="blog-card">
                    <img src="img/pushup.jpg">
                    <div class="blog-intro">
                        <p>Do push-ups with your hands in an unstable position</p>
                    </div>
                </div>
                <div class="blog-card">
                    <img src="img/pull.jpg">
                    <div class="blog-intro">
                        <p>Pull up bar</p>
                    </div>
                </div>
                <div class="blog-card">
                    <img src="img/ball1.jpg">
                    <div class="blog-intro">
                        <p>Stretch your abs with a rubber ball</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</asp:Content>
