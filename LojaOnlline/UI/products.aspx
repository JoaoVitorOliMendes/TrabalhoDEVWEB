<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="LojaOnlline.UI.products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body class="text-center">
    <form id="form2" class="form-signin" runat="server">
        <div class="container">
            <div class="form-group">
                <asp:Label for="txtNome" Text="Nome de produto" runat="server"></asp:Label>
                <asp:TextBox type="text" ID="txtNome" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="txtDescricao" Text="Descrição" runat="server"></asp:Label>
                <asp:TextBox type="text" ID="txtDescricao" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="txtValor" Text="Valor do produto" runat="server"></asp:Label>
                <asp:TextBox type="text" ID="txtValor" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="txtQuantidade" Text="Quantidade" runat="server"></asp:Label>
                <asp:TextBox type="text" ID="txtQuantidade" class="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:Button Text="Adicionar" ID="btnAdd" class="btn btn-primary" runat="server" OnClick="BtnAdd_Click" />
            <div class="form-group">
                <asp:GridView ID="viewConsulta"
                    AutoGenerateColumns="false"
                    DataKeyNames="id"
                    OnRowDeleting="gridConsultaDelete"
                    OnSelectedIndexChanged="viewConsulta_SelectedIndexChanged"
                    OnRowUpdated="viewConsulta_RowUpdate"
                    OnRowEditing="viewConsulta_Editing"
                    OnRowCancelingEdit="viewConsulta_EditingCancel"
                    runat="server" Height="209px" Width="1209px">
                    <Columns>
                        <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="labelId" runat="server" Text='<%# Eval("id") %>'>

                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Nome do produto">
                            <ItemTemplate>
                                <asp:Label ID="labelNome" runat="server" Text='<%# Eval("nome") %>'>

                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Descrição">
                            <ItemTemplate>
                                <asp:Label ID="labelDescricao" runat="server" Text='<%# Eval("descricao") %>'>

                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Valor">
                            <ItemTemplate>
                                <asp:Label ID="labelValor" runat="server" Text='<%# Eval("valor") %>'>

                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                
                        <asp:TemplateField HeaderText="Quantidade">
                            <ItemTemplate>
                                <asp:Label ID="labelQuantidade" runat="server" Text='<%# Eval("quantidade") %>'>

                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
    <footer>
        <div class="footer-copy-right">
            Copyright &copy; Desenvolvido por João Vitor de Oliveira e Petronio Aleixo. Todos os direitos reservados.
        </div>

    </footer>
</body>
</html>
