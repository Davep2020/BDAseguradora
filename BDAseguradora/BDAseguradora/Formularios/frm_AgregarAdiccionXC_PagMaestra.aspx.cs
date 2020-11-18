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
                    if (resultado )
                    {
                        mensaje += "La adicción fue insertada";
                    }
                }
                ///mostrar el mensaje
                Response.Write("<script>alert('" + mensaje + "')</script>"); ;
            }
        }
        void Hola()
        {
            Response.Write("<script>alert('Prueba del botón de ingreso de adicciones')</script>");
        }
        protected void btnAgregarAdicción_Click(object sender, EventArgs e)
        {
            ///Llamado a la función desde el evento OnClick
            AlmacenarAdicciones();
        }
    }
}