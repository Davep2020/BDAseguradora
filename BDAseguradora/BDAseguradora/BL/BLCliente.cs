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
        public List<spMuestraCliente_Result> RetornaClientes(int pCedula)
        {
            ///Variable que se retorna
            List<spMuestraCliente_Result> resultados = new List<spMuestraCliente_Result>();
            ///Asignar las variables
            resultados = this.modeloBD.spMuestraCliente(pCedula).ToList();
            ///Retorna el valor
            return resultados;
        }

        public List<spMuestraAdiccion_Result> RetornaAdicciones(int pCedula)
        {
            ///Variable que se retorna
            List<spMuestraAdiccion_Result> resultados = new List<spMuestraAdiccion_Result>();
            ///Asignar las variables
            resultados = this.modeloBD.spMuestraAdiccion(pCedula).ToList();
            ///Retorna el valor
            return resultados;
        }
    }
}