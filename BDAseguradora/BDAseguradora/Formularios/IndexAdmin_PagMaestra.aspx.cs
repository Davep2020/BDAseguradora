using System;
using BDAseguradora.Modelo;
using BDAseguradora.BL;
using System.Web;

namespace BDAseguradora.Formularios
{
    public partial class IndexAdmin_PagMaestra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            string datosUsuario = Convert.ToString(this.Session["NombreUsuario"]);
            if (!string.IsNullOrEmpty(datosUsuario))
            {
                this.lblNombre.Text = datosUsuario;
            }

            string Fechaingreso = Convert.ToString(this.Session["Fecha"]);
            if (!string.IsNullOrEmpty(Fechaingreso))
            {
                this.lblFecha.Text = Fechaingreso;
            }

            if (Convert.ToBoolean(this.Session["UsuarioLogeado"]) != true)
            {
                this.Session.Add("NombreUsuario", null);
                this.Session.Add("Tipo", null);
                this.Session.Add("UsuarioLogeado", null);
                this.Response.Redirect("~/Formularios/Login.aspx");
            }
        }
        protected void btnSi_Click(object sender, EventArgs e)
        {
            this.Session.Add("NombreUsuario", null);
            this.Session.Add("Tipo", null);
            this.Session.Add("UsuarioLogeado", null);
            this.Response.Redirect("~/Formularios/Login.aspx");
        }
    }
}