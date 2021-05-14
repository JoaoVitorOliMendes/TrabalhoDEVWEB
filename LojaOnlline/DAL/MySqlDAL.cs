using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LojaOnlline.DAL
{
    public class MySqlDAL
    {
        private static string server = "localhost";
        private static string user = "root";
        private static string database = "lojavirtual";
        private static string password = "";

        private string stringconexao = "SERVER=" + server + "; DATABASE=" + database + "; UID=" + user + "; PWD=" + password + ";";

        public MySqlConnection conexao;

        public void conectar()
        {
            try
            {
                conexao = new MySqlConnection(stringconexao);
                conexao.Open();
            }catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public void ExecutarSql(string sql)
        {
            try
            {
                MySqlCommand comando = new MySqlCommand(sql, conexao);
                comando.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                conexao.Close();
            }
        }

        public DataTable Executarconsulta(string sql)
        {
            try
            {
                conectar();
                DataTable dt = new DataTable();

                MySqlDataAdapter dados = new MySqlDataAdapter();

                dados.Fill(dt);

                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                conexao.Close();
            }
        }
    }
}