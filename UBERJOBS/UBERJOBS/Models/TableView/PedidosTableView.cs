using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UBERJOBS.Models.TableView
{
    public class PedidosTableView
    {
        public int ID { get; set; }
        public String Cliente { get; set; }
        public String Platos { get; set; }
        public DateTime Fecha { get; set; }
        public String  Direccion { get; set; }
        public String Trabajador { get; set; }
        public Decimal? Precio { get; set; }
        public Decimal? Total { get; set; }
        public int? ID_Ref { get; set; }


    }
    public class UserTableViewModel
    {
        public int? id { get; set; }
        public String Nombre { get; set; }
        public String Correo { get; set; }
        public String Telefono { get; set; }
        public String Domicilio { get; set; }
        public String pass { get; set; }

    }
    public class adminTableViewModel
    {
        public int? id { get; set; }
        public String Correo { get; set; }
        public String pass { get; set; }

    }
}