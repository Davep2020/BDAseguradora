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
    
    public partial class ReportePolizaCliente_Result
    {
        public int ID_Polizas_Pol { get; set; }
        public int ID_DPoliza_Pol { get; set; }
        public int ID_DPersona_Pol { get; set; }
        public decimal MontoAsegurado_Pol { get; set; }
        public int PorcentajeCobertura_Pol { get; set; }
        public int NumAdicciones_Pol { get; set; }
        public decimal MontoAdicciones_Pol { get; set; }
        public decimal PrimaAntesImp_Pol { get; set; }
        public decimal Impuestos_Pol { get; set; }
        public decimal PrimaFinal_Pol { get; set; }
        public System.DateTime Fecha_Pol { get; set; }
        public int ID_DPersona_Dp { get; set; }
        public int Cedula_Dp { get; set; }
        public string Genero_DP { get; set; }
        public System.DateTime Fecha_nacimiento_Dp { get; set; }
        public string Nombre_Dp { get; set; }
        public string Primer_Apellido_Dp { get; set; }
        public string Segundo_Apellido_Dp { get; set; }
        public string Dirección_Física_Dp { get; set; }
        public string Telefono_Principal_Dp { get; set; }
        public string Telefono_Secundario_Dp { get; set; }
        public string Correo_Electrónico_Dp { get; set; }
        public int ID_TipoPersona_Dp { get; set; }
        public Nullable<int> ID_Provincia_Dp { get; set; }
        public int ID_DPoliza_Dpl { get; set; }
        public string Nombre_Dpl { get; set; }
        public string Descripción_Dpl { get; set; }
        public int Porcentaje_Dpl { get; set; }
    }
}
