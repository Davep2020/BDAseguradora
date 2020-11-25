﻿using System;
using BDAseguradora.Modelo;
using BDAseguradora.BL;

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
        }
    }
}