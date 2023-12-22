<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FoodDetails.aspx.cs" Inherits="C2.DreamFitness.FoodDetails" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /* ... Các phần style từ trang master ... */

        .main-content {
            display: grid;
            grid-template-columns: 1fr 1fr; /* Chia layout thành 2 cột bằng nhau */
            gap: 20px;
            padding: 20px;
            background-color: #333; /* Màu nền đen cho chế độ tối */
            color: #fff; /* Màu chữ trắng cho chế độ tối */
            border-radius: 10px; /* Góc bo tròn cho toàn bộ khối */
        }

        .exercise-container {
            width: 100%;
            display: flex;
            flex-direction: column;
            text-align: left;
            padding: 20px;
            border-radius: 10px; /* Góc bo tròn */
            background-color: #fff; /* Màu nền trắng cho phần thức ăn */
            color: #000; /* Màu chữ đen cho phần thức ăn */
        }

        .exercise-image {
            max-width: 100%;
            max-height: 600px;
            display: block;
            margin-left: auto;
            margin-right: auto;
            border-radius: 10px; /* Góc bo tròn cho hình ảnh */
        }

        .exercise-label {
            margin-top: 10px;
            margin-left: 0;
            text-align: left;
        }

        .context {
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            color: #000;
        }

        /* Màu sắc và kiểu hiển thị mới cho chế độ tối */
        @media (prefers-color-scheme: dark) {
            .exercise-container {
                background-color: #333; /* Màu nền đen cho chế độ tối */
                color: #fff; /* Màu chữ trắng cho chế độ tối */
            }

            .context {
                background-color: #333;
                color: #fff;
            }
        }
    </style>
    <body>
        <div class="container">
            <div class="main-content">
                <asp:DataList ID="DataList1" runat="server" CssClass="Catego" CellPadding="0" CellSpacing="0">
                    <ItemTemplate>
                        <div class="exercise-container">
                            <asp:Image ID="Image1" runat="server" CssClass="exercise-image" ImageUrl='<%# Eval("food_image")%>' />
                            <asp:Label ID="Label1" runat="server" Style="font-size: 30px; text-align: center; color: black; margin-top: 20px;" Text='<%# Eval("food_item_name") %>'></asp:Label>
                            <div class="exercise-container">
                                <asp:Label ID="Label3" class="exercise-label" runat="server" Text='<%# "Protein: " + Eval("food_item_proteins") %>'></asp:Label>
                                <asp:Label ID="Label2" runat="server" class="exercise-label" Text='<%# "Carbohydrates: " + Eval("food_item_carbonhydrates") %>'></asp:Label>
                                <asp:Label ID="Label4" runat="server" class="exercise-label" Text='<%# "Calories: " + Eval("food_item_calories") %>'></asp:Label>
                                <asp:Label ID="Label5" runat="server" class="exercise-label" Text='<%# "Description: " + Eval("Food_item_desc") %>'></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <div class="context">
                    <asp:DataList ID="DataList2" runat="server" CssClass="Catego" CellPadding="0" CellSpacing="0">
                        <ItemTemplate>
                            <div class="exercise-container">
                                <asp:Label ID="Label1" runat="server" Style="font-size: 30px; color: black; text-align: center;" Text='<%# Eval("recipe_name") %>'></asp:Label>
                                <asp:Label ID="Label6" class="exercise-label" runat="server" Text='<%# "Recipe description: " + Eval("recipe_desc") %>'></asp:Label>
                                <asp:Label ID="Label8" class="exercise-label" runat="server" Text='<%# "Recipe type: " + Eval("recipe_type") %>'></asp:Label>
                                <asp:Label ID="Label7" class="exercise-label" runat="server" Text='<%# "How to cook: " %>'></asp:Label>
                                <asp:Label ID="Label10" runat="server" Text='<%# "" + Eval("recipe_how_to").ToString().Replace("\\n", Environment.NewLine) %>' CssClass="exercise-label" style="white-space: pre;"></asp:Label>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
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
