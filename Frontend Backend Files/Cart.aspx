<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="padding: 50px;">

        <div class="col" style="border: 1px solid black;">
            <h3 >My Product Cart</h3>
            <h4 runat="server" id="h3Items" ></h4>
            <%-- cart details start --%>
            <asp:Repeater ID="CartRepeater" runat="server">
                <ItemTemplate>

                    <div class="media">
                        <div class="media-left">
                            <a href="ViewProduct.aspx?PID=<%# Eval("PID")%>" target="_blank">
                                <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extention") %>" alt="<%# Eval("Name") %>" onerror="this.src='Images/dark-mode.png' style="height: 150px; width: 100px" />
                             </a>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>

            <div class="media-body">
                <h4><%# Eval("PName") %></h4>
                <p><%# Eval("SizeName") %></p>
                <span><%# Eval("PSelPrice") %></span>
                <p>
                    <asp:Button ID="RemoveFromCart" CssClass="buy--btn" runat="server" Text="Remove" OnClick="RemoveFromCart_Click" /><br />

                </p>

            </div>
            <%-- cart details end --%>
        </div>





        <div class="col">
            <%-- ----------------------------- --%>

            <div>
                <h5>Price Details</h5>
                <div>
                    <label>Cart Total</label>
                    <span>RS. 200</span>
                </div>

                <div>
                    <label>Delivery Charges</label>
                    <span>RS. 50</span>
                </div>

            </div>

            <%-- ----------------------------- --%>

            <div>
                <div>
                    <label>Total Pay</label>
                    <span>RS. 250</span>
                </div>

                <div>
                    <asp:Button ID="BuyNow" CssClass="buy--btn" runat="server" Text="Buy Now" OnClick="BuyNow_Click" /><br />
                </div>
            </div>


        </div>

    </div>


</asp:Content>


