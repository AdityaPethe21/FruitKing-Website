<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="CSS/FINAL.css" rel="stylesheet" />
</head>
<body style="overflow:scroll;">
    <%--Header--%>

        <header id="header">
            <div class="header-content-div">
                <a href="Default.aspx">
                    <img
                        src="Images/Juice.png"
                        alt="Company Logo"
                        id="header-img" />
                </a>

                <nav id="nav-bar">
                    <a href="Default.aspx" class="nav-link">ABOUT</a>
                    <a href="Default.aspx" class="nav-link">PRODUCTS</a>
                    <a href="Default.aspx" class="nav-link">SERVICES</a>
                    <a href="Default.aspx" class="nav-link">BENEFITS</a>
                    <a href="Login.aspx" class="nav-link">LOGIN</a>
                    <a href="Register.aspx" class="nav-link">REGISTER</a>
                </nav>
            </div>
        </header>

    <%--Header--%>


    <%--Register Form--%>

    <div class="MainBody MainBodyRegister">
        <div class="content contentRegister">
            <!--Image & Title-->
            <img src="https://lh3.googleusercontent.com/a-/AOh14Gj99VObFyE8W_h8RrcwZO_aYiIHu5AAa_XpnOym=s600-k-no-rp-mo" />
            <div class="text">Register</div>

            <form id="form1" runat="server">

                <div class="field">
                    <span class="fa fa-user"></span>
                    <asp:TextBox ID="username" Class="" placeholder="Enter your Username" runat="server"></asp:TextBox>

                </div>


                <div class="field">
                    <span class="fa fa-lock"></span>
                    <asp:TextBox ID="email" Class="" placeholder="Enter your Email" runat="server" TextMode="Email"></asp:TextBox>

                </div>

                <div class="field">
                    <span class="fa fa-lock"></span>
                    <asp:TextBox ID="pwd" Class="" placeholder="Enter your Password" runat="server" TextMode="Password"></asp:TextBox>

                </div>
                <div class="field">
                    <span class="fa fa-lock"></span>
                    <asp:TextBox ID="cnfmPwd" Class="" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>

                </div>
                <asp:Label ID="MsgLabel" runat="server" Text="Label" Style="font-size:15px;"></asp:Label>


                <asp:Button ID="SignUp" runat="server" Text="SignUp" OnClick="Button1_Click" />
                <asp:Button ID="SignIn" runat="server" Text="SignIn" OnClick="SignIn_Click" />
<%--                <asp:HyperLink ID="SignIn" runat="server" NavigateUrl="~/Login.aspx">SignIn</asp:HyperLink>--%>


                <div class="or">Or</div>
                <div class="icon-button">
                    <span class="facebook"><i class="fa fa-facebook"></i></span>
                    <span><i class="fa fa-google"></i></span>
                </div>

            </form>
        </div>

    </div>

    <%--Footer--%>


<%--    <footer>
        <div class="footer-item-container">
        </div>

        <hr style="height: 1px; margin-top: 20px" />

        <div class="contact-icontext-container">
            <p class="contact-text">Contact us on</p>

            <div class="contact-icon-container">
                <div>
                    <img class="contact-icon" src="/Images/whatsapps.png" alt="" />
                    <label class="contact-icon-text">+91 866831109</label>
                </div>
                <div>
                    <img class="contact-icon" src="/Images/gmail.png" alt="" />
                    <label class="contact-icon-text">fruitking@gmail.com</label>
                </div>
            </div>
        </div>

        <div class="follow-icontext-container">
            <p class="follow-text">Follow us on</p>
            <div class="follow-icon-container">
                <img class="follow-icon" src="/Images/instagrams.png" alt="" />
                <img class="follow-icon" src="/Images/facebook.png" alt="" />
                <img class="follow-icon" src="/Images/linkin.png" alt="" />
                <img class="follow-icon" src="/Images/twitter.png" alt="" />
            </div>
        </div>

        <hr style="height: 1px; margin-top: 25px; margin-bottom: 5px" />
        <div class="copyright">
            Copyright@2023 - Fruit King. All rights reserved.
        </div>
    </footer>--%>

    <%--Footer--%>


</body>
</html>
