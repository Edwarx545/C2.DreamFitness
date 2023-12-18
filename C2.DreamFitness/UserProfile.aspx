<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProFile.aspx.cs" Inherits="C2.DreamFitness.UserProFile" EnableViewState="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </header>
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

        .auto-style1 {
            margin-right: 107px;
        }

        .card.overflow-hidden {
            background-color: transparent;
            border: 5px solid #6c757d;
            border-radius: 5px; /* Độ cong của góc viền (nếu bạn muốn) */
        }

        .list-group-item.list-group-item-action.active {
            background-color: #6c757d;
        }

        .list-group-item.list-group-item-action {
            background-color: transparent;
            color: white;
            border: 1px solid transparent; /* Độ dày và màu của viền xung quanh */
        }

        .form-label {
            color: white;
        }

        .btn-update {
            background-color: #6c757d;
            color: white;
            border: 0px solid transparent;
            border-color: #6c757d;
        }

        .btn-default {
            background-color: #6c757d;
            color: white;
            border: 0px solid transparent;
            border-color: #6c757d;
        }

        .btn-payment {
            background-color: #6c757d;
            color: white;
        }

        .btn-update:hover {
            background-color: #6c757d;
            color: white;
            border: 0px solid transparent;
            border-color: #6c757d;
        }

        .btn:hover {
            background-color: #6c757d;
        }

        .single-select {
            color: white;
        }
    </style>
    <body>
        <div class="container light-style flex-grow-1 container-p-y">
            <h4 class="font-weight-bold py-3 mb-4">Account settings
            </h4>
            <div class="card overflow-hidden">
                <div class="row no-gutters row-bordered row-border-light">
                    <div class="col-md-3 pt-0">
                        <div class="list-group list-group-flush account-settings-links">
                            <a class="list-group-item list-group-item-action active" data-toggle="list" href="#Profile">Profile</a>
                            <a class="list-group-item list-group-item-action" data-toggle="list" href="#Payment">Payment</a>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="tab-content">
                            <div class="tab-pane fade active show" id="Profile">
                                <hr class="border-light m-0">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label class="form-label">Name</label>
                                        <asp:TextBox ID="tbname" runat="server" CssClass="form-control" Text='<%# Bind("user_name") %>'></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">E-mail</label>
                                        <asp:TextBox ID="tbemail" runat="server" CssClass="form-control mb-1" Text='<%# Bind("user_email") %>'></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Birthday</label>
                                        <asp:TextBox ID="TextBoxBirthday" runat="server" CssClass="form-control"
                                            Text='<%# Bind("user_birthday", "{0:yyyy-MM-dd}") %>'></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Phone</label>
                                        <asp:TextBox ID="btphone" runat="server" CssClass="form-control" Text='<%# Bind("user_phone") %>'></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Current password</label>
                                        <asp:TextBox ID="btcurrentpassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">New password</label>
                                        <asp:TextBox ID="btnewpassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                    </div>

                                    <asp:Label ID="lblErrorMessage" runat="server" EnableViewState="true" ForeColor="Red" Visible="False" />

                                    <div class="text-right mt-3">
                                        <asp:Button ID="btnUpdate" runat="server" Text="Save changes" OnClick="btn_update_Onclick"
                                            CssClass="btn btn-update" />
                                        <button type="button" class="btn btn-default" onclick="cancelButtonClicked()">Cancel</button>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="Payment">
                                <div class="card-body pb-2">
                                    <div class="form-group">
                                        <label class="form-label">E-mail</label>
                                        <asp:TextBox ID="tbemail1" runat="server" CssClass="form-control mb-1" Text='<%# Bind("user_email") %>'></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Membership Duration</label>
                                        <asp:CheckBoxList ID="selectedMonths" runat="server" CssClass="single-select">
                                            <asp:ListItem Text="&nbsp;1 Month - 1$" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="&nbsp;3 Months - 3$" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="&nbsp;6 Months - 6$" Value="6"></asp:ListItem>
                                            <asp:ListItem Text="&nbsp;12 Months - 12$" Value="12"></asp:ListItem>
                                        </asp:CheckBoxList>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-right mt-3">
                                            <asp:Button ID="btnPayment" runat="server" Text="Payment" OnClick="btnPayment_Click" CssClass="btn btn-payment" />
                                            <asp:Label ID="lblPaymentStatus" runat="server" Visible="false" ForeColor="Green" Text="Payment Successful!"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.single-select input[type="checkbox"]').on('change', function () {
                    $('.single-select input[type="checkbox"]').not(this).prop('checked', false);
                });
            });
        </script>
        <script>
            function cancelButtonClicked() {
                // Replace 'home' with the actual URL you want to navigate to
                window.location.href = 'HomePage.aspx';
            }
        </script>

    </body>
    <script>
        $(function () {
            $(".datepicker").datepicker({
                dateFormat: 'yy-mm-dd' // Set the desired date format
            });
        });
    </script>
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
