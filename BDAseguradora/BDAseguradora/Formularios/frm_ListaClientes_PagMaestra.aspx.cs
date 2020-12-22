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
            if (!IsPostBack)
            {

            }
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

        protected void btnBuscarCliente_Click(object sender, EventArgs e)
        {
            CargarDatos();
            CargarAdicciones();
        }
        /// <summary>
        /// Método que carga los datos del cliente en un GRID
        /// </summary>
        void CargarDatos()
        {
            string mensajes = "";
            try
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
            catch (Exception e)
            {
                //Mensaje de error si no funciona
                mensajes += $"Ocurrió un error:{e.Message}";
            }
            
        }
        /// <summary>
        /// Método que carga las adicciones del cliente en un GRID
        /// </summary>
        void CargarAdicciones()
        {
            string mensajes = "";
            try
            {
                BLCliente bLCliente = new BLCliente();

                List<spMuestraAdiccion_Result> resultado = bLCliente.RetornaAdicciones(Convert.ToInt32(txtCedula.Text));

                this.grdListaAdicciones.DataSource = resultado;
                this.grdListaAdicciones.DataBind();
            }
            catch (Exception e)
            {
                //Mensaje de error si no funciona
                mensajes += $"Ocurrió un error:{e.Message}";
            }
            
        }
    }
}