<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="C2.DreamFitness.App_Start.Findexercise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <style>
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
        border: 1px solid #0d6efd;
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
    .section-title {
    text-align: center;
    font-size: 140px;
    display: block;
    color: #2c234d;
    font-weight: 700;
    text-transform: uppercase;
    color: #fff;
    -webkit-text-stroke: 1px #f6f7f8;
    -webkit-text-fill-color: transparent;
}
        </style>
        
        <div class="blog-sec">
            <h1 class="section-title">Excercise</h1>
            <div class="meal-search-box">
                <asp:TextBox ID="txtSearch" class="search-control" runat="server" placeholder="Enter an excercise"></asp:TextBox>
                <asp:Button ID="btnSearch" class="btnsearch1" runat="server" OnClick="btnSearch_Click"></asp:Button>
            </div>
            <div>
                <asp:DataList ID="DataList5" runat="server" Style="justify-content: space-between;" RepeatColumns="3" RepeatDirection="Vertical">
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
</asp:Content>
