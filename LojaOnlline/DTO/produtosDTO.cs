using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LojaOnlline.DTO
{
    public class produtosDTO
    {

        private int id;
        private string nome;
        private string descricao;
        private double valor;
        private int quantidade;

        public string Descricao { get => descricao; set => descricao = value; }
        public string Nome { get => nome; set => nome = value; }
        public int Id { get => id; set => id = value; }
        public double Valor { get => valor; set => valor = value; }
        public int Quantidade { get => quantidade; set => quantidade = value; }
    }
}