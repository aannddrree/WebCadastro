using Data;
using Model;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCadastro
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReloadGrid();

            if (!IsPostBack)
                LoadCboCidade();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Pessoa pessoa = new Pessoa()
            {
                Nome = txtnome.Text,
                Telefone = txttelefone.Text,
                Cidade = new Cidade() { Id = int.Parse(cboCidade.SelectedValue.ToString())}
            };

            if (new PessoaDB().Insert(pessoa))
            {
                lblmsg.Text = "Registro Inserido!";
                lblmsg.ForeColor = Color.Blue;
                ReloadGrid();
            }
            else
            {
                lblmsg.Text = "Erro ao inserir registro";
                lblmsg.ForeColor = Color.Red; 
            }

        }

        private void ReloadGrid()
        {
            GVPessoa.DataSource = new PessoaDB().All();
            GVPessoa.DataBind();
        }

        private void LoadCboCidade()
        {

            cboCidade.DataSource = new CidadeDB().All();
            cboCidade.DataTextField = "Descricao";
            cboCidade.DataValueField = "Id";
            cboCidade.DataBind();

        }





    }
}