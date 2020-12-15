using BDAseguradora.BL;
using BDAseguradora.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDAseguradora.Formularios
{
    public partial class frm_ClienteVista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarDatos();
        }

         void cargarDatos()
        {
            ///Crear la instancia del objeto BL
            BLCliente blCliente = new BLCliente();
            ///Variable con el sp y los datos
            List<spMostrarDatosCliente_Result> datos = blCliente.RetornaDatosCliente(Session["correo"].ToString());
            ///Fuente de datos
            grdVistaCliente.DataSource = datos;
            grdVistaCliente.DataBind();
        }
    }
}