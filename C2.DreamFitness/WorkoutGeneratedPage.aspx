<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WorkoutGeneratedPage.aspx.cs" Inherits="C2.DreamFitness.WorkoutGeneratedPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <div class="container">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Vertical">
                <ItemTemplate>
                    <div>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
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
