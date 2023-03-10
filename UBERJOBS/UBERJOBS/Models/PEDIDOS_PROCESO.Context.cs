//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core.Objects;
using System.Linq;

public partial class UBER_EATSEntities1 : DbContext
{
    public UBER_EATSEntities1()
        : base("name=UBER_EATSEntities1")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public virtual DbSet<PEDIDO> PEDIDOes { get; set; }
    public virtual DbSet<PEDIDOS_PROCESO> PEDIDOS_PROCESO { get; set; }
    public virtual DbSet<PEDIDOS_REALIZADOS> PEDIDOS_REALIZADOS { get; set; }
    public virtual DbSet<TRABAJADOR> TRABAJADORs { get; set; }
    public virtual DbSet<ADMINISTRADOR> ADMINISTRADORs { get; set; }

    public virtual int ACTUALIZAR_PEDIDOSUP(string aCTUALIZAR_PEDIDOS, Nullable<int> iD_REFE)
    {
        var aCTUALIZAR_PEDIDOSParameter = aCTUALIZAR_PEDIDOS != null ?
            new ObjectParameter("ACTUALIZAR_PEDIDOS", aCTUALIZAR_PEDIDOS) :
            new ObjectParameter("ACTUALIZAR_PEDIDOS", typeof(string));

        var iD_REFEParameter = iD_REFE.HasValue ?
            new ObjectParameter("ID_REFE", iD_REFE) :
            new ObjectParameter("ID_REFE", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ACTUALIZAR_PEDIDOSUP", aCTUALIZAR_PEDIDOSParameter, iD_REFEParameter);
    }

    public virtual ObjectResult<Nullable<decimal>> TOTAL_PRECIOS(Nullable<int> iD_REF)
    {
        var iD_REFParameter = iD_REF.HasValue ?
            new ObjectParameter("ID_REF", iD_REF) :
            new ObjectParameter("ID_REF", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<decimal>>("TOTAL_PRECIOS", iD_REFParameter);
    }

    public virtual int PROCESO_FINAL(Nullable<int> iD_REF)
    {
        var iD_REFParameter = iD_REF.HasValue ?
            new ObjectParameter("ID_REF", iD_REF) :
            new ObjectParameter("ID_REF", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("PROCESO_FINAL", iD_REFParameter);
    }
}
