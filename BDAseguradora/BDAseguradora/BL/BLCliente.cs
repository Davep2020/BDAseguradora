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

        public List<spMuestraCliente_Result> RetornaClientes(int pCedula)
        {
            List<spMuestraCliente_Result> resultados = new List<spMuestraCliente_Result>();
            resultados = this.blCliente.spMuestraCliente(pCedula).ToList();
            ///Retorna el valor
            return resultados;
        }

        public List<spMuestraAdiccion_Result> RetornaAdicciones(int pCedula)
        {
            ///Variable que se retorna
            List<spMuestraAdiccion_Result> resultados = new List<spMuestraAdiccion_Result>();
            ///Asignar las variables
            resultados = this.blCliente.spMuestraAdiccion(pCedula).ToList();
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