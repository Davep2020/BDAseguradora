using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BDAseguradora.Modelo;

namespace BDAseguradora.BL
{
    public class BLProvincia
    {
        bdaseguradoraEntities modeloDB = new bdaseguradoraEntities();
        /// <summary>
        /// Método que retorna en un "DropDown List" las provincias
        /// </summary>
        /// <param name="pNombre">Nombre de la Provincia</param>
        /// <returns></returns>
        public List<spRetornaProvincias_Result> RetornaProvincias(string pNombre = null)
        {
            List<spRetornaProvincias_Result> resultado = new List<spRetornaProvincias_Result>();
            resultado = this.modeloDB.spRetornaProvincias(pNombre).ToList();

            return resultado;
        }
    }
}