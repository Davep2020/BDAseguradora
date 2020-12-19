using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BDAseguradora.Modelo;

namespace BDAseguradora.BL
{
    public class Poliza
    {
        bdaseguradoraEntities Polizas = new bdaseguradoraEntities();

        /*Retorna la Cobertura*/
        public List<RetornaCobertura_Result> RetornaCober(string pNombre = null)
        {
            ///crear la variable que se retornará
            List<RetornaCobertura_Result> resultado = new List<RetornaCobertura_Result>();
            ///asignarle a la variable el resultado del llamado del procedimiento almacenado
            resultado = this.Polizas.RetornaCobertura(pNombre).ToList();
            return resultado;
        }

        /// <summary>
        /// Inserta la poliza
        /// </summary>
        /// <param name="pCedula"></param>
        /// <param name="pCobertura"></param>
        /// <param name="pMonto"></param>
        /// <param name="pfecha"></param>
        /// <returns></returns>
        public bool InsertaPoliza(int pCedula, int pCobertura, int pMonto, DateTime pfecha)
        {
            int registroAfectados = 0;
            registroAfectados =
                this.Polizas.IngresarPoliza(pCedula, pCobertura, pMonto, pfecha);
            if (registroAfectados > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }


        public List<ConsultarPoliza_Result> RetornaPolizas(int pCedula)
        {
            ///crear la variable que se retornará
            List<ConsultarPoliza_Result> resultado = new List<ConsultarPoliza_Result>();
            ///asignarle a la variable el resultado del llamado del procedimiento almacenado
            resultado = this.Polizas.ConsultarPoliza(pCedula).ToList();
            return resultado;
        }

       


        public RetornPolizaID_Result RetornaPolizaID(int pid)
        {
            RetornPolizaID_Result resultado = new RetornPolizaID_Result();
            resultado =
                this.Polizas.RetornPolizaID(pid).FirstOrDefault();


            return resultado;
        }

        public bool EliminaPoliza(int pidPoliza)
        {
            ///variable que posee la cantidad de registros afectados
            ///al realizar insert/update/delete la cantidad de 
            ///registros afectados debe ser mayor a 0
            int registrosAfectados = 0;
            ///invocar al procedimiento almacenado
            registrosAfectados =
                this.Polizas.EliminaPoliza(pidPoliza);

            return registrosAfectados > 0;

        }





        public bool ModificarPolizar(int pid,int pidPer,int pCobertura,int pMonto, DateTime pfecha)
        {
   
            int registroAfectados = 0;
            registroAfectados =
                this.Polizas.ModificaPoliza(pid,pidPer,pCobertura,pMonto,pfecha);

            return registroAfectados > 0;

        }


    }
}