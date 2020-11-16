﻿using System;
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
        /// Método que retorna el cliente que se consulta por el número de cédula
        /// </summary>
        /// <param name="pCedula">Número de cédula del cliente</param>
        /// <returns></returns>
        public List<spMuestraCliente_Result> RetornaClientes(int pCedula)
        {
            List<spMuestraCliente_Result> resultados = new List<spMuestraCliente_Result>();
            resultados = this.blCliente.spMuestraCliente(pCedula).ToList();
            ///Retorna el valor
            return resultados;
        }
<<<<<<< HEAD




=======
        /// <summary>
        /// Método que retorna las adicciones del cliente que se consultan por el número de cédula
        /// </summary>
        /// <param name="pCedula"> Número de cédula del cliente</param>
        /// <returns></returns>
>>>>>>> 25df335f9b892c35c6bdf4c0bd0ddadae06c896f
        public List<spMuestraAdiccion_Result> RetornaAdicciones(int pCedula)
        {
            ///Variable que se retorna
            List<spMuestraAdiccion_Result> resultados = new List<spMuestraAdiccion_Result>();
            ///Asignar las variables
            resultados = this.blCliente.spMuestraAdiccion(pCedula).ToList();
            return resultados;
        }


       

        public bool InsertaCliente(int pCedula, string pGenero, DateTime pFechaNacimiento, string pNombre,
                                    string pPrimerApellido, string pSegundoApellido, string pDireccion,
                                    string pPrimerTelefono, string pSegundoTelefono, string pCorreo,
                                    int pIdTipoPersona, int pIdProvincia)
        {
            int registros = 0;

            registros = this.blCliente.spIngresarCliente(pCedula, pGenero, pFechaNacimiento, pNombre,
                                     pPrimerApellido, pSegundoApellido, pDireccion,
                                     pPrimerTelefono, pSegundoTelefono, pCorreo,
                                     pIdTipoPersona, pIdProvincia);

            if (registros > 0)
            {
                return true;
            }
            return false;
        }

    }
}