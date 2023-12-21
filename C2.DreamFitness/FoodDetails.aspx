<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FoodDetails.aspx.cs" Inherits="C2.DreamFitness.FoodDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .background {
            background-image: url('img/dark-background.png');
        }

        body {
            background-image: url('img/dark-background.png');
            margin: 0;
            padding: 0;
            text-align: left;
        }

        .container {
            margin-top: 50px;
        }

        .exercise-container {
            margin: 5px;
            width: auto;
            display: flex;
            flex-direction: column;
            text-align: left;
        }

        .exercise-image {
            max-width: 100%;
            max-height: 600px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }


        .exercise-label {
            margin-top: 10px;
            margin-left: 50px;
            margin-right: 70px;
            text-align: left;
        }
    </style>
    <body>
        <div class="container">
            <asp:DataList ID="DataList1" runat="server" CssClass="Catego" CellPadding="0" CellSpacing="0">
                <ItemTemplate>
                    <div class="exercise-container">
                        <asp:Image ID="Image1" runat="server" CssClass="exercise-image" ImageUrl='<%# Eval("food_image")%>'></asp:Image>
                    </div>
                    <asp:Label ID="Label1" runat="server" Style="font-size: 30px; width: 1255px; display: flex; flex-direction: column; text-align: center; align-items: center;"
                        Text='<%# Eval("food_item_name") %>'></asp:Label>
                    <div class="exercise-container">
                        <asp:Label ID="Label3" class="exercise-label" runat="server" Text='<%# "Protein: " + Eval("food_item_proteins") %>'></asp:Label>
                        <asp:Label ID="Label2" runat="server" class="exercise-label" Text='<%# "Carbonhydrates: " + Eval("food_item_carbonhydrates") %>'> </asp:Label>
                        <asp:Label ID="Label4" runat="server" class="exercise-label" Text='<%# "Calo: " + Eval("food_item_calories") %>'> </asp:Label>
                        <asp:Label ID="Label5" runat="server" class="exercise-label" Text='<%# "Description: " + Eval("Food_item_desc") %>'> </asp:Label>
                        <%--                        <asp:Label ID="Label6" runat="server" class="exercise-label" Text='<%# "Intermediate rep: " + Eval("intermidiate_rep") %>'> </asp:Label>
                        <asp:Label ID="Label7" runat="server" class="exercise-label" Text='<%# "Advanced rep: " + Eval("Advanced_rep") %>'> </asp:Label>
                        <asp:Label ID="Label8" runat="server" class="exercise-label" Text='<%# "Rest between set: " + Eval("rest_between_set") %>'> </asp:Label>
                        <asp:Label ID="Label9" runat="server" class="exercise-label" Text='<%# "Exercise set: " + Eval("exercise_set") %>'> </asp:Label>
                        <asp:Label ID="Label10" runat="server" class="exercise-label" Text='<%# "Description: " + Eval("exercise_desc") %>'> </asp:Label>--%>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:DataList ID="DataList2" runat="server" CssClass="Catego" CellPadding="0" CellSpacing="0">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Style="font-size: 30px; width: 1255px; display: flex; flex-direction: column; text-align: center; align-items: center;"
                        Text='<%# Eval("recipe_name") %>'></asp:Label>
                    <div class="exercise-container">
                        <asp:Label ID="Label6" class="exercise-label" runat="server" Text='<%# "Recipe description: " + Eval("recipe_desc") %>'></asp:Label>
                        <asp:Label ID="Label8" class="exercise-label" runat="server" Text='<%# "Recipe type: " + Eval("recipe_type") %>'></asp:Label>
                        <asp:Label ID="Label7" class="exercise-label" runat="server" Text='<%# "How to cook: " %>'></asp:Label>
                        <asp:Label ID="Label10" class="exercise-label" runat="server" Text='<%# "" + Eval("recipe_how_to") %>'></asp:Label>
                        <br />
                        <br />
                </ItemTemplate>
            </asp:DataList>
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
