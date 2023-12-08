<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="CSS/AddProduct.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="AddproductFields">
        <h2>Add Product</h2>
        <hr />
        <div class="DivProd">
            <asp:Label ID="lblProductName" runat="server" Text="Product Name:"></asp:Label>
            <asp:TextBox ID="ProductName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="ProductName"></asp:RequiredFieldValidator>
            <br />
        </div>
        <hr />

        <div class="DivProd">
            <asp:Label ID="lblProdectPrice" runat="server" Text="Cost Price:"></asp:Label>
            <asp:TextBox ID="ProductPrice" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="ProductPrice"></asp:RequiredFieldValidator>
            <br />
        </div>
        <hr />

        <div class="DivProd">
            <asp:Label ID="lblSellingPrice" runat="server" Text="Selling Price:"></asp:Label>
            <asp:TextBox ID="SellingPrice" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="SellingPrice"></asp:RequiredFieldValidator>
            <br />
        </div>
        <hr />

        <div class="DivProd">
            <asp:Label ID="lblBrand" runat="server" Text="Brand:"></asp:Label>
            <asp:DropDownList ID="BrandDropDown" CssClass="DropDown" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>SipFruits</asp:ListItem>
                <asp:ListItem>FruitBites</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <hr />

        <div class="DivProd">
            <asp:Label ID="lblCategory" runat="server" Text="Category:"></asp:Label>
            <asp:DropDownList ID="CategoryDropDown" CssClass="DropDown" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Beauty</asp:ListItem>
                <asp:ListItem>Health</asp:ListItem>
                <asp:ListItem>WeightGain</asp:ListItem>
                <asp:ListItem>Diabeties</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <hr />

        <div class="DivProd">
            <asp:Label ID="lblSubCategory" runat="server" Text="Sub-Category:"></asp:Label>
            <asp:DropDownList ID="SubCategoryDropDown" CssClass="DropDown" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>hhh</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <hr />

        <div class="DivProd">
            <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>
            <asp:DropDownList ID="GenderDropDown" CssClass="DropDown" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <hr />

        <div class="DivProd">
            <asp:Label ID="lblSize" runat="server" Text="Size:"></asp:Label>
            <asp:DropDownList ID="DropDownSize" CssClass="DropDown" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>250</asp:ListItem>
                <asp:ListItem>350</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <hr />

        <div class="DivProd">
            <asp:Label ID="lblDescription" runat="server" Text="Description:"></asp:Label>
            <asp:TextBox ID="Desc" CssClass="MultiLine" TextMode="MultiLine" runat="server"></asp:TextBox>
            <br />
        </div>
        <hr />

        <div class="DivProd">
            <asp:Label ID="Label1" runat="server" Text="Product Details:"></asp:Label>
            <asp:TextBox ID="Details"  CssClass="MultiLine"  TextMode="MultiLine" runat="server"></asp:TextBox>

            <br />
        </div>
        <hr />

        <div class="DivProd">
            <asp:Label ID="Label2" runat="server" Text="Upload Image:"></asp:Label><br />
            <asp:FileUpload ID="FileUploadImg1" runat="server" /><br />
            <%--<asp:FileUpload ID="FileUploadImg2" runat="server" /><br />
            <asp:FileUpload ID="FileUploadImg3" runat="server" /><br />
            <asp:FileUpload ID="FileUploadImg4" runat="server" /><br />
            <asp:FileUpload ID="FileUploadImg5" runat="server" />--%>
            <br />
        </div>
        <hr />


        <div class="DivProd">
            <asp:Label ID="Label3" runat="server" Text="Free Delivery"></asp:Label>
            <asp:CheckBox ID="Delivery" runat="server" />

            <br />
            <asp:Label ID="Label4" runat="server" Text="Cash On Delivery"></asp:Label>
            <asp:CheckBox ID="COD" runat="server" />
            <%--<asp:Label ID="Label5" runat="server" Text="Return Policy"></asp:Label>
        <asp:CheckBox ID="Return" runat="server" />--%>

            <br />
        </div>
        <hr />

        <asp:Button ID="AddBtn" CssClass="btn" runat="server" Text="ADD" OnClick="AddBtn_Click" />
    </div>
</asp:Content>

