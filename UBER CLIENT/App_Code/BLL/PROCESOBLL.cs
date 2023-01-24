using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de PROCESOBLL
/// </summary>
public class PROCESOBLL
{
    public PROCESOBLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List< MENU_PROCESO> MostrarTodo()
    {
        List<MENU_PROCESO> ListaProceso = new List<MENU_PROCESO>();
        ProcesoDSTableAdapters.PEDIDOS_PROCESOTableAdapter adaptador = new ProcesoDSTableAdapters.PEDIDOS_PROCESOTableAdapter();
        ProcesoDS.PEDIDOS_PROCESODataTable Tabla = adaptador.PROCESO();

       
        foreach (ProcesoDS.PEDIDOS_PROCESORow fila in Tabla)
        {
            ListaProceso.Add(PROCESODTO(fila));
        }
        return ListaProceso;
    }

     public static MENU_PROCESO FILTRO(int ID_ref)
    {
        ProcesoDSTableAdapters.PEDIDOS_PROCESOTableAdapter adaptador = new ProcesoDSTableAdapters.PEDIDOS_PROCESOTableAdapter();
        ProcesoDS.PEDIDOS_PROCESODataTable Tabla = adaptador.FILTRO(ID_ref);
        if (Tabla.Rows.Count == 0)
        {
            return null;
        }
        else { return PROCESODTO(Tabla[0]); }
    }
    private static MENU_PROCESO PROCESODTO(ProcesoDS.PEDIDOS_PROCESORow fila)
    {
        MENU_PROCESO objMenu = new MENU_PROCESO();
        objMenu.ID = fila.ID;
        objMenu.Cliente = fila.CLIENTE;
        objMenu.Platos = fila.PLATOS;
        objMenu.Fecha = fila.FECHA;
        objMenu.Direccion = fila.DIRECCION_DE_ENTREGA;
        objMenu.Trabajador = fila.TRABAJADOR;
        objMenu.Precio = fila.PRECIO;
        objMenu.Total = fila.TOTAL;
        objMenu.ID_ref = fila.ID_REF;
        
        return objMenu;
    }
}