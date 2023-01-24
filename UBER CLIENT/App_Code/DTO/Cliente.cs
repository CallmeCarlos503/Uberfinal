using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Cliente
/// </summary>
public class Cliente
{
    public Cliente()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public int id { get; set; }
    public String TELEFONO { get; set; }
    public String Nombre { get; set; }
    public String Email { get; set; }
    public DateTime Fecha { get; set; }
    public String Perfil { get; set; }
    public String Password { get; set; }
}