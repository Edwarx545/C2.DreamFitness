<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="C2.DreamFitness.App_Start.Findexercise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <link rel="stylesheet" href="/src/excercise.css">
        <div class="blog-sec">
            <h1 class="section-title">Excercise</h1>
            <div class="meal-search-box">
                <input type="text" class="search-control" placeholder="Enter an excercise" id="search-input">
                <button type="submit" class="search-btn btn" id="search-btn">
                    <i class="fas fa-search"></i>
                </button>
            </div>
            <div class="blog-row">
                <div class="blog-card">
                    <img src="img/deadlift.jpg">
                    <div class="blog-intro">
                        <p>Deadlift</p>
                    </div>
                </div>
                <div class="blog-card">
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
