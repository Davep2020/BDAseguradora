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
    
    public partial class RetornPolizaID_Result
    {
        public int ID_Polizas_Pol { get; set; }
        public int ID_DPoliza_Dpl { get; set; }
        public string Nombre_Dpl { get; set; }
        public int Cedula_Dp { get; set; }
        public decimal MontoAsegurado_Pol { get; set; }
        public int NumAdicciones_Pol { get; set; }
        public decimal MontoAdicciones_Pol { get; set; }
        public decimal PrimaAntesImp_Pol { get; set; }
        public decimal Impuestos_Pol { get; set; }
        public decimal PrimaFinal_Pol { get; set; }
        public Nullable<System.DateTime> Fecha_Pol { get; set; }
    }
}
