﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="C2.DreamFitness.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="src/login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <style>
        .small-intro-text {
            color: rgb(205, 204, 204);
        }

        .white-border {
            border: 1px solid rgb(233, 103, 103);
            border-radius: 10px;
            /* Adjust the value to control the roundness of the corners */
            padding: 10px;
            /* Add some padding to the div for visual effect */
        }

            .white-border:hover {
                background-color: #097fd9;
                border: 1px solid #097fd9;
            }

                .white-border:hover p {
                    color: white;
                }
    </style>
</head>
<body style="background-color: rgb(21, 21, 21); color: white; font-family: Verdana, Geneva, Tahoma, sans-serif;">
     <section>
		<div id="banner">
			<img src="/img/logo.png">
		</div>
        <div class="form-box">
            <div class="form-value">
                <form action="" runat="server">
                    <h2>Login</h2>
                    <div class="inputbox">
                        <ion-icon name="mail-outline"></ion-icon>
                        <asp:TextBox ID="Login_email" runat="server" type="email" required />
                        <label for="">Email</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <asp:Textbox ID="Login_password" runat="server" type="password" required />
                        <label for="">Password</label>
                    </div>
                    <div class="forget">
                        <label for=""><input type="checkbox" />Remember Me&nbsp;&nbsp;&nbsp;&nbsp; <a href="forgot.html">Forgot Password?</a></label>
                    </div>
                    <div>
                    <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Visible="False" /> </div>
                    <div> <asp:Button ID ="login1" runat="server" Text="Login" Height="30px" Width="310px" OnClick="Btn_login_Click" /> </div>
                    <div class="register">
                        <p>Don't have a account' <a href="Register.aspx">Register</a></p>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>
