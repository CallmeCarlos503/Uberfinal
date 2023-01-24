using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de MENU_PROCESO
/// </summary>
public class MENU_PROCESO
{
    public MENU_PROCESO()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public int ID { get; set; }
    public String Cliente { get; set; }
    public String Platos{ get; set; }
    public DateTime Fecha { get; set; }
    public String Direccion { get; set; }
    public String Trabajador { get; set; }
    public Decimal Precio { get; set; }
    public Decimal Total { get; set; }
    public int ID_ref { get; set; }
}