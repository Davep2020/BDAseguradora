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
    public partial class frm_ConsultarPoliza : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string datosUsuario = Convert.ToString(this.Session["NombreUsuario"]);
            if (!string.IsNullOrEmpty(datosUsuario))
            {
                this.lblNombre.Text = datosUsuario;
            }
        }
        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            CargarDatos();

        }
        protected void btnSi_Click(object sender, EventArgs e)
        {
            this.Session.Add("NombreUsuario", null);
            this.Session.Add("Tipo", null);
            this.Session.Add("UsuarioLogeado", null);
            this.Response.Redirect("~/Formularios/Login.aspx");
        }
        void CargarDatos()
        {
            string mensaje = "";
                try
                {
                    ///Crear la instancia del objeto BL
                    Poliza blCliente = new Poliza();
                    ///Crear una variable que va a contener esos datos
                    List<ConsultarPoliza_Result> resultado = blCliente.RetornaPolizas(Convert.ToInt32(txtCedula.Text));

                    //La fuente de datos
                    //"grListaClientes" es el id del Grid
                    this.grdConsultarPoliza.DataSource = resultado;
                    this.grdConsultarPoliza.DataBind();

                }
                catch (Exception excepcionCapturada)
                {
                    mensaje += $"Ocurrió un error: {excepcionCapturada.Message}";
                }
                lblmensaje.Text = mensaje;
        
        }
    }

}

