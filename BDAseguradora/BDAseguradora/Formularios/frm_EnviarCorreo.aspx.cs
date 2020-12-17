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
            string tomail = "";
            tomail = txtCorreo.Text;
            string pass = "";
            pass = txtContraseña.Text;
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("Aseguradora@gmail.com");
            mail.To.Add(txtCorreo.Text);
            mail.To.Add(txtCorreo.Text);
            mail.Subject = "Password Recovery ";
            mail.Body += " <html>";
            mail.Body += "<body>";
            mail.Body += "<table>";

            mail.Body += "<tr>";
            mail.Body += "<td>User Name : </td><td>"+tomail+"</td>";
            mail.Body += "</tr>";

            mail.Body += "<tr>";
            mail.Body += "<td>Password : </td><td>"+pass+"</td>";
            mail.Body += "</tr>";

            mail.Body += "</table>";
            mail.Body += "</body>";
            mail.Body += "</html>";

            mail.IsBodyHtml = true;
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("AseguradoraPuriscal@gmail.com", "gl9#^oWWV#er");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);











            //string body =
            //    "<body>"+
            //    "<h1>Bienvenido</h1>"+
            //    "<h4>Querido Asociado</h4>" +
            //    "<span>Estan son las credenciales para ingresar a su plataforma </span>" +
            //    "<span>de gestion de datos de la aseuradora.</span>" +
            //    "<h4>Usuario:r/><span>Saludos Cordiales.</span> " +
            //    "</body> </h4>" +txtCorreo.Text+
            //    "<h4>Contraseña: </h4>" +txtContraseña.Text+
            //    "<br/><b";
            //string tomail = "";
            //tomail = txtCorreo.Text;

            //SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            //smtp.Credentials = new NetworkCredential("jdavidaraya11@gmail.com", "manzanas123xd");
            //smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            //smtp.EnableSsl = true;
            //smtp.UseDefaultCredentials = false;
            //MailMessage mail = new MailMessage();
            //mail.From = new MailAddress("jdavidaraya11@gmail.com", "Credenciales");
            //mail.To.Add(new MailAddress(tomail));
            //mail.Subject = "Mensaje de Bienvenida";
            //mail.IsBodyHtml = true;
            //mail.Body=body;
            //smtp.Send(mail);
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
                    this.txtFecha.Text = datosCliente.Ult_Fecha_Ing_Sg.ToString();

                }
            }
        }
    }
}