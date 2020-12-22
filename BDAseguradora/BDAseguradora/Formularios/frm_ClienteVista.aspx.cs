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
            if (Convert.ToBoolean(this.Session["UsuarioLogeado"]) != true)
            {
                this.Session.Add("NombreUsuario", null);
                this.Session.Add("Tipo", null);
                this.Session.Add("UsuarioLogeado", null);
                this.Response.Redirect("~/Formularios/Login.aspx");
            }
        }


        /// <summary>
        /// Método para cerrar sesión
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSi_Click(object sender, EventArgs e)
        {
            this.Session.Add("NombreUsuario", null);
            this.Session.Add("Tipo", null);
            this.Session.Add("UsuarioLogeado", null);
            this.Response.Redirect("~/Formularios/Login.aspx");
        }
        //Método para cargar los datos del usuario
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