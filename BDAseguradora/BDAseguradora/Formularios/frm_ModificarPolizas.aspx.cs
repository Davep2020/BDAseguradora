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
    public partial class frm_ModificarPolizas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.cargaListaCobertura();
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
            DateTime fecha = DateTime.Now.Date;
            string mensaje = "";


            try
            {
                string parametro =
                            this.Request.QueryString["ID_Polizas_Pol"];
                if (String.IsNullOrEmpty(parametro))
                {
                    Response.Write("Parametro Nulo");
                }
                else
                {
                    int ID_Polizas_Pol = Convert.ToInt16(parametro);
                    Poliza ocobertura = new Poliza();
                    RetornPolizaID_Result dCober = new RetornPolizaID_Result();


                    dCober = ocobertura.RetornaPolizaID(ID_Polizas_Pol);

                    if (dCober == null)
                    {
                        Response.Redirect("frm_ConsultarPoliza.aspx");
                    }
                    else
                    {

                        this.txtCedula.Text = dCober.Cedula_Dp.ToString();
                        this.ddCobertura.SelectedValue = dCober.Nombre_Dpl.ToString();
                        this.txtMonto.Text = dCober.MontoAsegurado_Pol.ToString();
                        this.txtFecha.Text = dCober.Fecha_Pol.ToString();



                        this.hdiId.Value = dCober.ID_Polizas_Pol.ToString();


                        if (Convert.ToDateTime(this.txtFecha.Text).Date < fecha)
                        {


                            btnModificar.Enabled = false;

                        }
                    }

                }
            }
            catch (Exception excepcionCapturada)
            {
                mensaje += $"Ocurrió un error: {excepcionCapturada.Message}";

            }

            lblmensaje.Text = mensaje;
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            AlmacenarDatos();
        }
        void AlmacenarDatos()
        {




            if (this.IsValid)
            {
                Poliza oCliente = new Poliza();
                bool resultado = false;
                string mensaje = "";
                try
                {
                    int id_Poliza = Convert.ToInt32(this.hdiId.Value);

                    resultado = oCliente.ModificarPolizar(
                        id_Poliza,
                        Convert.ToInt32(this.txtCedula.Text),
                        Convert.ToInt32(this.ddCobertura.SelectedValue),
                        Convert.ToInt32(this.txtMonto.Text),
                        Convert.ToDateTime(this.txtFecha.Text).Date
                        );
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


        void cargaListaCobertura()
        {
            Poliza poliza = new Poliza();
            ///indicarle al dropdownlist la fuente de datos
            this.ddCobertura.DataSource = poliza.RetornaCober(null);
            this.ddCobertura.DataBind();
            ///indicarle al dropdownlist que se muestre

        }

    }
}