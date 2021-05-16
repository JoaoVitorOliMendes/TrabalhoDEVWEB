using LojaOnlline.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LojaOnlline.UI
{
    public partial class products : System.Web.UI.Page
    {
        ProdutoBLL produtobll = new ProdutoBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void viewConsulta_SelectedIndexChanged(object sender, EventArgs e)
        {
            viewConsulta.DataSource = produtobll.selectAll();
            viewConsulta.DataBind();
        }
    }
}