using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de MENUBLL
/// </summary>
public class MENUBLL
{
    public MENUBLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
  
    public static void Insertar(String Clientes,String Platos,DateTime Fecha,String Direccion,String Trabajador, Decimal Precio,Decimal Total,int ID_REF)
    {
        MENUDSTableAdapters.PEDIDOTableAdapter adaptador = new MENUDSTableAdapters.PEDIDOTableAdapter();
        adaptador.Insert(Clientes,Platos,Fecha,Direccion,Trabajador,Precio,Total,ID_REF);
    }
    public static void Actualizar(String Cliente,int ID)
    {
        MENUDSTableAdapters.PEDIDOTableAdapter adaptador = new MENUDSTableAdapters.PEDIDOTableAdapter();
        adaptador.CONFIRMACION(Cliente, ID);

    }
    public static void COPIO( int ID)
    {
        MENUDSTableAdapters.PEDIDOTableAdapter adaptador = new MENUDSTableAdapters.PEDIDOTableAdapter();
        adaptador.INSERTO_COPIO(ID);

    }
    public static void ELIMINAR(int ID)
    {
        MENUDSTableAdapters.PEDIDOTableAdapter adaptador = new MENUDSTableAdapters.PEDIDOTableAdapter();
        adaptador.Delete(ID);

    }
    public static void borro(int ID)
    {
        MENUDSTableAdapters.PEDIDOTableAdapter adaptador = new MENUDSTableAdapters.PEDIDOTableAdapter();
        adaptador.BORRO_PEDIDO(ID);

    }

    private static Menu MENUDTO(MENUDS.PEDIDORow fila)
    {
        Menu objMenu = new Menu();
        objMenu.ID = fila.ID;
        objMenu.ID_REF = fila.ID_REF;
        objMenu.Platos = fila.PLATOS;
        objMenu.Precio = fila.PRECIO;
        objMenu.Total = fila.TOTAL;
        objMenu.Cliente = fila.CLIENTE;
        objMenu.Fecha = fila.FECHA;
        objMenu.D_Entrega = fila.DIRECCION_DE_ENTREGA;
        objMenu.Trabajador = fila.TRABAJADOR;
        return objMenu;

    
    }
}