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
    public partial class frm_ReportePolizaCliente : System.Web.UI.Page
    {

        bdaseguradoraEntities Pack = new bdaseguradoraEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btBuscar_Click(object sender, EventArgs e)
        {
            this.contruirReporte();
        }

        void contruirReporte()
        {

            ///indicar la ruta del reporte
            string rutaReporte = "~/Reportes/RptPolizaXCliente.rdlc";
            ///construir la ruta física
            string rutaServidor = Server.MapPath(rutaReporte);
            ///Validar que la ruta física exista
            if (!File.Exists(rutaServidor))
            {
                this.lblResultado.Text =
                    "El reporte seleccionado no existe";
                return;
            }
            else
            {
                rpvClientes.LocalReport.ReportPath = rutaServidor;
                var infoFuenteDatos = this.rpvClientes.LocalReport.GetDataSourceNames();
                ///limpiar los datos de la fuente de datos
                rpvClientes.LocalReport.DataSources.Clear();
                ///obtener los datos del reporte
                List<ConsultarPoliza_Result> datosReporte = this.retornaDatosReporte(Convert.ToInt32(this.txtCedula.Text));
                ///crear la fuente de datos
                ReportDataSource fuenteDatos = new ReportDataSource();
                fuenteDatos.Name = infoFuenteDatos[0];
                fuenteDatos.Value = datosReporte;
                // agregar la fuente de datos al reporte
                this.rpvClientes.LocalReport.DataSources.Add(fuenteDatos);

                /// mostrar los datos en el reporte
                this.rpvClientes.LocalReport.Refresh();
            }
        }
        /// <summary>
        /// Función que retorna la fuente de datos a mostrar en el reporte
        /// </summary>
        /// <param name="pPrimerApellido"></param>
        /// <param name="pNombre"></param>
        /// <returns></returns>
        List<ConsultarPoliza_Result> retornaDatosReporte(
            int pCedula)
        {
            return this.Pack.ConsultarPoliza(pCedula).ToList();
                  
        }
    }
}