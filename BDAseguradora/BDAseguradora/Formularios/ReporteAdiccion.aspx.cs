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
    public partial class ReporteAdiccion : System.Web.UI.Page
    {
        bdaseguradoraEntities modeloBD= new bdaseguradoraEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            construirReporte();
        }
        
        void construirReporte()
        {

            string mensaje = "";
            try
            {
                
                ///indicar la ruta del reporte
                string rutaReporte = "~/Reportes/ReporteAdiccion.rdlc";
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
                    List<spDatosReporteAdicciones_Result> datosReporte = this.retornaDatosReporte(txtNombre.Text, Convert.ToInt32(txtCedula.Text), txtCodigo.Text, txtNombreAdiccion.Text);
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
            catch (Exception excepcionCapturada)
            {
                mensaje += $"Ocurrio un error:{excepcionCapturada.Message}";

            }
            lblMensaje.Text = mensaje;
         
        }

        /// <summary>
        /// Función que retorna la fuente de datos a mostrar en el reporte
        /// </summary>
        /// <param name="pNombre"></param>
        /// <param name="pApellido"></param>
        /// <param name="pCodigo"></param>
        /// <param name="pNombreAdiccion"></param>
        /// <returns></returns>
        List<spDatosReporteAdicciones_Result> retornaDatosReporte(string pNombre, int pCedula, string pCodigo, string pNombreAdiccion)
        {
            return this.modeloBD.spDatosReporteAdicciones(pNombre, pCedula, pCodigo, pNombreAdiccion).ToList();

        }
    }
}