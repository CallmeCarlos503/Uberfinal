using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DIRECCIONBLL
/// </summary>
public class DIRECCIONBLL
{
    public DIRECCIONBLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static List<Direccion> MostrarTodo()
    {
        List<Direccion> ListaDireccion = new List<Direccion>();
        DIRECCIONDSTableAdapters.DIRECCIONTableAdapter adaptador = new DIRECCIONDSTableAdapters.DIRECCIONTableAdapter();
        DIRECCIONDS.DIRECCIONDataTable Tabla = adaptador.DIRECCION();
        foreach(DIRECCIONDS.DIRECCIONRow fila in Tabla)
        {
            ListaDireccion.Add(DIRECCIONDTO(fila));
        }


        return ListaDireccion;
    }
    public static void Ingresar(int ID_USUARIO,String Direccion,String CORREO_REF)
    {
        DIRECCIONDSTableAdapters.DIRECCIONTableAdapter adaptador = new DIRECCIONDSTableAdapters.DIRECCIONTableAdapter();
        adaptador.Insert(ID_USUARIO,Direccion,CORREO_REF);
    }
    public static void Eliminar(int ID)
    {
        DIRECCIONDSTableAdapters.DIRECCIONTableAdapter adaptador = new DIRECCIONDSTableAdapters.DIRECCIONTableAdapter();
        adaptador.Delete(ID);
    }

    private static Direccion DIRECCIONDTO(DIRECCIONDS.DIRECCIONRow fila)
    {
        Direccion objDireccion = new Direccion();
        objDireccion.ID = fila.ID;
        objDireccion.ID_USUARIO = fila.ID_CLIENTE;
        objDireccion.DIRECCION_AREA = fila.DIRECCION_AREA;
        return objDireccion;
    }
}