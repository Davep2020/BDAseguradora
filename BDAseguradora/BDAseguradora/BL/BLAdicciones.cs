using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BDAseguradora.Modelo;

namespace BDAseguradora.BL
{
    public class BLAdicciones
    {
        /// <summary>
        /// Conección
        /// </summary>
        bdaseguradoraEntities modeloBD = new bdaseguradoraEntities();

        /// <summary>
        /// Método tipo lista que retorna todas las adicciones que hay.
        /// </summary>
        /// <param name="pCodigo">Código de la adicción</param>
        /// <param name="pNombre">Nombre de la adicción</param>
        /// <returns></returns>
        public List<spRetornaAdicciones_Result> RetonaAdiccion(string pCodigo = null, string pNombre = null)
        {
            List<spRetornaAdicciones_Result> resultado = new List<spRetornaAdicciones_Result>();
            resultado = this.modeloBD.spRetornaAdicciones(pCodigo, pNombre).ToList();
            return resultado;
        }
        /// <summary>
        /// Método que inserta la adicción de un cliente
        /// </summary>
        /// <param name="pCedula">Cédula del cliente</param>
        /// <param name="pCodigo">Código de la adicción</param>
        /// <returns></returns>
        public bool InsertaAdiccion(string pCedula, string pCodigo)
        {
            ///Registra si se afectó algún registro
            int registros = 0;
            ///Procedimiento almacenado que recibe una cedula y un codigo de adicción
            ///para ingresarlos en la tabla intermedia entre TblDetallePersona y TblAdicciones
            registros = this.modeloBD.spInsertaAdiccionXCliente(pCedula, pCodigo);
            ///"If" que revisa que se haya modificado algún dato
            if (registros > 0)
            {
                return true;
            }
            return false;
        }

        ////public bool EliminaAdiccionCliente(int pIdAdiccion, int pCedula)
        ////{
        ////    int resultado = 0;
        ////    resultado = this.modeloBD.spEliminaAdiccionCliente(pIdAdiccion, pCedula);
        ////    return resultado > 0;
        ////}
    }
}