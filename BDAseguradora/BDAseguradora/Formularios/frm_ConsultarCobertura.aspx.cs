using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BDAseguradora.Modelo;
using BDAseguradora.BL;

namespace BDAseguradora.Formularios
{
    public partial class frm_ConsultarCobertura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            CargarDatos();

        }
        void CargarDatos()
        {
            ///Crear la instancia del objeto BL
            Cobertura blCliente = new Cobertura();
            ///Crear una variable que va a contener esos datos
            List<ConsultarCobertura_Result> resultado = blCliente.RetornaCoberturas(txtNombreconsu.Text);

            //La fuente de datos
            //"grListaClientes" es el id del Grid
            this.grdConsultarcober.DataSource = resultado;
            this.grdConsultarcober.DataBind();
        }
    }
}