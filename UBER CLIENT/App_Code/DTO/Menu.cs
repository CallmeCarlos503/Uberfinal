using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Menu
/// </summary>
public class Menu
{
    public Menu()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public int ID  { get; set; }
    public String Cliente { get; set; }
    public String  Platos { get; set; }
    public DateTime Fecha { get; set; }
    public String D_Entrega { get; set; }
    public String Trabajador { get; set; }
    public Decimal Precio { get; set; }
    public Decimal Total { get; set; }
    public int ID_REF { get; set; }

}