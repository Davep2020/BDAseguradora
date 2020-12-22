using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BDAseguradora.Modelo;
using BDAseguradora.BL;
using Microsoft.Reporting.WebForms;

namespace BDAseguradora.Formularios
{
    public partial class ReporteAdiccionCliente : System.Web.UI.Page
    {
        bdaseguradoraEntities modeloBD = new bdaseguradoraEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            construirReporte();
            }
            if (Convert.ToBoolean(this.Session["UsuarioLogeado"]) != true)
            {
                this.Session.Add("NombreUsuario", null);
                this.Session.Add("Tipo", null);
                this.Session.Add("UsuarioLogeado", null);
                this.Response.Redirect("~/Formularios/Login.aspx");
            }
        }


        /// <summary>
        /// Método para cerrar sesión
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        
        protected void btnSi_Click(object sender, EventArgs e)
        {
            this.Session.Add("NombreUsuario", null);
            this.Session.Add("Tipo", null);
            this.Session.Add("UsuarioLogeado", null);
            this.Response.Redirect("~/Formularios/Login.aspx");
        }

        void construirReporte()
        {
            ///indicar la ruta del reporte
            string rutaReporte = "~/Reportes/ReporteAdiccionesCliente.rdlc";
            ///construir la ruta física
            string rutaServidor = Server.MapPath(rutaReporte);
            if (!File.Exists(rutaServidor))
            {
                this.lblMensaje.Text = "El reporte seleccionado no existe";
                return;
            }
            else
            {
                rpvAdicciones.LocalReport.ReportPath = rutaServidor;
                var infoFuenteDatos = this.rpvAdicciones.LocalReport.GetDataSourceNames();
                ///limpiar los datos de la fuente de datos
                rpvAdicciones.LocalReport.DataSources.Clear();
                ///obtener los datos del reporte
                List<spDatosReporteAdiccionesCliente_Result> datosReporte = this.retornaDatosReporte(Session["correo"].ToString());
                ///crear la fuente de datos
                ReportDataSource fuenteDatos = new ReportDataSource();
                fuenteDatos.Name = infoFuenteDatos[0];
                fuenteDatos.Value = datosReporte;
                // agregar la fuente de datos al reporte
                this.rpvAdicciones.LocalReport.DataSources.Add(fuenteDatos);

                /// mostrar los datos en el reporte
                this.rpvAdicciones.LocalReport.Refresh();
            }
        }

        /// <summary>
        /// Función que retorna la fuente de datos a mostrar en el reporte
        /// </summary>
        /// <param name="pNombre"></param>
        /// <param name="pApellido"></param>
        /// <param name="pCodigo"></param>
        /// <param name="pNombreAdiccion"></param>
        /// <returns></returns>
        List<spDatosReporteAdiccionesCliente_Result> retornaDatosReporte(string pCorreo)
        {
            return this.modeloBD.spDatosReporteAdiccionesCliente(pCorreo).ToList();

        }


    }
}