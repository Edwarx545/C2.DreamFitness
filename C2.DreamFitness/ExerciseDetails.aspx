<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExerciseDetails.aspx.cs" Inherits="C2.DreamFitness.ExerciseDetails" %>

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
            width: 1155px;
            height: 600px;
            display: block;
            margin-left: 50px;
            /*            margin-right: auto;
*/
        }

        .exercise-label {
            margin-top: 10px;
            margin-left: 50px;
            margin-right: 70px;
            text-align: left; /* Đặt nội dung ở bên trái */
        }
    </style>
    <body>
        <div class="container">
            <asp:DataList ID="DataList1" runat="server" CssClass="Catego" CellPadding="0" CellSpacing="0">
                <ItemTemplate>
                    <div class="exercise-container">
                        <asp:Image ID="Image1" runat="server" CssClass="exercise-image" ImageUrl='<%# Eval("exercise_img")%>'></asp:Image>
                    </div>
                    <asp:Label ID="Label1" runat="server" Style="font-size: 30px; width: auto; display: flex; flex-direction: column; text-align: left; align-items: center;"
                        Text='<%# Eval("exercise_name") %>'></asp:Label>
                    <div class="exercise-container">
                        <asp:Label ID="Label3" class="exercise-label" runat="server" Text='<%# "Gender: " + Eval("exercise_gender") %>'></asp:Label>
                        <asp:Label ID="Label2" runat="server" class="exercise-label" Text='<%# "Age: " + Eval("exercise_age") %>'> </asp:Label>
                        <asp:Label ID="Label4" runat="server" class="exercise-label" Text='<%# "Category: " + Eval("exercise_category") %>'> </asp:Label>
                        <asp:Label ID="Label5" runat="server" class="exercise-label" Text='<%# "Basic rep: " + Eval("basic_rep") %>'> </asp:Label>
                        <asp:Label ID="Label6" runat="server" class="exercise-label" Text='<%# "Intermediate rep: " + Eval("intermidiate_rep") %>'> </asp:Label>
                        <asp:Label ID="Label7" runat="server" class="exercise-label" Text='<%# "Advanced rep: " + Eval("Advanced_rep") %>'> </asp:Label>
                        <asp:Label ID="Label8" runat="server" class="exercise-label" Text='<%# "Rest between set: " + Eval("rest_between_set") %>'> </asp:Label>
                        <asp:Label ID="Label9" runat="server" class="exercise-label" Text='<%# "Exercise set: " + Eval("exercise_set") %>'> </asp:Label>
                        <asp:Label ID="Label10" runat="server" class="exercise-label" Text='<%# "Description: " + Eval("exercise_desc") %>'> </asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:DataList ID="DataList3" runat="server">
                <ItemTemplate>
                    <div class="exercise-container">
                        <asp:Label ID="Label11" runat="server" class="exercise-label" Text='<%# "Muscle group name: " + string.Join(", ", (string[])Eval("items")) %>'></asp:Label>
                        <br />
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
