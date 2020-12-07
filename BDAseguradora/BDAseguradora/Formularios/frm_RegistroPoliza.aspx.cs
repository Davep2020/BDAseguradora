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
    public partial class frm_RegistroPoliza : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargaListaCobertura();
            }
            string datosUsuario = Convert.ToString(this.Session["NombreUsuario"]);
            if (!string.IsNullOrEmpty(datosUsuario))
            {
                this.lblNombre.Text = datosUsuario;
            }
        }
        protected void btnSi_Click(object sender, EventArgs e)
        {
            this.Session.Add("NombreUsuario", null);
            this.Session.Add("Tipo", null);
            this.Session.Add("UsuarioLogeado", null);
            this.Response.Redirect("~/Formularios/Login.aspx");
        }
        protected void btnPoliza_Click(object sender, EventArgs e)
        {
            AlmacenarCoberturas();
            limpiar();
        }
        void cargaListaCobertura()
        {
            Poliza poliza = new Poliza();
            ///indicarle al dropdownlist la fuente de datos
            this.ddCobertura.DataSource = poliza.RetornaCober(null);
            this.ddCobertura.DataBind();
            ///indicarle al dropdownlist que se muestre

        }


        void limpiar()
        {
            txtCedula.Text = "";
            txtFecha.Text = "";
            txtMonto.Text = "";
           
        }
        void AlmacenarCoberturas()
        {
            if (this.IsValid)
            {
                string mensaje = "";
                Poliza oCliente = new Poliza();
                bool resultado = false;

                try
                {
                    resultado = oCliente.InsertaPoliza(Convert.ToInt32(this.txtCedula.Text), Convert.ToInt32(this.ddCobertura.SelectedValue), Convert.ToInt32(txtMonto.Text),Convert.ToDateTime(txtFecha.Text));
                }
                catch (Exception excepcionCapturada)
                {
                    mensaje += $"Ocurrio un error:{excepcionCapturada.Message}";

                }

                finally
                {
                    if (resultado)
                    {
                        mensaje += "El registro fue insertado";
                    }
                    lblmensaje.Text = mensaje;
                }
            }
        }


    }
}