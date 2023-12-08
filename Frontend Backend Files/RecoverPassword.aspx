<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recover Password</title>
</head>
<body>
    <form id="form1" runat="server">
            <h1>Reset Password</h1>
            <asp:Label ID="lblMsg" runat="server" Text="Enter New password" Visible="False"></asp:Label>

        <div>
            <asp:Label ID="pwdlbl" runat="server" Text="Enter New password" Visible="False"></asp:Label>
            <asp:TextBox ID="NewPwd" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PwdValidate" runat="server" ErrorMessage="Enter New Password" ControlToValidate="NewPwd" Visible="False"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="cnfpwd" runat="server" Text="Confirm New password" Visible="False"></asp:Label>
            <asp:TextBox ID="CnfmPwd" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="CnfPwdValidate" runat="server" ErrorMessage="Enter Confirm Password" ControlToValidate="CnfmPwd" Visible="False"></asp:RequiredFieldValidator>
        </div>
        <asp:CompareValidator ID="CompareValidatePwd" runat="server" ErrorMessage="Password Not Matched..." ControlToCompare="NewPwd" ControlToValidate="CnfmPwd" Visible="False"></asp:CompareValidator>
        
        
        <asp:Button ID="RstBtn" runat="server" Text="Reset" Visible="False" OnClick="RstBtn_Click" />

    </form>
</body>
</html>
