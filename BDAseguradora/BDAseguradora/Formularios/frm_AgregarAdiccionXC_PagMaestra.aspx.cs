using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDAseguradora.Formularios
{
    public partial class frm_AgregarAdiccionXC_PagMaestra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Hola();
        }

        void Hola()
        {
            Response.Write("<script>alert('Prueba del botón de ingreso de adicciones')</script>");
        }
    }
}