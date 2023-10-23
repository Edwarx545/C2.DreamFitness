<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WorkoutBuilderTypePage.aspx.cs" Inherits="C2.DreamFitness.Workout_Builder_Type" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="d-flex parent">
            <a href="">
                <div class="card child" style="height: 200px;">
                    <div class="card-header" style="background-color: #36abb9; color: rgb(235, 235, 235);font-weight: bold; font-size: large;">
                        Build Your Own Workout Plan
                    </div>
                    <div>
                        <img src="img/planking1.png" alt="">
                    </div>
                </div>
            </a>

            <a href="">
                <div class="card child" style="height: 200px;">
                    <div class="card-header" style="background-color: #36abb9; color: rgb(235, 235, 235);font-weight: bold; font-size: large;">
                        Choose Our Recommeneded Workout Plans
                    </div>
                    <div>
                        <img src="img/cardio-background.jpg" alt="">
                    </div>
                </div>
            </a>
        </div>
    </div>
</asp:Content>
