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
        bdaseguradoraEntities blCliente = new bdaseguradoraEntities();

        /// <summary>
        /// Método que invocar el procedimiento almacenado utilizando los parámetros
        /// </summary>
        /// <param name="pPrimerApellido"></param>
        /// <param name="pNombre"></param>
        /// <returns></returns>
        public List<spMuestraCliente_Result>
            RetornaClientes(string pPrimerApellido = null, string pNombre = null)
        {
            ///Variable que se retorna
            List<spMuestraCliente_Result> resultados = new List<spMuestraCliente_Result>();
            ///Asignar las variables
            resultados = this.blCliente.spMuestraCliente(pPrimerApellido, pNombre).ToList();
            ///Retorna el valor
            return resultados;
        }

        /**Insertar Cobertura**/
        public bool InsertaCobertura(string pNombre,string pDescripcion,int pPorcentaje)
        {
            int registroAfectados = 0;
            registroAfectados =
                this.blCliente.spIngresarCobertura(pNombre, pDescripcion, pPorcentaje);
            if (registroAfectados > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
            
        }



    }
}