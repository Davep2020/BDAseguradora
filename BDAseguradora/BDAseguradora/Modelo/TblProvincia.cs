//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BDAseguradora.Modelo
{
    using System;
    using System.Collections.Generic;
    
    public partial class TblProvincia
    {
        public TblProvincia()
        {
            this.TblSeguros = new HashSet<TblSeguros>();
        }
    
        public int ID_Provincia_Prv { get; set; }
        public string Nombre_Prv { get; set; }
    
        public virtual ICollection<TblSeguros> TblSeguros { get; set; }
    }
}