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
    public partial class frm_EliminarAdiccionCliente : System.Web.UI.Page
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
        void EliminarAdicciones()
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

        protected void btnEliminarAdicción_Click(object sender, EventArgs e)
        {
            this.EliminarAdicciones();
        }



    }
}