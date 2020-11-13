using System;
using BDAseguradora.BL;
using BDAseguradora.Modelo;

namespace BDAseguradora.Formularios
{
    public partial class Polizas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       void AlmacenarCoberturas()
        {
            if (this.IsValid)
            {
                string mensaje = "";
                BLCliente oCliente = new BLCliente();
                bool resultado = false;

                try
                {
                    resultado = oCliente.InsertaCobertura(this.txtNombreCober.Text, this.txtADescrip.InnerText,
                         Convert.ToInt32(txtPorcentaje.Text));
                }
                catch(Exception excepcionCapturada)
                {
                    mensaje += $"Ocurrio un error:{excepcionCapturada.Message}";
                    
                }

                finally
                {
                    if (resultado)
                    {
                        mensaje += "El registro fue insertado";
                    }
                }

                Response.Write("<script>alert('" + mensaje + "')<script>");
            }
        }

        protected void btnCobertura_Click(object sender, EventArgs e)
        {
            this.AlmacenarCoberturas();
        }
    }
}