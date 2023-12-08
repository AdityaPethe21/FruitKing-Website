<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ViewProduct.aspx.cs" Inherits="ViewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="CSS/ViewProduct.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="product">

        <div class="product__photo">
            <div class="photo-container">
                <div class="photo-main">
                    <asp:Repeater ID="ImageRepeater" runat="server">
                        <ItemTemplate>
                                <img src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" onerror="this.src='Images/support.png'" />
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>


        <div class="product__info">
            <asp:Repeater ID="ProductDetailRepeater" runat="server">
                <ItemTemplate>

                    <div class="title">
                        <h1><%#Eval("PName") %></h1>
                        <span><%#Eval("PBrand") %></span>
                    </div>
                    
                    <div class="price">
                        Rs. <span style="font-size:35px;"><%#Eval("PSelPrice","{0:0.00}") %></span>
                    </div>

                    <div class="variant">
                        <h3>SELECT A SIZE</h3>
                        <div>

                            <asp:RadioButtonList ID="RadioButtonListSize" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem  Value="250" Text="250Ml"></asp:ListItem>
                                <asp:ListItem  Value="350" Text="350Ml"></asp:ListItem>
                            </asp:RadioButtonList>

                        </div>

                    </div>

                    <div class="description">
                        <h3>DESCRIPTION</h3>
                        <p>
                            <%#Eval("PDescription") %>
                        </p>
                       <h3>DETAILS</h3>
                        <p>
                            <%#Eval("PProductDetails") %>
                        </p>
                    </div>

                    <div >
                        <p><%#((int)Eval("FreeDelivery")==1?"Free Delivery":"") %></p>
                        <p><%#((int)Eval("COD")==1?"Cash on Delivery":"") %></p>
                    </div>


                        <asp:Button ID="AddToCart" CssClass="buy--btn" runat="server" Text="Add To Cart" OnClick="AddToCart_Click" /><br />
                        <asp:Label ID="lblError" Style="color:darkred;" runat="server" Text=""></asp:Label>
                  
                </ItemTemplate>
            </asp:Repeater>
        </div>


    </section>




</asp:Content>

