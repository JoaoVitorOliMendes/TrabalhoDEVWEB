<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LojaOnlline.UI.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Loja Virtual</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head> 
<body>
    <form id="form1" runat="server">
        <nav class="nav navbar-expand">
        <div class="container-fluid collapse navbar-collapse">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <asp:HyperLink ID="HyperLinkInicial" NavigateUrl="~/UI/index.aspx" Text="Inicial" runat="server" class="nav-link"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink ID="HyperLinkProdutos" NavigateUrl="~/UI/formTableProdutos.aspx" Text="Produtos" runat="server" class="nav-link"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink ID="HyperLinkLogin" NavigateUrl="~/UI/formLogin.aspx" Text="Login" runat="server" class="nav-link"></asp:HyperLink>
                    </li>
                </ul>
        </div>
        </nav>
        <div class="container d-flex justify-content-center align-items-center">
            <asp:Image ImageUrl="~/IMG/download.jpg" AlternateText="Imagem não carregada." runat="server"/>
        </div>
        
        <footer class="bg-dark footer mt-auto py-3">

            Copyright &copy; Desenvolvido por João Vitor de Oliveira e Petronio Aleixo.
 
       </footer>
       
    </form>
</body>
</html>
