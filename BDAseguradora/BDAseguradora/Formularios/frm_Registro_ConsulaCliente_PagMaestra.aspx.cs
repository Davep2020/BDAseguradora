using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BDAseguradora.BL;
using BDAseguradora.Modelo;

namespace BDAseguradora.Formularios
{
    public partial class frm_Registro_ConsulaCliente_PagMaestra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregarUsuario_Click(object sender, EventArgs e)
        {

        }

        protected void btnAgregarAdicción_Click(object sender, EventArgs e)
        {

        }

        protected void btnBuscarCliente_Click(object sender, EventArgs e)
        {
            this.CargarDatos();
        }

        void CargarDatos()
        {
            ///Crear la instancia del objeto BL
            BLCliente blCliente = new BLCliente();
            ///Crear una variable que va a contener esos datos
            List<spMuestraCliente_Result> resultado = blCliente.RetornaClientes(this.txtPrimerApellidoBuscar.Text, this.txtNombreBuscar.Text);

            //La fuente de datos
            //"grListaClientes" es el id del Grid
            this.grListaClientes.DataSource = resultado;
            this.grListaClientes.DataBind();
        }
    }
}