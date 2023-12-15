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
                <asp:Button ID="btnSearch" class="btnsearch1" runat="server" OnClick="btnSearch_Click"></asp:Button>
            </div>
            <div>
                <asp:DataList ID="DataList9" runat="server" Style="justify-content: space-between;" RepeatColumns="3" RepeatDirection="Vertical">
                    <ItemTemplate>
                        <div class="" style="margin: 20px; width: auto">
                            <asp:Image ID="Image1" runat="server" Style="width: auto; height: 325px" ImageUrl='<%# Eval("exercise_img")%>'></asp:Image>
                            <asp:LinkButton ID="exerciseid" runat="server" OnClick="btn_ThongTinExercise" Style="display: flex; flex-direction: column; align-items: center;" Text='<%# Eval("exercise_name") %>' CommandArgument='<%# Eval("exercise_id") %>'></asp:LinkButton>
                            <p></p>
                            <asp:Label ID="Label3" runat="server" Text='<%# "Gender: " + Eval("exercise_gender") %>'></asp:Label>
                            <p></p>
                            <asp:Label ID="Label2" runat="server" class="" Text='<%# "Age: " + Eval("exercise_age") %>'> </asp:Label>
                            <p></p>
<%--                            <asp:Label ID="Label4" runat="server" class="" Text='<%# "Muscle Group: " + Eval("muscle_group_name") %>'> </asp:Label>
                            <p></p>--%>
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
