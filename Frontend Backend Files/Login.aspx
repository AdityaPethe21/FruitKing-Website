<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="CSS/FINAL.css" rel="stylesheet" />
  
</head>
<body style="overflow:scroll;" >
    <%-- Header --%>
  
    <header id="header">
        <div class="header-content-div">
            <a href="#">
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

    <%-- Header --%>


    <%--Login Form--%>
    <div class="MainBody">

        <div class="content ">
            <!--Image & Title-->
            <img src="Images/Juice.png" />
            <div class="text">Login</div>

            <form id="form1" runat="server">

                <div class="field">
                    <span class="fa fa-user"></span>
                    <asp:TextBox ID="email" runat="server" TextMode="Email" placeholder="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>


                <div class="field">
                    <span class="fa fa-lock"></span>
                    <asp:TextBox ID="pwd" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Valid Password" ControlToValidate="pwd" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Label ID="Remember" runat="server" Text="Remember Me" Style="font-size:18px;">Remember Me</asp:Label>

                <br />
                <asp:Button ID="SignIn" runat="server" Text="SignIn" OnClick="SignIn_Click" />
                <asp:Button ID="SignUp" runat="server" Text="SignUp" OnClick="SignUp_Click" />


                <br />

                <asp:Label ID="Errortxt" runat="server"></asp:Label>
                <br />
                <asp:HyperLink ID="FgtPwd" runat="server" Style="font-size:15px;" NavigateUrl="~/ForgetPassword.aspx">Forget Password?</asp:HyperLink>

                <div class="or" >Or</div>
                <div class="icon-button">
                    <span><i class="fa fa-facebook"></i></span>
                    <span><i class="fa fa-google"></i></span>
                </div>

            </form>
        </div>

    </div>


    <%--Footer--%>

    <%--Footer--%>
</body>
</html>
