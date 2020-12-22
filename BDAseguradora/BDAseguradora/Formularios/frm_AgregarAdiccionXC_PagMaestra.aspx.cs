using System;
using BDAseguradora.BL;
using BDAseguradora.Modelo;

namespace BDAseguradora.Formularios
{
    public partial class frm_AgregarAdiccionXC_PagMaestra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            this.cargaAdicciones();
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
        /// Carga las adicciones de la BD
        /// </summary>
        void cargaAdicciones()
        {
            BLAdicciones oAdicciones = new BLAdicciones();
            ///indicarle al dropdownlist la fuente de datos
            this.ddlAdiccion.DataSource = oAdicciones.RetonaAdiccion(null, null);
            ///indicarle al dropdownlist que se muestre
            this.ddlAdiccion.DataBind();

        }

        /// <summary>
        /// Valida que todas las reglas del formulario se hayan cumplido y procede
        /// a insertar la adicción utilizando un Store Procedura
        /// </summary>
        void AlmacenarAdicciones()
        {
            ///Variable para enviar un mensaje
            string mensaje = "";

            try
            {

                if (this.IsValid)
                {
                    ///Creación de objeto tipo BLAdicciones
                    BLAdicciones oAdiccion = new BLAdicciones();
                    ///Variable para compronar un resultado
                    bool resultado = false;

                    try
                    {
                        ///Creamos variables para asignar los datos que entran del formulario
                        string codigo = this.ddlAdiccion.SelectedValue;
                        string cedula = this.txtCedula.Text;
                        ///Llamos al store procedure del objeto y le enviamos los parámetros
                        resultado = oAdiccion.InsertaAdiccion(cedula, codigo);
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
                            mensaje += "La adicción fue insertada";
                        }
                    }
                    ///mostrar el mensaje
                    Response.Write("<script>alert('" + mensaje + "')</script>"); ;
                }

            }
            catch (Exception excepcionCapturada)
            {

                mensaje += $"Ocurrió un error:{excepcionCapturada.Message}";
            }
            
        }
        
        protected void btnAgregarAdicción_Click(object sender, EventArgs e)
        {
            ///Llamado a la función desde el evento OnClick
            AlmacenarAdicciones();
        }
    }
}