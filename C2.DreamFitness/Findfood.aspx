<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="C2.DreamFitness.App_Start.Findfood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <link rel="stylesheet" href="src/excercise.css">
        <div class="blog-sec">
            <h2 style="text-align: center; flex-direction: column; align-items: center;">Find Meals For Your Ingredients</h2>
            <blockquote style="text-align: center; flex-direction: column; align-items: center;">
                Real food doesn't have ingredients, real food is ingredients.<br>
                <cite>- Jamie Oliver</cite>
            </blockquote>
            <div class="meal-search-box">
                <asp:TextBox class="search-control" ID="txtSearch" runat="server" placeholder="Enter an ingredient"></asp:TextBox>
                <asp:Button ID="btnSearch" class="btnsearch1" runat="server" OnClick="btnSearch_Click"></asp:Button>
            </div>
            <div>
                <asp:DataList ID="DataList1" runat="server" Style="justify-content: space-between;" RepeatColumns="3" RepeatDirection="vertical">
                    <ItemTemplate>
                        <div class="" style="margin: 20px; width: auto">
                            <asp:Image ID="image1" runat="server" Style="width: auto; height: 325px" ImageUrl='<%# Eval("food_image")%>'></asp:Image>
                            <asp:LinkButton ID="foodID" runat="server" OnClick="btn_ThongTinFood" Style="display: flex; flex-direction: column; align-items: center;" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>'></asp:LinkButton>
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
