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
<<<<<<< HEAD
        public List<spMuestraCliente_Result>
            RetornaClientes(string pPrimerApellido = null, string pNombre = null)
=======
        public List<spMuestraCliente_Result> RetornaClientes(int pCedula)
>>>>>>> 749fe69dea4c69639d569a29c016c5da17f2d1ba
        {
            ///Variable que se retorna
            List<spMuestraCliente_Result> resultados = new List<spMuestraCliente_Result>();
            ///Asignar las variables
<<<<<<< HEAD
            resultados = this.blCliente.spMuestraCliente(pPrimerApellido, pNombre).ToList();
=======
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
>>>>>>> 749fe69dea4c69639d569a29c016c5da17f2d1ba
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