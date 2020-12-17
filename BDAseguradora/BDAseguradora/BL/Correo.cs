using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BDAseguradora.Modelo;

namespace BDAseguradora.BL
{
    public class Correo
    {
        bdaseguradoraEntities correo = new bdaseguradoraEntities();
        public Correo_Result DatosUsuario(int pIdCliente)
        {
            Correo_Result resultado = new Correo_Result();
            resultado =
                this.correo.Correo(pIdCliente).FirstOrDefault();


            return resultado;
        }
    }
}