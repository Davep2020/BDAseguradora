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
    public partial class frm_EliminarPolizas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                this.cargaDatosRegistro();
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
        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            AlmacenarDatos();
        }

        void cargaDatosRegistro()
        {
            DateTime fecha = DateTime.Now.Date;
            ///obtener el parámetro envíado desde el grid
            ///es CASESENSITIVE
            string parametro =
                this.Request.QueryString["ID_Polizas_Pol"];

            //validar si el parametro es correcto
            if (String.IsNullOrEmpty(parametro))
            {
                Response.Write("Parametro Nulo"); ;
            }
            else
            {
                int ID_Polizas_Pol = Convert.ToInt16(parametro);
                Poliza oCliente = new Poliza();
                RetornPolizaID_Result datosCliente = new RetornPolizaID_Result();
                ///invocar al procedimiento
                datosCliente =
                    oCliente.RetornaPolizaID(ID_Polizas_Pol);
                if (datosCliente == null)
                {
                    Response.Redirect("frm_ConsultarPoliza.aspx");
                }
                else
                {
                    this.txtCobertura.Text = datosCliente.Nombre_Dpl;
                    this.txtCedula.Text = datosCliente.Cedula_Dp.ToString();
                    this.txtMonto.Text = datosCliente.MontoAsegurado_Pol.ToString();
                    this.txtCantidad.Text = datosCliente.NumAdicciones_Pol.ToString();
                    this.txtAmont.Text = datosCliente.MontoAdicciones_Pol.ToString();
                    this.txtPrima.Text = datosCliente.PrimaAntesImp_Pol.ToString();
                    this.txtImpu.Text = datosCliente.Impuestos_Pol.ToString();
                    this.txtMontoFin.Text = datosCliente.PrimaFinal_Pol.ToString();
                    this.txtVencim.Text = datosCliente.Fecha_Pol.ToString();

                    this.hdiId.Value = datosCliente.ID_Polizas_Pol.ToString();


                    if (Convert.ToDateTime(this.txtVencim.Text).Date < fecha)
                    {


                        btnEliminar.Enabled = false;

                    }

                }
            }
        }
        /// <summary>
        /// Valida que todas las reglas del formulario se hayan cumplido y procede
        /// a insertar el registro utilizando el procedimiento sp_InsertaCliente
        /// </summary>
        void AlmacenarDatos()
        {
            if (this.IsValid)
            {
                Poliza oCliente = new Poliza();
                bool resultado = false;
                string mensaje = "";
                try
                {
                    int ID_Polizas_Pol = Convert.ToInt32(this.hdiId.Value);

                    resultado = oCliente.EliminaPoliza(ID_Polizas_Pol);
                }
                ///catch: se ejecuta en el caso de que haya una excepcion
                ///excepcionCapturada: posee los datos de la excepción
                catch (Exception excepcionCapturada)
                {
                    mensaje += $"Ocurrió un error: {excepcionCapturada.Message}";
                }
                ///finally: siempre se ejecuta (se atrape o no la excepción)
                finally
                {
                    ///si el resultado de la variable es verdadera implica que
                    ///el procedimiento no retornó errores
                    if (resultado)
                    {
                        mensaje += "El registro fue eliminado";
                    }
                }
                ///mostrar el mensaje
                lblmensaje.Text = mensaje;
            }
        }
    }
}