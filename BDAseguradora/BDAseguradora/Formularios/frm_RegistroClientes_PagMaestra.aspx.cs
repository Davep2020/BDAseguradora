using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDAseguradora.Formularios
{
    public partial class frm_RegistroClientes_PagMaestra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            HOLA();
        }

        void HOLA()
        {
            Response.Write("<script>alert('ASD')</script>");
        }

        protected void txtCorreo_TextChanged(object sender, EventArgs e)
        {

        }
    }
}