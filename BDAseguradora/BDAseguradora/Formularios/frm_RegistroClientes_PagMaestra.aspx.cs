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
    public partial class frm_RegistroClientes_PagMaestra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.CargarProvincia();
                this.CargarTipoCliente();
            }
        }
        //Evento del botón
        protected void btnAgregarUsuario_Click(object sender, EventArgs e)
        {
            this.GuardarCliente();
        }
        /// <summary>
 /// Lista las provincias que vienen de la tabla TblProvincias
 /// y las carga en un GRID
 /// </summary>
        void CargarProvincia()
        {
            ///Crear objeto
            BLProvincia oBLProvincia = new BLProvincia();
            ///La fuente del datos del dropdown
            this.ddlProvincia.DataSource = oBLProvincia.RetornaProvincias(null);
            ///Mostra en el dropdown
            this.ddlProvincia.DataBind();
        }
        /// <summary>
        /// Lista los tipos de clientes que vienen de la tabla TblTipoPersonas
        /// y las carga en un GRID
        /// </summary>
        void CargarTipoCliente()
        {
            ///Crear objeto
            BLTipoCliente oBLTipoCliente = new BLTipoCliente();
            ///La fuente del datos del dropdown
            this.ddlTipoPersona.DataSource = oBLTipoCliente.RetornaTipoPersona(null);
            ///Mostra en el dropdown
            this.ddlTipoPersona.DataBind();
        }
        /// <summary>
        /// Método que ingresa el registro del cliente.
        /// </summary>
        void GuardarCliente()
        {
            //Variable de mensaje
            string mensaje = "";
            //Crear objeto
            BLCliente oBLCliente = new BLCliente();
            //Variable para comprobar si se inserta
            bool resultado = false;

            try
            {
                //Variable para capturar el id del tipo de cliente
                int idTipoCliente = Convert.ToInt16(this.ddlTipoPersona.SelectedValue);
                //Variable para capturar el id de la provincia
                int idProvincia = Convert.ToInt16(this.ddlProvincia.SelectedValue);
                //Ejecutar método del objeto, con sus respectivos parámetros
                resultado = oBLCliente.InsertaCliente(Convert.ToInt32(this.txtCedula.Text), this.txtGenero.Text, Convert.ToDateTime(this.txtFecha_Nacimiento.Text)
                                                    , this.txtNombre.Text,this.txtPrimerApellido.Text, this.txtSegundoApellido.Text
                                                    , this.txtDireccion.Text, this.txtTelefono1.Text, this.txtTelefono2.Text,
                                                    this.txtCorreo.Text, idTipoCliente, idProvincia);
            }
            catch (Exception excepcion)
            {
                //Mensaje de error si no funciona
                mensaje += $"Ocurrió un error:{excepcion.Message}";
            }
            finally
            {
                if (resultado)
                {
                    //Mensaje si funciona
                    mensaje += "El registro fue insertado.";
                }
            }
            ///mostrar el mensaje
            Response.Write("<script>alert('" + mensaje + "')</script>"); ;
        }
    }
}