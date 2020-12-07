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
    public partial class frm_ModificarCobertura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.cargarDatosRegistro();
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
        void cargarDatosRegistro()
        {
            string parametro =
                            this.Request.QueryString["ID_DPoliza_Dpl"];
            if (String.IsNullOrEmpty(parametro))
            {
                lblmensaje.Text = "Parametro Nulo";
            }
            else
            {
                int ID_DPoliza_Dpl = Convert.ToInt16(parametro);
                Cobertura ocobertura = new Cobertura();
                RetornaCoberturaID_Result dCober = new RetornaCoberturaID_Result();


                dCober = ocobertura.RetornaCoerturaID(ID_DPoliza_Dpl);

                if (dCober == null)
                {
                    Response.Redirect("frm_ConsultarCobertura.aspx");
                }
                else
                {
                    this.txtNombreCober.Text = dCober.Nombre_Dpl;
                    this.txtADescrip.InnerText = dCober.Descripción_Dpl;
                    this.txtPorcentaje.Text = dCober.Porcentaje_Dpl.ToString();

                    this.hdiId.Value = dCober.ID_DPoliza_Dpl.ToString();
                }

            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            AlmacenarDatos();
        }
        void AlmacenarDatos()
        {
            if (this.IsValid)
            {
                Cobertura oCliente = new Cobertura();
                bool resultado = false;
                string mensaje = "";
                try
                {                                
                    int id_Cliente = Convert.ToInt32(this.hdiId.Value);

                    resultado = oCliente.ModificaCobertura(
                        id_Cliente,
                        this.txtNombreCober.Text,
                        this.txtADescrip.InnerText,
                        Convert.ToInt32(this.txtPorcentaje.Text)
                        ) ;
                }
                catch (Exception excepcionCapturada)
                {
                    mensaje += $"Ocurrió un error: {excepcionCapturada.Message}";
                }
                
                finally
                {
                    
                    if (resultado)
                    {
                        mensaje += "El registro fue modificado";

                    }
                }
               
                lblmensaje.Text = mensaje;
            }



            }
        }
}