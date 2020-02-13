<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Validators_T1_1920_WIP.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div runat="server" id="divLogin">
                Email:<asp:TextBox ID="tbEmail" TextMode="Email" runat="server"></asp:TextBox>
                Palavra passe:<asp:TextBox ID="tbPassword" TextMode="Password" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
            <div runat="server" id="divLogout">
                Bem-vindo <% Response.Write(Session["email"]); %>
                <a href="logout.aspx">Terminar Sessão</a>
            </div>
        </div>
    </form>
</body>
</html>
