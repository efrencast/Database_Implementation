<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logon.aspx.cs" Inherits="project2.Logon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" BackColor="#009933" BorderColor="White" BorderPadding="30" BorderWidth="60px" FailureText="Incorrect Password. Please Try Again." Height="200px" RememberMeText="Remember Me Next Time." style="text-align: left" TitleText="Welcome. Please Log In" Width="311px" Font-Names="Arial">
            <CheckBoxStyle BackColor="#33CCCC" />
        </asp:Login>
    </div>
    </form>
</body>
</html>
