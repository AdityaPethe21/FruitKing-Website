<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fruit King</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="CSS/FINAL.css" rel="stylesheet" />
    
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
                    <%--<a href="Default.aspx" class="nav-link">HOME</a>--%>
                    <a href="#about" class="nav-link">ABOUT</a>
                    <a href="#varieties" class="nav-link">PRODUCTS</a>
                    <a href="#our-service" class="nav-link">SERVICES</a>
                    <a href="#benefits" class="nav-link">BENEFITS</a>

                    <a class="nav-link">
                        <asp:Button ID="Cart" runat="server" Text="CART" Style="background-color: transparent; border: none;" OnClick="Cart_Click"></asp:Button>
                        <asp:Label ID="pcount" runat="server" Text="0" Style="background-color: palegreen; border-radius: 50%; padding: 4px 8px; z-index: -1;"></asp:Label>
                    </a>
                    <asp:Label ID="LOGIN" runat="server">
                        <a href="Login.aspx" id="LogIN" class="nav-link">LOGIN</a>
                    </asp:Label>
                    <asp:Label ID="REGISTER" runat="server">
                        <a href="Register.aspx" id="Register" class="nav-link">REGISTER</a>
                    </asp:Label>
                    <a class="nav-link">
                        <asp:Button ID="LOGOUT" runat="server" Text="LOGOUT" OnClick="LogOut_Click" Height="23px"></asp:Button>
                    </a>

                </nav>
            </div>
        </header>

        <%-- Header --%>


        <main>

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

            <section id="about" class="sec-padding">
                <h3 class="section-heading">ABOUT US</h3>
                <div class="sec-content-div flexible">
                    <p>
                        We are a group of people with decades of experience in making and
            selling fruit juices. We know what a good juice looks like & tastes like and how they
            are made. This essential fruit juice requires a proper ingredients that are rich in organic matter apart from needing proper
            reciepe and storage facilities. Lucky for them we live in Nagpur
            which is proudly known as Orange city as well as Diamond Capital of India is also home to
            healthy juices for which the state is very famous
            across globe. The main factor which influence temperate fruit
            bearing trees is soil, climate and environment which are highly
            favorable and unparalleled in the province of Kashmir. Kashmiri
            apples a unique look, taste, flavor, size and color.
                    </p>
                    <img src="Images/MakeJuice.jpg" style="width: 1000px;" alt="A man plucking apples from the tree" />
                </div>
            </section>

            <section id="varieties" class="sec-padding">
                <h3 class="section-heading">VARIETIES</h3>
                <div class="sec-content-div flexible">

                    <div class="tile">
                        <img src="Images/VarJuice.jpg" alt="photo of amber apples" style="height: 250px;" />
                        <h4>Fruit Juices</h4>
                        <p>
                            This red, medium-sized fruit becomes fully ripe in mid-October. It
              is mostly grown in Shopian and Kulgam.
                        </p>
                        <asp:LinkButton ID="ViewMore" runat="server" OnClick="ViewMore_Click">View More....</asp:LinkButton>

                    </div>

                    <div class="tile">
                        <img
                            src="Images/VegeJuice.jpg"
                            alt="photo of american trel apples" style="height: 250px;" />
                        <h4>Vegetable Juices</h4>
                        <p>
                            A small, rounded, very crispy and sweet fruit variety that ripens
              in mid-September.
                        </p>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="ViewMore_Click">View More....</asp:LinkButton>

                    </div>

                    <div class="tile">
                        <img src="Images/Chopped.jpg" alt="photo of red delicious apple" style="height: 250px;" />
                        <h4>Fruit Bites</h4>
                        <p>
                            A very popular and widely cultivated variety of apple that ripens
              in mid-September. Its flesh is greenish white, grainy and juicy.
                        </p>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="ViewMore_Click">View More....</asp:LinkButton>

                    </div>

                    <div class="tile">
                        <img src="Images/VeggBites.jpg" alt="photo of Maharaej apples" style="height: 250px;" />
                        <h4>Veggie Bites</h4>
                        <p>
                            A large apple with red and green color. It tastes a bit sour but
              sweetens with time and is available by late October.
                        </p>
                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="ViewMore_Click">View More....</asp:LinkButton>

                    </div>

                    <div class="tile">
                        <img src="Images/smothie.jpg" alt="photo of Hazratbael apples" style="height: 250px;" />
                        <h4>Smoothies</h4>
                        <p>
                            A quickly perishable variety that ripens in early July. It is the
              oldest variety of apples cultivated in the valley and is mostly
              consumed domestically
                        </p>
                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="ViewMore_Click">View More....</asp:LinkButton>

                    </div>

                    <div class="tile">
                        <img src="Images/milskahe.jpg" alt="photo of Golden Delicious apples" style="height: 250px;" />
                        <h4>Milkshakes</h4>
                        <p>
                            A variety with comparatively longer shelf life, it is crispy,
              juicy and has thick greenish-white flesh which turns golden upon
              ripening. It is available till January.
                        </p>
                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="ViewMore_Click">View More....</asp:LinkButton>

                    </div>

                </div>
            </section>

            <section id="our-service" class="sec-padding">
                <h3 class="section-heading">OUR SERVICE</h3>
                <div class="sec-content-div">
                    <div class="bars">
                        <div class="icon-container">
                            <img src="https://i.ibb.co/w6H542X/Fresh.png" alt="" />
                        </div>
                        <div class="txt-container">
                            <h5>Fresh</h5>
                            <p>We deliver fresh apples with a 100% guarantee of freshness.</p>
                        </div>
                    </div>
                    <div class="bars">
                        <div class="icon-container">
                            <img src="https://i.ibb.co/FKNq4Qr/delivered.png" alt="" />
                        </div>
                        <div class="txt-container">
                            <h5>Fast</h5>
                            <p>
                                We deliver your orders as fast as possible, delivery procedure
                begins as soon as apple is plucked from tree.
                            </p>
                        </div>
                    </div>
                    <div class="bars">
                        <div class="icon-container">
                            <img src="https://i.ibb.co/HHQK1wV/happy.png" alt="" />
                        </div>
                        <div class="txt-container">
                            <h5>Satisfying</h5>
                            <p>
                                We guarantee 100% customer satisfaction. We do our best to make
                your purchase experience smooth. But if we mess up somehow you
                will get compensated for every inconvenience.
                            </p>
                        </div>
                    </div>
                </div>
            </section>

            <section id="benefits" class="sec-padding">
                <h3 class="section-heading">BENEFITS</h3>
                <div class="sec-content-div flexible">
                    <iframe
                        id="video"
                        width="560"
                        title="Benefits of Apple"
                        height="315"
                        src="https://www.youtube.com/embed/W_JOJNztrnI"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen="true"></iframe>
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

        </main>



    </form>

</body>
</html>
