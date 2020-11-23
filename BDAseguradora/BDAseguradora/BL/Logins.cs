using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BDAseguradora.Modelo;


namespace BDAseguradora.BL
{
    public class Logins
    {
        bdaseguradoraEntities Login = new bdaseguradoraEntities();
        public RetornaUsuaPwd_Result RetornaUsuario(string pUsuario,string pContra)
        {
            RetornaUsuaPwd_Result resultado = new RetornaUsuaPwd_Result();
            resultado =
                this.Login.RetornaUsuaPwd(pUsuario, pContra).FirstOrDefault();

   

            return resultado;
        }
    }
}