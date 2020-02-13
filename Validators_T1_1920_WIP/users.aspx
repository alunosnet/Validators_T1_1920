<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="Validators_T1_1920_WIP.users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Área de utilizador</h1>
            Bem-vindo <% Response.Write(Session["email"]); %>
            <br /> <a href="logout.aspx">Terminar Sessão</a>
        </div>
    </form>
</body>
</html>
