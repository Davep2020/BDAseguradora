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
    public partial class frm_EliminarCobertura : System.Web.UI.Page
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

            ///obtener el parámetro envíado desde el grid
            ///es CASESENSITIVE
            string parametro =
                this.Request.QueryString["ID_DPoliza_Dpl"];

            //validar si el parametro es correcto
            if (String.IsNullOrEmpty(parametro))
            {
                lblmensaje.Text = "Parametro Nulo";
            }
            else
            {
                int ID_DPoliza_Dpl = Convert.ToInt16(parametro);
                Cobertura oCliente = new Cobertura();
                RetornaCoberturaID_Result datosCliente = new RetornaCoberturaID_Result();
                ///invocar al procedimiento
                datosCliente =
                    oCliente.RetornaCoerturaID(ID_DPoliza_Dpl);
                if (datosCliente == null)
                {
                    Response.Redirect("frm_ConsultarCobertura.aspx");
                }
                else
                {
                    this.txtNombreCober.Text = datosCliente.Nombre_Dpl;
                    this.txtADescrip.InnerText = datosCliente.Descripción_Dpl;
                    this.txtPorcentaje.Text = datosCliente.Porcentaje_Dpl.ToString();

                    this.hdiId.Value = datosCliente.ID_DPoliza_Dpl.ToString();
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
               Cobertura oCliente = new Cobertura();
                bool resultado = false;
                string mensaje = "";
                try
                {
                    int ID_DPoliza_Dpl = Convert.ToInt32(this.hdiId.Value);

                    resultado = oCliente.EliminaCobertura(ID_DPoliza_Dpl);
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