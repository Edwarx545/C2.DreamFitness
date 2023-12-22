<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExerciseDetails.aspx.cs" Inherits="C2.DreamFitness.ExerciseDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Thêm các đoạn script và style nếu cần -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

        .details-container {
            width: 100%;
            display: flex;
            flex-direction: column;
            text-align: left;
            padding: 20px;
            border-radius: 10px; /* Góc bo tròn */
            background-color: #fff; /* Màu nền trắng cho phần thông tin chi tiết */
            color: #000; /* Màu chữ đen cho phần thông tin chi tiết */
        }

        /* Màu sắc và kiểu hiển thị mới cho chế độ tối */
        @media (prefers-color-scheme: dark) {
            .exercise-container {
                background-color: #333; /* Màu nền đen cho chế độ tối */
                color: #fff; /* Màu chữ trắng cho chế độ tối */
            }

            .details-container {
                background-color: #333;
                color: #fff;
            }
        }
    </style>
    <div class="container">
        <div class="main-content">
            <asp:DataList ID="DataList1" runat="server" CssClass="Catego" CellPadding="0" CellSpacing="0">
                <ItemTemplate>
                    <div class="exercise-container">
                        <asp:Image ID="Image1" runat="server" CssClass="exercise-image" ImageUrl='<%# Eval("exercise_img")%>' />
                        <asp:Label ID="Label1" runat="server" Style="font-size: 30px; text-align: center; color: black; margin-top: 20px;" Text='<%# Eval("exercise_name") %>'></asp:Label>
                        <asp:Label ID="Label3" class="exercise-label" runat="server" Text='<%# "Gender: " + Eval("exercise_gender") %>'></asp:Label>
                        <asp:Label ID="Label2" runat="server" class="exercise-label" Text='<%# "Age: " + Eval("exercise_age") %>'> </asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <div class="details-container">
                <asp:DataList ID="DataList2" runat="server" CssClass="Catego" CellPadding="0" CellSpacing="0">
                    <ItemTemplate>
                        <div class="exercise-container">
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

                        </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
</asp:Content>
