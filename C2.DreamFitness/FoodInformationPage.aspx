<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FoodInformationPage.aspx.cs" Inherits="C2.DreamFitness.FoodInformationPage" %>

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
            border-radius: 15px 0 0 15px;
        }

        .rounded-box {
            border: 0px solid;
            border-radius: 15px;
            background-color: #3A3B3C;
            transition: background-color 0.3s ease;
            margin: 5px;
        }

        .text {
            color: #E4E6EB;
        }

        .rounded-box a {
            color: #E4E6EB;
            text-decoration: none;
            font-weight: lighter;
        }

        .rounded-box:hover {
            background-color: #2D2D2E;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.2);
        }

        .lk {
            text-align: left;
            vertical-align: top;
            padding-left: 5px;
            width: 130px;
        }

        .shuffle-btn {
            border-left: 1px solid #E4E6EB;
            text-align: center;
            width: 15%;
        }

        .rotated-text {
            transform: rotate(270deg) translateY(100%);
            transform-origin: center;
            font-weight: lighter;
            width: 65px;
            height: 20px;
        }

        .rotated-text-box {
        }

        .bigtext {
        }

        .meal {
        }
        .desc {
            font-weight:200;
        }
    </style>
    <body>
        <table>
            <tr>
                <th style="vertical-align: top;">
                    <div class="container" style="margin-top: 50px; ">
                        <asp:DataList ID="DataList1" runat="server" Class="Catego" CellPadding="0" CellSpacing="0">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("DietName") %>' CssClass="workout-name"></asp:Label>
                                <div style="margin-top: 20px;">
                                    <div class="d-flex">
                                        <p style="font-weight: bold;">Calories:&nbsp;</p>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("DietCalories") %>' CssClass="desc"></asp:Label>
                                    </div>
                                    <div style="width: 450px;height:200px;">
                                        <p style="font-weight: bold;">Description:&nbsp; </p>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("DietDesc") %>' CssClass="desc"></asp:Label>
                                    </div>
                                    <div class="d-flex" style="justify-content: start; margin-top: 20px;">
                                        <button type="button" style="background-color: #36abb9; border: 1px solid #36abb9;" class="btn btn-primary">Add This Diet</button>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </th>
                <th>
                    <div class="container" style="margin-top: 50px;">
                        <h2 class="text">Diet Schedule</h2>
                        <h4 class="text">Monday</h4>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Breakfast</div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList3" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label1" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label1_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Lunch    </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList4" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label2" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>

                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList5" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label3" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <h4>Tuesday</h4>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList6" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label4" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList7" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image5" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label5" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList8" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image6" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label6" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <h4>Wednesday</h4>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList9" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image7" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label7" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList10" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image8" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label8" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList11" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image9" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label9" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <h4>Thursday</h4>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList12" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image10" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label10" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList13" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image11" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label11" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList14" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image12" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label12" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <h4>Friday</h4>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList15" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image13" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label13" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList16" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image14" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label14" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList17" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image15" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label15" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <h4>Saturday</h4>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList18" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image16" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label16" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList19" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image17" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label17" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList20" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image18" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label18" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <h4>Sunday</h4>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList21" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image19" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label19" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList22" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image20" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label20" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table cellspacing="0">
                            <tr>
                                <td class="rotated-text-box">
                                    <div class="rotated-text">Dinner   </div>
                                </td>
                                <td>
                                    <div>
                                        <div class="rounded-box">
                                            <asp:DataList ID="DataList23" runat="server">
                                                <ItemTemplate>
                                                    <table class="tb">
                                                        <tr>
                                                            <td class="img-th" style="width: 19%">
                                                                <div>
                                                                    <asp:Image ID="Image21" runat="server" ImageUrl='<%# Eval("food_image")%>' CssClass="ex-img" />
                                                                </div>
                                                            </td>
                                                            <td class="lk">
                                                                <asp:LinkButton ID="Label21" runat="server" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>' OnClick="Label3_Click"></asp:LinkButton>
                                                            </td>
                                                            <td class="shuffle-btn">
                                                                <asp:Image ID="Image99" runat="server" ImageUrl="~/img/shuffle-32.png" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </th>
            </tr>
        </table>
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

