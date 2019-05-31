using Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utils;

namespace Data
{

    public class PessoaDB
    {
        private Conexao conexao;

        #region Métodos
        public bool Insert(Pessoa pessoa)
        {
            try
            {
                //Query de Inclusão de dados
                string sql = string.Format
                    ("insert into tb_pessoa (nome, telefone, idcidade) values ('{0}','{1}','{2}')", 
                    pessoa.Nome, pessoa.Telefone, pessoa.Cidade.Id);

                //Abrir conexão para inclusão das informações
                using (conexao = new Conexao())
                {
                    conexao.ExecutaComando(sql);
                }
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public List<Pessoa> All()
        {
            using (conexao = new Conexao())
            {
                var sql = "SELECT P.Id, P.Nome, P.Telefone, C.Descricao FROM TB_PESSOA P, TB_CIDADE C WHERE P.IDCIDADE = C.ID";
                var retorno = conexao.ExecutaComandoRetorno(sql);
                return TransformaSQLReaderEmList(retorno);
            }
        }

        private List<Pessoa> TransformaSQLReaderEmList(SqlDataReader retorno)
        {
            var listPessoa = new List<Pessoa>();

            while (retorno.Read())
            {
                var item = new Pessoa()
                {
                    Id = Convert.ToInt32(retorno["Id"]),
                    Nome = retorno["Nome"].ToString(),
                    Telefone = retorno["Telefone"].ToString(),
                    Cidade = new Cidade() { Descricao = retorno["Descricao"].ToString() }
                };

                listPessoa.Add(item);
            }
            return listPessoa;
        }

        #endregion
    }
}
