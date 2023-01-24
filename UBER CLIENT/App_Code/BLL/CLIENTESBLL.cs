using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de CLIENTESBLL
/// </summary>
public class CLIENTESBLL
{
    public CLIENTESBLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public static List<Cliente> MostrarTodo()
    {
        List<Cliente> ListaCliente = new List<Cliente>();
        
        CLIENTEDSTableAdapters.CLIENTETableAdapter adaptador = new CLIENTEDSTableAdapters.CLIENTETableAdapter();
        CLIENTEDS.CLIENTEDataTable Tabla = adaptador.CLIENTE();
        foreach (CLIENTEDS.CLIENTERow fila in Tabla)
        {
            ListaCliente.Add(CLIENTEDTO(fila));
        }
        return ListaCliente;
    }
    public static Cliente MostrarID(int id)
    {
        CLIENTEDSTableAdapters.CLIENTETableAdapter adaptador = new CLIENTEDSTableAdapters.CLIENTETableAdapter();
        CLIENTEDS.CLIENTEDataTable tabla = adaptador.MOSTRAR_ID(id);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }

        return CLIENTEDTO(tabla[0]);


    }
    public static void Ingresar(int ID, String Telefono, String Nombre, String Email, DateTime Fecha, String Perfil, String Pass)
    {
        CLIENTEDSTableAdapters.CLIENTETableAdapter adaptador = new CLIENTEDSTableAdapters.CLIENTETableAdapter();
        adaptador.Insert(ID, Telefono, Nombre, Email, Fecha, Perfil, Pass);
    }
    public static void Actualizar(int ID, String Telefono, String Nombre, String Email, DateTime Fecha, String Perfil, String Pass)
    {
        CLIENTEDSTableAdapters.CLIENTETableAdapter adaptador = new CLIENTEDSTableAdapters.CLIENTETableAdapter();
        adaptador.Update(Telefono, Nombre, Email, Fecha, Perfil, Pass, ID);
    }
    public static void Borrar(int ID)
    {
        CLIENTEDSTableAdapters.CLIENTETableAdapter adaptador = new CLIENTEDSTableAdapters.CLIENTETableAdapter();
        adaptador.Delete(ID);
    }
    public static Cliente LOGIN(String Contra,String Email)
    {
        CLIENTEDSTableAdapters.CLIENTETableAdapter adaptador = new CLIENTEDSTableAdapters.CLIENTETableAdapter();
        CLIENTEDS.CLIENTEDataTable tabla = adaptador.LOGIN(Email,Contra);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        else { return CLIENTEDTO(tabla[0]);}
    }
    public static Cliente REGISTRO(String Correo)
    {
        CLIENTEDSTableAdapters.CLIENTETableAdapter adaptador = new CLIENTEDSTableAdapters.CLIENTETableAdapter();
        CLIENTEDS.CLIENTEDataTable tabla = adaptador.REGISTRO(Correo);
        if (tabla.Rows.Count == 0)
        {
            return null;
        }
        else { return CLIENTEDTO(tabla[0]); }
    }
    public static void Actualizo(String PERFIL,String Nombre,String Telefono, int ID)
    {
        CLIENTEDSTableAdapters.CLIENTETableAdapter adaptador = new CLIENTEDSTableAdapters.CLIENTETableAdapter();
        adaptador.ACTUALIZACION_CLIENTE(PERFIL,Nombre,Telefono,ID);

    }
    private static Cliente CLIENTEDTO(CLIENTEDS.CLIENTERow fila)
    {
        Cliente objCLIENTE = new Cliente();
        objCLIENTE.id = fila.ID;
        objCLIENTE.Nombre = fila.NOMBRE;
        objCLIENTE.Password = fila.Password;
        objCLIENTE.Perfil = fila.PERFIL;
        objCLIENTE.TELEFONO = fila.TELEFONO;
        objCLIENTE.Fecha = fila.FECHA_DE_INGRESO;
        objCLIENTE.Email = fila.EMAIL;
        return objCLIENTE;

    }
}