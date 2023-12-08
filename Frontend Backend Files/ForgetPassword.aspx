<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>
</head>
<body>
    <h1>Forget Password</h1>
    <form id="form1" runat="server">
        <div>
            <h3>Please Enter Your Email, We will Send recovery email!</h3>
        </div>
        <div>
            <asp:Label ID="lblEmail" runat="server" Text="Enter Your Email Id"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmail" ForeColor="#FF3300"></asp:RequiredFieldValidator>

        </div>
        <div>
            <asp:Button ID="Resetbtn" runat="server" Text="Reset" OnClick="Resetbtn_Click" />
            <asp:Label ID="ResetMsg" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
