<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyWorkouts.aspx.cs" Inherits="C2.DreamFitness.MyWorkouts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body class="background">
        <div class="container" style="display: flex; justify-content: space-between;">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Vertical">
                <ItemTemplate>
                    <div class="container d-flex justify-content-between mt-5">
                        <div style="width: 400px; background-color: black; border-radius: 10px;">
                            <asp:LinkButton ID="myLinkButton" runat="server" Style="text-decoration: none; color: #FFFFFF;" CommandArgument='<%# Eval("workout_template_id") %>' OnClick="btnXemThongTin_Click">
                                <div class="white-border" style="height: 100px; display: flex; align-items: center; justify-content: center;">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("workout_template_name") %>' Style="font-size: 17px; font-weight: bold;"></asp:Label>
                                </div>
                            </asp:LinkButton>
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
