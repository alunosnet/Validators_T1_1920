<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Validators_T1_1920_WIP.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <!--Nome-->
            <br />Nome:<!-- >2 && <40 -->
             <asp:TextBox runat="server" ID="tbNome" MaxLength="40" />
            <asp:RequiredFieldValidator ControlToValidate="tbNome" Display="Dynamic" 
                ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo obrigatório."></asp:RequiredFieldValidator>  
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ErrorMessage="O nome é muito pequeno"
                ControlToValidate="tbNome" OnServerValidate="CustomValidator1_ServerValidate"
                ></asp:CustomValidator>
            <!--Nome-->
            <!--Descrição-->
            <br />Descrição: <!-- >3 && <80 -->
              <asp:TextBox runat="server" ID="tbDescricao" 
                MaxLength="80" TextMode="MultiLine" />
            <asp:RequiredFieldValidator ControlToValidate="tbDescricao" Display="Dynamic" 
                ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo obrigatório."></asp:RequiredFieldValidator>  
            <asp:CustomValidator ID="CustomValidator2" runat="server" 
                ErrorMessage="A descrição é muito pequena"
                ControlToValidate="tbDescricao" OnServerValidate="CustomValidator2_ServerValidate"
                ></asp:CustomValidator>
             <!--Descrição-->
            <!--Preço compra-->
            <br />Preço Compra: <!-- >=0 -->
            <asp:TextBox runat="server" ID="tbPrecoCompra" TextMode="Number" />
            <asp:RequiredFieldValidator ControlToValidate="tbPrecoCompra" Display="Dynamic" 
                ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo obrigatório."></asp:RequiredFieldValidator>  
            <asp:CustomValidator ID="CustomValidator3" runat="server" 
                ErrorMessage="O preço deve ser superior ou igual a zero"
                ControlToValidate="tbPrecoCompra" OnServerValidate="CustomValidator3_ServerValidate"
                ></asp:CustomValidator>
            <!--Preço compra-->
            <!--Preço venda-->
            <br />Preço Venda: <!-- >=0 && >=preço compra-->
            <asp:TextBox runat="server" ID="tbPrecoVenda" TextMode="Number" />
            <asp:RequiredFieldValidator ControlToValidate="tbPrecoVenda" Display="Dynamic" 
                ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo obrigatório."></asp:RequiredFieldValidator>  
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ErrorMessage="O preço deve ser superior a zero"
                ControlToValidate="tbPrecoVenda" Type="Currency"
                MinimumValue="0" MaximumValue="10000"
                ></asp:RangeValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="O preço de venda deve ser superior ou igual ao preço compra"
                ControlToValidate="tbPrecoVenda" ControlToCompare="tbPrecoCompra"
                type="Currency" Operator="GreaterThanEqual"
                ></asp:CompareValidator>
             <!--Preço venda-->
            <!--Prazo validade-->
            <br />Prazo Validade: <!-- >data atual -->
            <asp:TextBox runat="server" ID="tbData" TextMode="Date" />
            <asp:RequiredFieldValidator ControlToValidate="tbData" Display="Dynamic" 
                ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campo obrigatório."></asp:RequiredFieldValidator>  
            <asp:CustomValidator ID="CustomValidator4" runat="server" 
                ErrorMessage="A data de validade deve ser superior à data atual"
                ControlToValidate="tbData" OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
              <!--Prazo validade-->
            <br />Quantidade: <!-- >=0 -->
            <asp:TextBox runat="server" ID="tbQuantidade" TextMode="Number" />
            <asp:RequiredFieldValidator ControlToValidate="tbQuantidade" Display="Dynamic" 
                ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campo obrigatório."></asp:RequiredFieldValidator>  
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ErrorMessage="A quantidade deve ser superior a zero"
                ControlToValidate="tbQuantidade" Type="Double"
                MinimumValue="0" MaximumValue="10000"></asp:RangeValidator>

            <asp:Button ID="bt" runat="server" Text="Guardar" />
        </div>
    </form>
</body>
</html>
