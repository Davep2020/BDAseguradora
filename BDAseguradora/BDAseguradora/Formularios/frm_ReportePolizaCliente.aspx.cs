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
            string datosUsuario = Convert.ToString(this.Session["NombreUsuario"]);
            if (!string.IsNullOrEmpty(datosUsuario))
            {
                this.lblNombre.Text = datosUsuario;
            }
        }
        protected void btnSi_Click(object sender, EventArgs e)
        {
            this.Session.Add("NombreUsuario", null);
            this.Session.Add("Tipo", null);
            this.Session.Add("UsuarioLogeado", null);
            this.Response.Redirect("~/Formularios/Login.aspx");
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
                Poliza oPoliza = new Poliza();
                rpvClientes.LocalReport.ReportPath = rutaServidor;
                var infoFuenteDatos = this.rpvClientes.LocalReport.GetDataSourceNames();



                rpvClientes.LocalReport.DataSources.Clear();



                List<ReportePolizaCliente_Result> datosReporte = oPoliza.RetornaReporte(Convert.ToInt32(this.txtCedula.Text), txtApellido.Text, Convert.ToInt32(this.txtMonto.Text), Convert.ToDateTime(this.txtFecha.Text));



                ReportDataSource fuenteDatos = new ReportDataSource();
                fuenteDatos.Name = infoFuenteDatos[0];
                fuenteDatos.Value = datosReporte;



                this.rpvClientes.LocalReport.DataSources.Add(fuenteDatos);



                this.rpvClientes.LocalReport.Refresh();


            }
        }

    }
}