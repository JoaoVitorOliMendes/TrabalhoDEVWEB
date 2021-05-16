using LojaOnlline.DAL;
using LojaOnlline.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LojaOnlline.BLL
{
    public class ProdutoBLL
    {
        private MySqlDAL con = new MySqlDAL();

        // CRUD da Classe

        public void Inserir(produtosDTO produto)
        {
            string sql = string.Format($@"INSERT INTO produtos VALUES (NULL,
                                                '{produto.Nome}', 
                                                '{produto.Descricao}',
                                                '{produto.Quantidade}',
                                                '{produto.Valor}');");
            con.ExecutarSql(sql);
        }
        public void Excluir(produtosDTO produto) {
            string sql = string.Format($@"DELETE FROM produto WHERE id= {produto.Id};");
            con.ExecutarSql(sql);
        }
        public void Alterar(produtosDTO produto) {
            string sql = string.Format($@"UPDATE produto SET nome= '{produto.Nome}',
                                                             descricao= '{produto.Descricao}',
                                                             valor='{produto.Valor}',
                                                             quantidade='{produto.Quantidade}'
                                                             WHERE id = '{produto.Id}';");
            con.ExecutarSql(sql);  
        }

        public DataTable ConsultarID(int Id) {
            string sql = string.Format($@"SELECT * FROM produto WHERE id= {Id};");
            return con.Executarconsulta(sql);
        }
        public DataTable Pesquisar(string condicao) {

            string sql = string.Format($@"SELECT p.id , p.nome, p.descricao, p.valor, p.quantidadeEstoque, c.nome as categoria, f.nome as fornecedor, p.foto FROM produto p, categoria c, fornecedor f WHERE p.categoriaID = c.id and p.fornecedorID = f.id and " + condicao + " order by Id;");

            return con.Executarconsulta(sql);
        }

        public DataTable selectAll()
        {

            string sql = string.Format($@"SELECT * FROM produto;");

            return con.Executarconsulta(sql);
        }

    }
}