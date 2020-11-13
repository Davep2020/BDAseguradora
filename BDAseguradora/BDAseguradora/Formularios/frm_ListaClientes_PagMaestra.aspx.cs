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
<<<<<<< HEAD:BDAseguradora/BDAseguradora/Formularios/frm_Registro_ConsulaCliente_PagMaestra.aspx.cs
            List<spMuestraCliente_Result> resultado = 
                blCliente.RetornaClientes(
                    this.txtPrimerApellidoBuscar.Text, 
                    this.txtNombreBuscar.Text);
=======
            List<spMuestraCliente_Result> resultado = blCliente.RetornaClientes(Convert.ToInt32(this.txtCedula.Text));
>>>>>>> 749fe69dea4c69639d569a29c016c5da17f2d1ba:BDAseguradora/BDAseguradora/Formularios/frm_ListaClientes_PagMaestra.aspx.cs

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

        void Hola()
        {
            Response.Write("<script>alert('Prueba del botón para ver clientes')</script>");
        }
    }
}