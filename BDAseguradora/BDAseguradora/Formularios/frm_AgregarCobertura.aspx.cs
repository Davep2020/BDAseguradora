﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BDAseguradora.BL;
using BDAseguradora.Modelo;

namespace BDAseguradora.Formularios
{
    public partial class frm_AgregarCobertura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void AlmacenarCoberturas()
        {
            if (this.IsValid)
            {
                string mensaje = "";
                Cobertura oCliente = new Cobertura();
                bool resultado = false;

                try
                {
                    resultado = oCliente.InsertaCobertura(this.txtNombreCober.Text, this.txtADescrip.InnerText,
                         Convert.ToInt32(txtPorcentaje.Text));
                }
                catch (Exception excepcionCapturada)
                {
                    mensaje += $"Ocurrio un error:{excepcionCapturada.Message}";

                }

                finally
                {
                    if (resultado)
                    {
                        mensaje += "El registro fue insertado";
                    }
                    lblmensaje.Text = mensaje;
                }
            }
        }

        void limpiar() 
        {
            txtNombreCober.Text = "";
            txtADescrip.InnerText = "";
            txtPorcentaje.Text = "";
        }




        protected void btnCobertura_Click1(object sender, EventArgs e)
        {
            this.AlmacenarCoberturas();
            this.limpiar();
        }

    }
}