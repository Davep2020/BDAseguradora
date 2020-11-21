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
    public partial class frm_EliminarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.CargarProvincia();
                this.CargarTipoCliente();
                this.CargarUsuario();
            }
        }

        protected void btnBorrarUsuario_Click(object sender, EventArgs e)
        {
            this.BorrarCliente();
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
        /// Lista los datos del cliente, dándole el id del cliente 
        /// y los carga en los textbox correspondientes
        /// </summary>
        void CargarUsuario()
        {
            string parametro = this.Request.QueryString["ID_DPersona_Dp"];

            if (String.IsNullOrEmpty(parametro))
            {
                Response.Write("<script>alert('Parámetro nulo')</script>");
            }
            else
            {
                int idCliente = Convert.ToInt16(parametro);
                Session["IdCliente"] = idCliente;
                BLCliente oBLCliente = new BLCliente();

                spRetornaClienteActualizar_Result datos = new spRetornaClienteActualizar_Result();

                datos = oBLCliente.RetornaClienteActualiza(idCliente);
                if (datos == null)
                {
                    Response.Redirect("frm_ListaClientes_PagMaestra.aspx");
                }
                else
                {
                    this.txtCedula.Text = datos.Cedula_Dp.ToString();
                    this.txtGenero.Text = datos.Genero_DP.ToString();
                    this.txtFecha_Nacimiento.Text = datos.Fecha_nacimiento_Dp.ToString();
                    this.txtNombre.Text = datos.Nombre_Dp.ToString();
                    this.txtPrimerApellido.Text = datos.Primer_Apellido_Dp;
                    this.txtSegundoApellido.Text = datos.Segundo_Apellido_Dp.ToString();
                    this.txtDireccion.Text = datos.Dirección_Física_Dp.ToString();
                    this.txtTelefono1.Text = datos.Telefono_Principal_Dp.ToString();
                    this.txtTelefono2.Text = datos.Telefono_Secundario_Dp.ToString();
                    this.txtCorreo.Text = datos.Correo_Electrónico_Dp.ToString();
                    this.ddlProvincia.SelectedValue = datos.Nombre_Prv.ToString();
                }
            }
        }
        /// <summary>
        /// Método que elimina un cliente con el id.
        /// </summary>
        void BorrarCliente()
        {
            //Variable de mensaje
            string mensaje = "";
            //Crear objeto
            BLCliente oBLCliente = new BLCliente();
            //Variable para comprobar si se inserta
            bool resultado = false;

            try
            {
                int idCliente = Convert.ToInt16(Session["IdCliente"]);

                resultado = oBLCliente.EliminarCliente(idCliente);
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
                    mensaje += "El registro fue eliminado.";
                    Response.Redirect("frm_ListaClientes_PagMaestra.aspx");
                }
            }
            ///mostrar el mensaje
            Response.Write("<script>alert('" + mensaje + "')</script>");
        }
        //Botón que redirige al formulario para buscar clientes.
        protected void Volver_Click(object sender, EventArgs e)
        {
            Response.Redirect("frm_ListaClientes_PagMaestra.aspx");
        }
    }
}