using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BDAseguradora.Modelo;
using BDAseguradora.BL;
using System.Net.Mail;
using System.Net;

namespace BDAseguradora.Formularios
{
    public partial class frm_EnviarCorreo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {

                this.cargaDatosRegistro();

            }
            string datosUsuario = Convert.ToString(this.Session["NombreUsuario"]);
            if (!string.IsNullOrEmpty(datosUsuario))
            {
                this.lblNombre.Text = datosUsuario;
            }
        }

        protected void btnCorreo_Click(object sender, EventArgs e)
        {
           
            string mensaje = "";
            try
            {
                string tomail = "";
                tomail = txtCorreo.Text;
                string pass = "";
                pass = txtContraseña.Text;
                string datos = "";
                datos = txtDatos.Text;
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("Aseguradora@gmail.com");
                mail.To.Add(txtCorreo.Text);
                mail.Subject = "Su cuenta en Seguros El Equipo del Siglo XXI.";
                mail.Body += " <html>";
                mail.Body += "<body>";
                mail.Body += "<h1>Estimado cliente:  </h1>"+ datos+ ", gracias por confiar en Seguros el Equipo del Siglo XXI. Para nosotros es un placer servirle."+"</br>";
                mail.Body += "<h1>Sus credenciales para ingresar son los siguientes: </h1>"+"</br>";
                mail.Body += "<h1>Usuario: </h1>"+ tomail;
                mail.Body += "<h1>Clave: </h1>"+ pass;
                mail.Body += "<h1>Gracias</h1>";
                mail.Body += "</body>";
                mail.Body += "</html>";

                mail.IsBodyHtml = true;
                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("AseguradoraPuriscal@gmail.com", "gl9#^oWWV#er");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                mensaje += "El correo fue enviado.";
            }
            catch (Exception excepcion)
            {
                //Mensaje de error si no funciona
                mensaje += $"Ocurrió un error:{excepcion.Message}";
            }
    
            ///mostrar el mensaje
            Response.Write("<script>alert('" + mensaje + "')</script>"); ;

        }

        protected void btnSi_Click(object sender, EventArgs e)
        {
            this.Session.Add("NombreUsuario", null);
            this.Session.Add("Tipo", null);
            this.Session.Add("UsuarioLogeado", null);
            this.Response.Redirect("~/Formularios/Login.aspx");
        }


        void cargaDatosRegistro()
        {
            ///obtener el parámetro envíado desde el grid
            ///es CASESENSITIVE
            string parametro =
                this.Request.QueryString["ID_DPersona_Dp"];


            //validar si el parametro es correcto
            if (String.IsNullOrEmpty(parametro))
            {
                lblmensaje.Text = "Parametro Nulo";
            }
            else
            {
                int idCliente = Convert.ToInt16(parametro);
                Session["IdCliente"] = idCliente;
                Correo oCliente = new Correo();
                Correo_Result datosCliente = new Correo_Result();
                ///invocar al procedimiento
                datosCliente =
                    oCliente.DatosUsuario(idCliente);
                if (datosCliente == null)
                {
                    Response.Redirect("frm_ListaClientes_PagMaestra.aspx");
                }
                else
                {
                    this.txtCorreo.Text = datosCliente.Ussers_Sg;
                    this.txtContraseña.Text = datosCliente.Password_Sg;
                    this.txtDatos.Text = datosCliente.DatosUsuario;
                    this.txtFecha.Text = datosCliente.Ult_Fecha_Ing_Sg.ToString();

                }
            }
        }
    }
}