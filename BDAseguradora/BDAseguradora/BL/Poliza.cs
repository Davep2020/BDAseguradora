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


    }
}