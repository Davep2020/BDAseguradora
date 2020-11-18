﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BDAseguradora.Modelo;
using BDAseguradora.BL;

namespace BDAseguradora.Formularios
{
    public partial class frm_ModificarCliente : System.Web.UI.Page
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

        protected void btnAgregarUsuario_Click(object sender, EventArgs e)
        {
            this.GuardarCliente();
        }


        void CargarProvincia()
        {
            ///Crear objeto
            BLProvincia oBLProvincia = new BLProvincia();
            ///La fuente del datos del dropdown
            this.ddlProvincia.DataSource = oBLProvincia.RetornaProvincias(null);
            ///Mostra en el dropdown
            this.ddlProvincia.DataBind();
        }

        void CargarTipoCliente()
        {
            ///Crear objeto
            BLTipoCliente oBLTipoCliente = new BLTipoCliente();
            ///La fuente del datos del dropdown
            this.ddlTipoPersona.DataSource = oBLTipoCliente.RetornaTipoPersona(null);
            ///Mostra en el dropdown
            this.ddlTipoPersona.DataBind();
        }

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
                //obtener el valor del hidden field 
                int idCliente = Convert.ToInt16(hdIdCliente.Value);
                //Ejecutar método del objeto, con sus respectivos parámetros
                resultado = oBLCliente.ModificarCliente(idCliente, Convert.ToInt32(this.txtCedula.Text), this.txtGenero.Text, Convert.ToDateTime(this.txtFecha_Nacimiento.Text)
                                                    , this.txtNombre.Text, this.txtPrimerApellido.Text, this.txtSegundoApellido.Text
                                                    , this.txtDireccion.Text, this.txtTelefono1.Text, this.txtTelefono2.Text,
                                                    this.txtCorreo.Text, idProvincia);
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
            Response.Write("<script>alert('" + mensaje + "')</script>");
        }
    }
}