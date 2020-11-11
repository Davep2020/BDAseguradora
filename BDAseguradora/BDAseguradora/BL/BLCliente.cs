using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BDAseguradora.Modelo;

namespace BDAseguradora.BL
{
    public class BLCliente
    {
        /// <summary>
        /// Variable del modelo de EF
        /// </summary>
        bdaseguradoraEntities modeloBD = new bdaseguradoraEntities();

        /// <summary>
        /// Método que invocar el procedimiento almacenado utilizando los parámetros
        /// </summary>
        /// <param name="pPrimerApellido"></param>
        /// <param name="pNombre"></param>
        /// <returns></returns>
        public List<spMostrarClientes_Result> RetornaClientes(string pPrimerApellido = null, string pNombre = null)
        {
            ///Variable que se retorna
            List<spMostrarClientes_Result> resultados = new List<spMostrarClientes_Result>();
            ///Asignar las variables
            resultados = this.modeloBD.spMuestraCliente(pPrimerApellido, pNombre).toList<>();
            ///Retorna el valor
            return resultados;
        }
    }
}