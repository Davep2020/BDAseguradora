using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BDAseguradora.Modelo;

namespace BDAseguradora.BL
{
    public class Cobertura
    {
        bdaseguradoraEntities coberturas = new bdaseguradoraEntities();

        public List<ConsultarCobertura_Result> RetornaCoberturas(string pnombre)
        {
            List<ConsultarCobertura_Result> resultados = new List<ConsultarCobertura_Result>();
            resultados = this.coberturas.ConsultarCobertura(pnombre).ToList();
            ///Retorna el valor
            return resultados;
        }

        public RetornaCoberturaID_Result RetornaCoerturaID(int pid)
        {
            RetornaCoberturaID_Result resultado = new RetornaCoberturaID_Result();
            resultado =
                this.coberturas.RetornaCoberturaID(pid).FirstOrDefault();


            return resultado;
        }

        /**Insertar Cobertura**/
        public bool InsertaCobertura(string pNombre, string pDescripcion, int pPorcentaje)
        {
            int registroAfectados = 0;
            registroAfectados =
                this.coberturas.spIngresarCobertura(pNombre, pDescripcion, pPorcentaje);
            if (registroAfectados > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public bool ModificaCobertura(int pID_DPoliza_Dpl, string pNombre_Dpl, string pDescripción_Dpl,
                   int pPorcentaje_Dpl)
        {
            ///variable que posee la cantidad de registros afectados
            ///al realizar insert/update/delete la cantidad de 
            ///registros afectados debe ser mayor a 0
            int registrosAfectados = 0;
            ///invocar al procedimiento almacenado
            registrosAfectados =
                this.coberturas.sp_ModificaCobertura(
                    pID_DPoliza_Dpl,
                    pNombre_Dpl,
                    pDescripción_Dpl,
                    pPorcentaje_Dpl);

            return registrosAfectados > 0;

        }


        public bool EliminaCobertura(int pidCobertura)
        {
            ///variable que posee la cantidad de registros afectados
            ///al realizar insert/update/delete la cantidad de 
            ///registros afectados debe ser mayor a 0
            int registrosAfectados = 0;
            ///invocar al procedimiento almacenado
            registrosAfectados =
                this.coberturas.EliminaCoberturas(pidCobertura);

            return registrosAfectados > 0;

        }





    }
}