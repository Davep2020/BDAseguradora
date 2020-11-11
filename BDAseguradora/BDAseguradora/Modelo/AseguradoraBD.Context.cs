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
    
        public virtual int spBorrarAdiccion(string parametro)
        {
            var parametroParameter = parametro != null ?
                new ObjectParameter("parametro", parametro) :
                new ObjectParameter("parametro", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spBorrarAdiccion", parametroParameter);
        }
    
        public virtual int spBorrarCliente(string parametro)
        {
            var parametroParameter = parametro != null ?
                new ObjectParameter("parametro", parametro) :
                new ObjectParameter("parametro", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spBorrarCliente", parametroParameter);
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
    
        public virtual int spIngresarClientes(Nullable<int> cedula, string genero, Nullable<System.DateTime> fechaNacimiento, string nombre, string primerApellido, string segundoApellido, string direccion, string pTelefono, string sTelefono, string correo, Nullable<int> tipoUsuario)
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
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spIngresarClientes", cedulaParameter, generoParameter, fechaNacimientoParameter, nombreParameter, primerApellidoParameter, segundoApellidoParameter, direccionParameter, pTelefonoParameter, sTelefonoParameter, correoParameter, tipoUsuarioParameter);
        }
    
        public virtual int spModificarAdiccionClientes(Nullable<int> parametro)
        {
            var parametroParameter = parametro.HasValue ?
                new ObjectParameter("parametro", parametro) :
                new ObjectParameter("parametro", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spModificarAdiccionClientes", parametroParameter);
        }
    
        public virtual int spModificarTelefonoClientes(string telefono, Nullable<int> cedula)
        {
            var telefonoParameter = telefono != null ?
                new ObjectParameter("telefono", telefono) :
                new ObjectParameter("telefono", typeof(string));
    
            var cedulaParameter = cedula.HasValue ?
                new ObjectParameter("cedula", cedula) :
                new ObjectParameter("cedula", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("spModificarTelefonoClientes", telefonoParameter, cedulaParameter);
        }
    
        public virtual ObjectResult<string> spMostrarAdicciones()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("spMostrarAdicciones");
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
    
        public virtual ObjectResult<spMuestraCliente_Result> spMuestraCliente(string primerApellido, string nombre)
        {
            var primerApellidoParameter = primerApellido != null ?
                new ObjectParameter("primerApellido", primerApellido) :
                new ObjectParameter("primerApellido", typeof(string));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("nombre", nombre) :
                new ObjectParameter("nombre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spMuestraCliente_Result>("spMuestraCliente", primerApellidoParameter, nombreParameter);
        }
    }
}
