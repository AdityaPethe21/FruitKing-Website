<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="DisplayProduct.aspx.cs" Inherits="DisplayProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="CSS/DispProdFinal.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <section id="varieties" class="sec-padding">

        <h3 class="section-heading">PRODUCTS</h3>

        <div class="sec-content-div flexible">
        <asp:Repeater ID="ProductRepeater" runat="server">
            <ItemTemplate>
                
                    <a href="ViewProduct.aspx?PID=<%#Eval("PID") %>" style="text-decoration: none;">
                        <div class="tile">
                            <img src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="" style="width: 100px; height: 100px;" />
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


</asp:Content>

