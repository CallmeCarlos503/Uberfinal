using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using UBERJOBS.Models;
using UBERJOBS.Models.TableView;

namespace UBERJOBS.Controllers
{
    public class PedidosController : Controller
    {
       public UBER_EATSEntities1 db = new UBER_EATSEntities1();
        // GET: Pedidos
        public ActionResult Index()
        {
            List<PedidosTableView> lst = null;
            

            using (UBER_EATSEntities1 BD = new UBER_EATSEntities1())
            {
                lst = (from data in BD.PEDIDOS_PROCESO
                       where data.TRABAJADOR == "No seleccionado" 
                       orderby data.ID
                       select new PedidosTableView
                       {
                           ID = data.ID,
                           Cliente = data.CLIENTE,
                           Platos = data.PLATOS,
                           Fecha = data.FECHA,
                           Direccion = data.DIRECCION_DE_ENTREGA,
                           Trabajador = data.TRABAJADOR,
                           Precio = data.PRECIO,
                           Total = data.TOTAL,
                           ID_Ref = data.ID_REF
                       }
                     ).ToList();

                List<PedidosTableView> duplicados = lst.Except(lst.GroupBy(i => i.ID_Ref).Select(ss => ss.FirstOrDefault())).ToList();
                List<PedidosTableView> duplicados2 = duplicados.Distinct().ToList();
                return View(duplicados2);
       }
    }
        public ActionResult DETALLES(int? id)
        {
            List<PedidosTableView> lst = null;

            int DATOS = Convert.ToInt32(Request.QueryString["ID"]);
            db.ACTUALIZAR_PEDIDOSUP("EN USO", DATOS);
            using (UBER_EATSEntities1 BD = new UBER_EATSEntities1())
            {
                lst = (from data in BD.PEDIDOS_PROCESO
                       where data.ID_REF == DATOS
                       orderby data.ID
                       select new PedidosTableView
                       {
                           ID = data.ID,
                           Cliente = data.CLIENTE,
                           Platos = data.PLATOS,
                           Fecha = data.FECHA,
                           Direccion = data.DIRECCION_DE_ENTREGA,
                           Trabajador = data.TRABAJADOR,
                           Precio = data.PRECIO,
                           Total = data.TOTAL,
                           ID_Ref = data.ID_REF
                       }
                     ).ToList();
            }



            String Opera = Request.Params["Button"];
           
            return View(lst);

            
        }
                public ActionResult FINALIZADO()
                {
            int DATOS = Convert.ToInt32(Request.QueryString["ID"]);
            db.PROCESO_FINAL(DATOS);
            return View(db.PROCESO_FINAL(DATOS));

             }

    }
    


}
 
