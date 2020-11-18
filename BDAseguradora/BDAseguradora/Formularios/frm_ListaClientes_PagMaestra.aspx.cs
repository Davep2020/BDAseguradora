using BDAseguradora.BL;
using BDAseguradora.Modelo;
using System;
using System.Collections.Generic;

namespace BDAseguradora.Formularios
{
    public partial class frm_ListaClientes_PagMaestra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscarCliente_Click(object sender, EventArgs e)
        {
            CargarDatos();
            CargarAdicciones();
        }

        void CargarDatos()
        {
            ///Crear la instancia del objeto BL
            BLCliente blCliente = new BLCliente();
            ///Crear una variable que va a contener esos datos
            List<spMuestraCliente_Result> resultado = blCliente.RetornaClientes(Convert.ToInt32(txtCedula.Text));

            //La fuente de datos
            //"grListaClientes" es el id del Grid
            this.grdListaClientes.DataSource = resultado;
            this.grdListaClientes.DataBind();
        }

        void CargarAdicciones()
        {
            BLCliente bLCliente = new BLCliente();

            List<spMuestraAdiccion_Result> resultado = bLCliente.RetornaAdicciones(Convert.ToInt32(txtCedula.Text));

            this.grdListaAdicciones.DataSource = resultado;
            this.grdListaAdicciones.DataBind();
        }
    }
}