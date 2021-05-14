using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LojaOnlline.DTO
{
    public class ClientesDTO
    {

        private int id;
        private string email;
        private string senha;

        public string Senha { get => senha; set => senha = value; }
        public string Email { get => email; set => email = value; }
        public int Id { get => id; set => id = value; }
    }
}