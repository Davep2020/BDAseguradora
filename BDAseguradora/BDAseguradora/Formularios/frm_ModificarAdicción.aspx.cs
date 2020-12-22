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
    public partial class frm_ModificaAdicción : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cargaAdicciones();
                this.CargarAdiccion();
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
        /// <summary>
        /// Método para cargar las adicciones
        /// </summary>
        void cargaAdicciones()
        {
            string mensajes = "";
            try
            {
                BLAdicciones oAdicciones = new BLAdicciones();
                ///indicarle al dropdownlist la fuente de datos
                this.ddlAdiccion.DataSource = oAdicciones.RetonaAdiccion(null, null);
                ///indicarle al dropdownlist que se muestre
                this.ddlAdiccion.DataBind();
            }
            catch (Exception e)
            {
                //Mensaje de error si no funciona
                mensajes += $"Ocurrió un error:{e.Message}";
            }
            

        }

        /// <summary>
        /// Carga las adicciones de la BD
        /// </summary>
        void CargarAdiccion()
        {
            string mensajes = "";
            try
            {
                string parametro = this.Request.QueryString["ID_ACliente_Ac"];
                Session["ID_ACliente_Ac"] = parametro;
                if (String.IsNullOrEmpty(parametro))
                {
                    Response.Write("<script>alert('Parámetro nulo')</script>");
                }
                else
                {
                    int ID_ACliente_Ac = Convert.ToInt16(parametro);

                    BLAdicciones oBLAdiccion = new BLAdicciones();

                    spRetornaAdicciónID_Result datos = new spRetornaAdicciónID_Result();

                    datos = oBLAdiccion.RetornaAdiccionClienteID(ID_ACliente_Ac);
                    if (datos == null)
                    {
                        Response.Redirect("frm_ListaClientes_PagMaestra.aspx");
                    }
                    else
                    {
                        this.txtCedula.Text = datos.Cedula_Dp.ToString();
                        this.ddlAdiccion.SelectedValue = datos.Nombre_Ad.ToString();
                    }
                }
            }
            catch (Exception e)
            {
                //Mensaje de error si no funciona
                mensajes += $"Ocurrió un error:{e.Message}";
            }
            
        }

        /// <summary>
        /// Valida que todas las reglas del formulario se hayan cumplido y procede
        /// a insertar la adicción utilizando un Store Procedura
        /// </summary>
        void ActualizarAdicciones()
        {

                if (this.IsValid)
                {
                    ///Variable para enviar un mensaje
                    string mensaje = "";
                    ///Creación de objeto tipo BLAdicciones
                    BLAdicciones oAdiccion = new BLAdicciones();
                    ///Variable para compronar un resultado
                    bool resultado = false;

                    try
                    {
                        int id = Convert.ToInt16(Session["ID_ACliente_Ac"]);
                        string nombreAdiccion = ddlAdiccion.SelectedValue;
                        resultado = oAdiccion.ModificaAdiccion(id, nombreAdiccion);
                    }
                    catch (Exception excepcionCapturada)
                    {
                        ///Excepción en caso que dé error
                        mensaje += $"Ocurrió un error:{excepcionCapturada.Message}";
                    }
                    finally
                    {
                        ///Mensaje de aviso de insercípon
                        if (resultado)
                        {
                            mensaje += "La adicción fue modificada";
                            Response.Redirect("IndexAdmin_PagMaestra.aspx");
                        }
                    }
                    ///mostrar el mensaje
                    Response.Write("<script>alert('" + mensaje + "')</script>"); ;
                }
            
        }

        protected void btnModificarAdicción_Click(object sender, EventArgs e)
        {
            ActualizarAdicciones();
        }


    }
}