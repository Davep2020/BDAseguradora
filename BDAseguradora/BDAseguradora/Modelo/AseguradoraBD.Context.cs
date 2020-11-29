﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class bdaseguradoraEntities : DbContext
    {
        public bdaseguradoraEntities()
            : base("name=bdaseguradoraEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<TblAddiciones> TblAddiciones { get; set; }
        public DbSet<TblAdiccionesClientes> TblAdiccionesClientes { get; set; }
        public DbSet<TblDetallePersona> TblDetallePersona { get; set; }
        public DbSet<TblDetallePolizas> TblDetallePolizas { get; set; }
        public DbSet<TblPolizas> TblPolizas { get; set; }
        public DbSet<TblProvincia> TblProvincia { get; set; }
        public DbSet<TblSeguridad> TblSeguridad { get; set; }
        public DbSet<TblSeguros> TblSeguros { get; set; }
        public DbSet<TblTipoPersonas> TblTipoPersonas { get; set; }
    
        public virtual ObjectResult<ConsultarCobertura_Result> ConsultarCobertura(string nombre)
        {
            var nombreParameter = nombre != null ?
                new ObjectParameter("nombre", nombre) :
                new ObjectParameter("nombre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ConsultarCobertura_Result>("ConsultarCobertura", nombreParameter);
        }
    
        public virtual int EliminaCoberturas(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("EliminaCoberturas", idParameter);
        }
    
        public virtual int IngresarPoliza(Nullable<int> idPer, Nullable<int> idCo, Nullable<int> monto, Nullable<System.DateTime> fecha)
        {
            var idPerParameter = idPer.HasValue ?
                new ObjectParameter("idPer", idPer) :
                new ObjectParameter("idPer", typeof(int));
    
            var idCoParameter = idCo.HasValue ?
                new ObjectParameter("idCo", idCo) :
                new ObjectParameter("idCo", typeof(int));
    
            var montoParameter = monto.HasValue ?
                new ObjectParameter("Monto", monto) :
                new ObjectParameter("Monto", typeof(int));
    
            var fechaParameter = fecha.HasValue ?
                new ObjectParameter("Fecha", fecha) :
                new ObjectParameter("Fecha", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("IngresarPoliza", idPerParameter, idCoParameter, montoParameter, fechaParameter);
        }
    
        public virtual ObjectResult<RetornaCobertura_Result> RetornaCobertura(string nombre)
        {
            var nombreParameter = nombre != null ?
                new ObjectParameter("nombre", nombre) :
                new ObjectParameter("nombre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<RetornaCobertura_Result>("RetornaCobertura", nombreParameter);
        }
    
        public virtual ObjectResult<RetornaCoberturaID_Result> RetornaCoberturaID(Nullable<int> iD_DPoliza_Dpl)
        {
            var iD_DPoliza_DplParameter = iD_DPoliza_Dpl.HasValue ?
                new ObjectParameter("ID_DPoliza_Dpl", iD_DPoliza_Dpl) :
                new ObjectParameter("ID_DPoliza_Dpl", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<RetornaCoberturaID_Result>("RetornaCoberturaID", iD_DPoliza_DplParameter);
        }
    
        public virtual int sp_ModificaCobertura(Nullable<int> id, string nombre, string des, Nullable<int> porce)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var desParameter = des != null ?
                new ObjectParameter("Des", des) :
                new ObjectParameter("Des", typeof(string));
    
            var porceParameter = porce.HasValue ?
                new ObjectParameter("Porce", porce) :
                new ObjectParameter("Porce", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_ModificaCobertura", idParameter, nombreParameter, desParameter, porceParameter);
        }
    
        public virtual int spIngresarAdiccionesClientes(Nullable<int> adiccion, Nullable<int> cliente)
        {
            var adiccionParameter = adiccion.HasValue ?
                new ObjectParameter("adiccion", adiccion) :
                new ObjectParameter("adiccion", typeof(int));
    
            var clienteParameter = cliente.HasValue ?
                new ObjectParameter("cliente", cliente) :
                new ObjectParameter("cliente", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spIngresarAdiccionesClientes", adiccionParameter, clienteParameter);
        }
    
        public virtual int spIngresarCliente(Nullable<int> cedula, string genero, Nullable<System.DateTime> fechaNacimiento, string nombre, string primerApellido, string segundoApellido, string direccion, string pTelefono, string sTelefono, string correo, Nullable<int> tipoUsuario, Nullable<int> provincia)
        {
            var cedulaParameter = cedula.HasValue ?
                new ObjectParameter("cedula", cedula) :
                new ObjectParameter("cedula", typeof(int));
    
            var generoParameter = genero != null ?
                new ObjectParameter("genero", genero) :
                new ObjectParameter("genero", typeof(string));
    
            var fechaNacimientoParameter = fechaNacimiento.HasValue ?
                new ObjectParameter("fechaNacimiento", fechaNacimiento) :
                new ObjectParameter("fechaNacimiento", typeof(System.DateTime));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("nombre", nombre) :
                new ObjectParameter("nombre", typeof(string));
    
            var primerApellidoParameter = primerApellido != null ?
                new ObjectParameter("primerApellido", primerApellido) :
                new ObjectParameter("primerApellido", typeof(string));
    
            var segundoApellidoParameter = segundoApellido != null ?
                new ObjectParameter("segundoApellido", segundoApellido) :
                new ObjectParameter("segundoApellido", typeof(string));
    
            var direccionParameter = direccion != null ?
                new ObjectParameter("direccion", direccion) :
                new ObjectParameter("direccion", typeof(string));
    
            var pTelefonoParameter = pTelefono != null ?
                new ObjectParameter("pTelefono", pTelefono) :
                new ObjectParameter("pTelefono", typeof(string));
    
            var sTelefonoParameter = sTelefono != null ?
                new ObjectParameter("sTelefono", sTelefono) :
                new ObjectParameter("sTelefono", typeof(string));
    
            var correoParameter = correo != null ?
                new ObjectParameter("correo", correo) :
                new ObjectParameter("correo", typeof(string));
    
            var tipoUsuarioParameter = tipoUsuario.HasValue ?
                new ObjectParameter("tipoUsuario", tipoUsuario) :
                new ObjectParameter("tipoUsuario", typeof(int));
    
            var provinciaParameter = provincia.HasValue ?
                new ObjectParameter("provincia", provincia) :
                new ObjectParameter("provincia", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spIngresarCliente", cedulaParameter, generoParameter, fechaNacimientoParameter, nombreParameter, primerApellidoParameter, segundoApellidoParameter, direccionParameter, pTelefonoParameter, sTelefonoParameter, correoParameter, tipoUsuarioParameter, provinciaParameter);
        }
    
        public virtual int spIngresarCobertura(string nombre, string descripcion, Nullable<int> porcentaje)
        {
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var descripcionParameter = descripcion != null ?
                new ObjectParameter("Descripcion", descripcion) :
                new ObjectParameter("Descripcion", typeof(string));
    
            var porcentajeParameter = porcentaje.HasValue ?
                new ObjectParameter("Porcentaje", porcentaje) :
                new ObjectParameter("Porcentaje", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spIngresarCobertura", nombreParameter, descripcionParameter, porcentajeParameter);
        }
    
        public virtual int spInsertaAdiccionXCliente(string cedula, string codigo)
        {
            var cedulaParameter = cedula != null ?
                new ObjectParameter("cedula", cedula) :
                new ObjectParameter("cedula", typeof(string));
    
            var codigoParameter = codigo != null ?
                new ObjectParameter("codigo", codigo) :
                new ObjectParameter("codigo", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spInsertaAdiccionXCliente", cedulaParameter, codigoParameter);
        }
    
        public virtual int spModificarCliente(Nullable<int> idCliente, Nullable<int> cedula, string genero, Nullable<System.DateTime> fechaNacimiento, string nombre, string primerApellido, string segundoApellido, string direccion, string telefono1, string telefono2, string correo, Nullable<int> idProvincia)
        {
            var idClienteParameter = idCliente.HasValue ?
                new ObjectParameter("idCliente", idCliente) :
                new ObjectParameter("idCliente", typeof(int));
    
            var cedulaParameter = cedula.HasValue ?
                new ObjectParameter("cedula", cedula) :
                new ObjectParameter("cedula", typeof(int));
    
            var generoParameter = genero != null ?
                new ObjectParameter("genero", genero) :
                new ObjectParameter("genero", typeof(string));
    
            var fechaNacimientoParameter = fechaNacimiento.HasValue ?
                new ObjectParameter("fechaNacimiento", fechaNacimiento) :
                new ObjectParameter("fechaNacimiento", typeof(System.DateTime));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("nombre", nombre) :
                new ObjectParameter("nombre", typeof(string));
    
            var primerApellidoParameter = primerApellido != null ?
                new ObjectParameter("primerApellido", primerApellido) :
                new ObjectParameter("primerApellido", typeof(string));
    
            var segundoApellidoParameter = segundoApellido != null ?
                new ObjectParameter("segundoApellido", segundoApellido) :
                new ObjectParameter("segundoApellido", typeof(string));
    
            var direccionParameter = direccion != null ?
                new ObjectParameter("direccion", direccion) :
                new ObjectParameter("direccion", typeof(string));
    
            var telefono1Parameter = telefono1 != null ?
                new ObjectParameter("telefono1", telefono1) :
                new ObjectParameter("telefono1", typeof(string));
    
            var telefono2Parameter = telefono2 != null ?
                new ObjectParameter("telefono2", telefono2) :
                new ObjectParameter("telefono2", typeof(string));
    
            var correoParameter = correo != null ?
                new ObjectParameter("correo", correo) :
                new ObjectParameter("correo", typeof(string));
    
            var idProvinciaParameter = idProvincia.HasValue ?
                new ObjectParameter("idProvincia", idProvincia) :
                new ObjectParameter("idProvincia", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spModificarCliente", idClienteParameter, cedulaParameter, generoParameter, fechaNacimientoParameter, nombreParameter, primerApellidoParameter, segundoApellidoParameter, direccionParameter, telefono1Parameter, telefono2Parameter, correoParameter, idProvinciaParameter);
        }
    
        public virtual ObjectResult<string> spMostrarAdicciones()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("spMostrarAdicciones");
        }
    
        public virtual ObjectResult<spMuestraCliente_Result> spMuestraCliente(Nullable<int> cedula)
        {
            var cedulaParameter = cedula.HasValue ?
                new ObjectParameter("cedula", cedula) :
                new ObjectParameter("cedula", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spMuestraCliente_Result>("spMuestraCliente", cedulaParameter);
        }
    
        public virtual ObjectResult<spRetornaAdicciones_Result> spRetornaAdicciones(string nombre, string codigo)
        {
            var nombreParameter = nombre != null ?
                new ObjectParameter("nombre", nombre) :
                new ObjectParameter("nombre", typeof(string));
    
            var codigoParameter = codigo != null ?
                new ObjectParameter("codigo", codigo) :
                new ObjectParameter("codigo", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spRetornaAdicciones_Result>("spRetornaAdicciones", nombreParameter, codigoParameter);
        }
    
        public virtual ObjectResult<spRetornaClienteActualizar_Result> spRetornaClienteActualizar(Nullable<int> idCliente)
        {
            var idClienteParameter = idCliente.HasValue ?
                new ObjectParameter("idCliente", idCliente) :
                new ObjectParameter("idCliente", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spRetornaClienteActualizar_Result>("spRetornaClienteActualizar", idClienteParameter);
        }
    
        public virtual ObjectResult<spRetornaProvincias_Result> spRetornaProvincias(string nombre)
        {
            var nombreParameter = nombre != null ?
                new ObjectParameter("nombre", nombre) :
                new ObjectParameter("nombre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spRetornaProvincias_Result>("spRetornaProvincias", nombreParameter);
        }
    
        public virtual ObjectResult<spRetornaTipoPersona_Result> spRetornaTipoPersona(string nombre)
        {
            var nombreParameter = nombre != null ?
                new ObjectParameter("nombre", nombre) :
                new ObjectParameter("nombre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spRetornaTipoPersona_Result>("spRetornaTipoPersona", nombreParameter);
        }
    
        public virtual int spEliminaCliente(Nullable<int> idCliente)
        {
            var idClienteParameter = idCliente.HasValue ?
                new ObjectParameter("idCliente", idCliente) :
                new ObjectParameter("idCliente", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spEliminaCliente", idClienteParameter);
        }
    
        public virtual int EliminaPoliza(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("EliminaPoliza", idParameter);
        }
    
        public virtual ObjectResult<ConsultarPoliza_Result> ConsultarPoliza(Nullable<int> cedula)
        {
            var cedulaParameter = cedula.HasValue ?
                new ObjectParameter("Cedula", cedula) :
                new ObjectParameter("Cedula", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ConsultarPoliza_Result>("ConsultarPoliza", cedulaParameter);
        }
    
        public virtual ObjectResult<RetornPolizaID_Result> RetornPolizaID(Nullable<int> polizas)
        {
            var polizasParameter = polizas.HasValue ?
                new ObjectParameter("Polizas", polizas) :
                new ObjectParameter("Polizas", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<RetornPolizaID_Result>("RetornPolizaID", polizasParameter);
        }
    
        public virtual int ModificaPoliza(Nullable<int> id, Nullable<int> idPer, Nullable<int> idCo, Nullable<int> monto, Nullable<System.DateTime> fecha)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var idPerParameter = idPer.HasValue ?
                new ObjectParameter("idPer", idPer) :
                new ObjectParameter("idPer", typeof(int));
    
            var idCoParameter = idCo.HasValue ?
                new ObjectParameter("idCo", idCo) :
                new ObjectParameter("idCo", typeof(int));
    
            var montoParameter = monto.HasValue ?
                new ObjectParameter("Monto", monto) :
                new ObjectParameter("Monto", typeof(int));
    
            var fechaParameter = fecha.HasValue ?
                new ObjectParameter("Fecha", fecha) :
                new ObjectParameter("Fecha", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ModificaPoliza", idParameter, idPerParameter, idCoParameter, montoParameter, fechaParameter);
        }
    
        public virtual ObjectResult<RetornaUsuaPwd_Result> RetornaUsuaPwd(string usuario, string contrasena)
        {
            var usuarioParameter = usuario != null ?
                new ObjectParameter("Usuario", usuario) :
                new ObjectParameter("Usuario", typeof(string));
    
            var contrasenaParameter = contrasena != null ?
                new ObjectParameter("contrasena", contrasena) :
                new ObjectParameter("contrasena", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<RetornaUsuaPwd_Result>("RetornaUsuaPwd", usuarioParameter, contrasenaParameter);
        }
    
        public virtual ObjectResult<spMuestraAdiccion_Result> spMuestraAdiccion(Nullable<int> cedula)
        {
            var cedulaParameter = cedula.HasValue ?
                new ObjectParameter("cedula", cedula) :
                new ObjectParameter("cedula", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spMuestraAdiccion_Result>("spMuestraAdiccion", cedulaParameter);
        }
    
        public virtual ObjectResult<spRetornaAdicciónID_Result> spRetornaAdicciónID(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spRetornaAdicciónID_Result>("spRetornaAdicciónID", idParameter);
        }
    
        public virtual int spEliminaAdiccionCliente(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spEliminaAdiccionCliente", idParameter);
        }
    
        public virtual int spModificaAdiccionClientes(Nullable<int> idPrincipal, string nombreAdiccion)
        {
            var idPrincipalParameter = idPrincipal.HasValue ?
                new ObjectParameter("idPrincipal", idPrincipal) :
                new ObjectParameter("idPrincipal", typeof(int));
    
            var nombreAdiccionParameter = nombreAdiccion != null ?
                new ObjectParameter("NombreAdiccion", nombreAdiccion) :
                new ObjectParameter("NombreAdiccion", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spModificaAdiccionClientes", idPrincipalParameter, nombreAdiccionParameter);
        }
    }
}
