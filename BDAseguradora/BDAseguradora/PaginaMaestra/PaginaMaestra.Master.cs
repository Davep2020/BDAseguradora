using System;

namespace BDAseguradora.PaginaMaestra
{
    public partial class PaginaMaestra : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(this.Session["UsuarioLogeado"]) != true)
            {
                this.Response.Redirect("~/Formularios/Login.aspx");
                string datosUsuario = Convert.ToString(this.Session["NombreUsuario"]);
              
            }
        }

     

    }
}