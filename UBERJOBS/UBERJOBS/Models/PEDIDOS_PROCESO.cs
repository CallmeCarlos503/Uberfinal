//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class ADMINISTRADOR
{
    public int ID { get; set; }
    public string CORREO { get; set; }
    public string CONTRASEÑA { get; set; }
}

public partial class PEDIDO
{
    public int ID { get; set; }
    public string CLIENTE { get; set; }
    public string PLATOS { get; set; }
    public System.DateTime FECHA { get; set; }
    public string DIRECCION_DE_ENTREGA { get; set; }
    public string TRABAJADOR { get; set; }
    public Nullable<decimal> PRECIO { get; set; }
    public Nullable<decimal> TOTAL { get; set; }
    public int ID_REF { get; set; }
}

public partial class PEDIDOS_PROCESO
{
    public int ID { get; set; }
    public string CLIENTE { get; set; }
    public string PLATOS { get; set; }
    public System.DateTime FECHA { get; set; }
    public string DIRECCION_DE_ENTREGA { get; set; }
    public string TRABAJADOR { get; set; }
    public Nullable<decimal> PRECIO { get; set; }
    public Nullable<decimal> TOTAL { get; set; }
    public Nullable<int> ID_REF { get; set; }
}

public partial class PEDIDOS_REALIZADOS
{
    public int ID { get; set; }
    public string CLIENTE { get; set; }
    public string PLATOS { get; set; }
    public System.DateTime FECHA { get; set; }
    public string DIRECCION_DE_ENTREGA { get; set; }
    public string TRABAJADOR { get; set; }
    public decimal PRECIO { get; set; }
    public decimal TOTAL { get; set; }
    public Nullable<int> ID_REF { get; set; }
}

public partial class TRABAJADOR
{
    public int ID { get; set; }
    public string NOMBRE { get; set; }
    public string CORREO_ELECTRONICO { get; set; }
    public string TELEFONO { get; set; }
    public string DOMICILIO { get; set; }
    public string CONTRASENA { get; set; }
}
