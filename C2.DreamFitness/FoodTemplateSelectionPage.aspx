<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FoodTemplateSelectionPage.aspx.cs" Inherits="C2.DreamFitness.FoodTemplateSelectionPage" %>
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
        .link-button{
            text-decoration: none;
        }
        .ex-img {
            border-radius:10px;
        }
    </style>
    <body class="background">
    <div class="container">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Vertical">
            <ItemTemplate>
                 <div class="d-flex" style="text-align: left; height: 200px;width: 1500px; color: white; margin-top: 100px;">
                    <div class="workout-image child">
                        <a href="">
                           <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("DietPic")%>' CssClass="ex-img" />
                        </a>
                    </div>
                    <div class="child" style="width: 800px; margin-left: 50px;">
                        <asp:LinkButton ID="workoutName" runat="server" OnClick="btnXemThongTin_Click" Text='<%# Eval("DietName") %>' CommandArgument='<%# Eval("DietID") %>' CssClass="blueText link-button" Font-Size="20" ></asp:LinkButton>
                        <div class="d-flex rating mt-3">
                            <p style="text-align: center; margin-right:10px">Calories:&nbsp;</p>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("DietCalories") %>'></asp:Label>
                        </div>
                        <div class="d-flex" style="white-space: nowrap;">
                        </div>
                        <div class="d-flex" style="color: rgb(164, 164, 164);">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("DietDesc") %>' CssClass="text-truncate"></asp:Label>
                        </div>
                    </div>
                </div>
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

