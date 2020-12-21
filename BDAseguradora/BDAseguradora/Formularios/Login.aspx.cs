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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            if (this.Page.IsValid)
            {
                this.RealizarAutenticacion();
            }
        }
        void RealizarAutenticacion()
        {
            string mensaje = "";

            try
            {
                Logins oCliente = new Logins();
                RetornaUsuaPwd_Result datosCliente = new RetornaUsuaPwd_Result();
                ///invocar al procedimiento
                datosCliente =
                    oCliente.RetornaUsuario(txtUsua.Text, txtPass.Text);
                Session["Correo"] = txtUsua.Text;
                if (datosCliente == null)
                {
                    Response.Write("<script>alert('Datos Invalidos')</script>"); ;
                    this.Session.Add("NombreUsuario", null);
                    this.Session.Add("Tipo", null);
                    this.Session.Add("Fecha", null);
                    this.Session.Add("UsuarioLogeado", null);
                }
                else
                {
                    this.Session.Add("NombreUsuario", datosCliente.@Nombre);
                    this.Session.Add("Tipo", datosCliente.@Tipo);
                    this.Session.Add("Fecha", datosCliente.@Fecha);
                    this.Session.Add("UsuarioLogeado", true);


                    if (Convert.ToInt32(this.Session["Tipo"]) == 1)
                    {
                        this.Response.Redirect("~/Formularios/IndexAdmin_PagMaestra.aspx");
                    }
                    else if (Convert.ToInt32(this.Session["Tipo"]) == 2)
                    {
                        this.Response.Redirect("~/Formularios/frm_ClienteVista.aspx");
                    }


                }
            }
            catch (Exception excepcionCapturada)
            {
                mensaje += $"Ocurrio un error:{excepcionCapturada.Message}";

            }

           lblmensaje.Text = mensaje;
        }
        


    }
}
