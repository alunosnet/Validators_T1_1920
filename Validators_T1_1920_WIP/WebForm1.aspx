<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Validators_T1_1920_WIP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--Nome-->
            Nome:<asp:TextBox MaxLength="40" ID="tbNome" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Campo de preenchimento obrigatório."
                ControlToValidate="tbNome" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ErrorMessage="O nome é muito pequeno."
                ControlToValidate="tbNome" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <!--Nome-->
            <!--Data-->
            <br />Data Nascimento:<asp:TextBox TextMode="Date" ID="tbData" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Campo obrigatório" ControlToValidate="tbData" 
                Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server"
                ErrorMessage="A data não é válida" ControlToValidate="tbData"
                type="Date" MinimumValue="01/01/1990" MaximumValue="31/12/2050"></asp:RangeValidator>
            <!--Data-->
            <!--Vencimento-->
            <br />Vencimento:<asp:TextBox TextMode="Number" ID="tbVencimento" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Campo obrigatório" Display="Dynamic" ControlToValidate="tbVencimento"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ErrorMessage="O vencimento não é válido, deve estar entre 0 e 10000."
                ControlToValidate="tbVencimento" Type="Currency" Display="Dynamic"
                MinimumValue="0" MaximumValue="10000"></asp:RangeValidator>
            <!--Vencimento-->
            <!--Email-->
            <br />Email:<asp:TextBox ID="tbEmail" TextMode="Email" runat="server"></asp:TextBox>

            <!--Email-->
            <!--Matrícula-->
            <br />Matrícula:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <!--Matrícula-->
            
            <br /><asp:Button ID="Button1" runat="server" Text="Aceitar" />
        </div>
    </form>
</body>
</html>
