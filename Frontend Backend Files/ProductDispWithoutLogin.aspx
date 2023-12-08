<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductDispWithoutLogin.aspx.cs" Inherits="ProductDispWithoutLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
    <link href="CSS/FINAL.css" rel="stylesheet" />
   <link href="CSS/DispProdFinal.css" rel="stylesheet" />
    <%--<link href="CSS/NavBar2.css" rel="stylesheet" />--%>
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
                    <a href="Default.aspx" class="nav-link">ABOUT</a>
                    <a href="ProductDispWithoutLogin.aspx" class="nav-link">PRODUCTS</a>
                    <a href="Default.aspx" class="nav-link">SERVICES</a>
                    <a href="Default.aspx" class="nav-link">BENEFITS</a>

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


        <section id="varieties" class="sec-padding">

            <h3 class="section-heading section-heading-varities">PRODUCTS</h3>

            <div class="sec-content-div sec-content-div-varities flexible">
                <asp:Repeater ID="ProductRepeater" runat="server">
                    <ItemTemplate>

                        <a href="ViewProduct.aspx?PID=<%#Eval("PID") %>" style="text-decoration: none;">
                            <div class="tile tile-varities" >
                                <img style="width:200px; height:200px;" src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="" style="width: 100px; height: 100px;" />
                                <h4 class="proName"><%#Eval("PName") %></h4>
                                <div class="probrand" style="font-size:16px;"><%#Eval("PBrand") %></div>
                                <span class="DiscountPrice" style="font-size:18px;">Rs.<%#Eval("PSelPrice","{0:0.00}") %></span>
                                <p style="font-size:14px; word-wrap:break-word;"><%#Eval("PDescription") %></p>

                            </div>

                        </a>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>


    </form>
</body>
</html>
