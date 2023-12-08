<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="CSS/FINAL.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function myfunction() {
            $("#cart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });

    </script>
    <style>
        .SuccessTxt {
            
            font-size:15px;
            text-align:center;
            position:relative;
            left:43%;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <%-- Header --%>

        <header id="header">
            <div class="header-content-div">
                <a href="Default.aspx">
                    <img
                        src="Images/Juice.png"
                        alt="Company Logo"
                        id="header-img" />
                </a>

                <nav id="nav-bar">
                    <a href="Home.aspx" class="nav-link">HOME</a>
                    <a href="about.aspx" class="nav-link">ABOUT</a>
                    <a href="DisplayProduct.aspx" class="nav-link">PRODUCTS</a>
                    <a href="Service.aspx" class="nav-link">SERVICES</a>
                    <a href="Benefits.aspx" class="nav-link">BENEFITS</a>


                    <a class="nav-link">
                        <asp:Button ID="Cart" runat="server" Text="CART" Style="background-color: transparent; border: none;" OnClick="Cart_Click"></asp:Button>
                        <asp:Label ID="pcount" runat="server" Text="0" Style="background-color: palegreen; border-radius: 50%; padding: 4px 8px; z-index: -1;"></asp:Label>
                    </a>
                    <a class="nav-link">
                        <asp:Button ID="LogIn" runat="server" Text="LOGIN" OnClick="LogIn_Click"></asp:Button>
                        <asp:Button ID="LogOut" runat="server" Text="LOGOUT" OnClick="LogOut_Click"></asp:Button>
                    </a>


                </nav>
            </div>
        </header>

        <%-- Header --%>




        <div>
            <h1 style="text-align: center;">Welcome To FruitKing</h1>

            <asp:Label ID="SuccessTxt" CssClass="SuccessTxt" runat="server"></asp:Label>


            <br />


        </div>

        <section id="home-sec" class="flexible home-sec">
            <div class="eye-grabber-img" style="margin-top: 50px;">
                <img src="Images/AllJiuce.jpg" style="height: 350px; width: 600px; max-width: 100%" alt="Image of Apples" />
            </div>
            <div class="eye-grabber">
                <h1>Fresh,Healthy, Heavenly.</h1>
                <h2>100% Organic, vivid varieties of fruit juices made with love & hygiene by FruitKing.
                </h2>

                <asp:Button ID="BuyNow" CssClass="btn" runat="server" Text="Buy Now" OnClick="BuyNow_Click" />
            </div>
        </section>

        
            <section class="sec-padding" id="contact">
                <h3 class="section-heading">CONTACT</h3>
                <div class="sec-content-div flexible ">
                    <h6>To make an order or just to know more contact us.........</h6>
                   
                </div>
                <hr style="height: 1px; margin-bottom: 5px" />
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
            </section>

    </form>


</body>
</html>
