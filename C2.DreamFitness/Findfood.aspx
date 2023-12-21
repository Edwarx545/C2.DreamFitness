<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="C2.DreamFitness.App_Start.Findfood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .foodbutton {
        display: flex;
        flex-direction: column;
        align-items: center;

        padding: 10px;
        text-decoration: none;
        border-radius: 5px;
        background-color: transparent;
        color: #fff;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }

    .foodbutton:hover {
        background-color: #6c757d;
        color: #fff;
    }
   .btnsearch1 {
    background-image: url('img/searchicon.png');
    background-size: 70% 70%;
    background-repeat: no-repeat; 
    background-position: center;
    text-align: center;
    text-decoration: none;
    background-color: #0d6efd;
    padding: 0.5rem 1.5rem; 
    font-size: 1rem; 
    font-family: inherit;
    outline: 0;
    border: 1px solid #0d6efd;
    border-top-right-radius: 2rem;
    border-bottom-right-radius: 2rem;
    transition: all 0.4s linear;
    }

    .intrott {
        text-align: center;
    }

    .meal-search-box {
        width: 100%;
        max-width: 600px; 
        margin: 0 auto;
        display: flex;
        color: black;
    }

    .search-control {
        padding: 0.5rem 1rem; 
        font-size: 0.9rem; 
        font-family: inherit;
        outline: 0;
        border: 1px solid var(--tenne-tawny);
        color: var(--tenne-tawny);
        flex: 1;
        border-top-left-radius: 2rem;
        border-bottom-left-radius: 2rem;
    }

    .search-control::placeholder {
        color: var(--tenne-tawny);
    }
    .search-control::placeholder {
    color: #0d6efd;
}

    </style>
    <body>
        
        <div class="blog-sec">
            <h2 style="text-align: center; flex-direction: column; align-items: center;">Find Meals For Your Ingredients</h2>
            <blockquote class="intrott">
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
                            <asp:Image ID="image1" runat="server" Style="width: 500px; height: 325px" ImageUrl='<%# Eval("food_image")%>'></asp:Image>
                            <asp:LinkButton ID="foodID" runat="server" OnClick="btn_ThongTinFood" Style="display: flex; flex-direction: column; align-items: center; " CssClass="foodbutton" Text='<%# Eval("food_item_name") %>' CommandArgument='<%# Eval("food_item_id") %>'></asp:LinkButton>
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
chatbotId="MarFQjhQBviYq1HEv3c2r"
domain="www.chatbase.co"
defer>
</script>
</asp:Content>
