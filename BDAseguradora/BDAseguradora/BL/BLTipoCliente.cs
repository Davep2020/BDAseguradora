using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BDAseguradora.Modelo;

namespace BDAseguradora.BL
{
    public class BLTipoCliente
    {
        bdaseguradoraEntities modeloBD = new bdaseguradoraEntities();
        /// <summary>
        /// Método que retorna en un "DropDown List" los tipos posibles de persona 
        /// </summary>
        /// <param name="pTipo">Tipo de persona</param>
        /// <returns></returns>
        public List<spRetornaTipoPersona_Result> RetornaTipoPersona(string pTipo)
        {
            List<spRetornaTipoPersona_Result> resultado = new List<spRetornaTipoPersona_Result>();

            resultado = this.modeloBD.spRetornaTipoPersona(pTipo).ToList();

            return resultado;
        }
    }
}