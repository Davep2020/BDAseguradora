
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
    
public partial class TblSeguridad
{

    public int ID_Seguridad_Sg { get; set; }

    public string Ussers_Sg { get; set; }

    public string Password_Sg { get; set; }

    public int ID_DPersona_Sg { get; set; }

    public System.DateTime Ult_Fecha_Ing_Sg { get; set; }



    public virtual TblDetallePersona TblDetallePersona { get; set; }

}

}
