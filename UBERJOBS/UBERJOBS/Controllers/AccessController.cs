using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using UBERJOBS.Models;

namespace UBERJOBS.Controllers
{
    public class AccessController : Controller
    {
        // GET: Access
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Enter(string user, string pass)
        {
           
            try
            {
                using (UBER_EATSEntities1 bd = new UBER_EATSEntities1())
                {
                    var lista = from prg2 in bd.TRABAJADORs
                                where prg2.CORREO_ELECTRONICO == user
                                && prg2.CONTRASENA == pass
                                select prg2;
                    var lista2 = from prg3 in bd.ADMINISTRADORs
                                 where prg3.CORREO == user
                                 && prg3.CONTRASEÑA == pass
                                 select prg3;
                    if (lista.Count() > 0)
                    {
                        TRABAJADOR obj = lista.First();
                        Session["TRABAJADOR"] = obj;
                        return Content("1");
                    }
                    else if(lista2.Count()>0)
                    {
                        ADMINISTRADOR obj2 = lista2.First();
                        Session["ADMINISTRADOR"] = obj2;

                        return Content("2");
                    }
                    else
                    {
                        return Content("Usuario no valido");
                        // return Content("2");
                    }
                }
           }
            catch (Exception ex)
            {

                return Content("Se genero un error:(" + ex.Message);
            }
            return View();
        }
        public ActionResult Logout()
        {
            
            Session.Abandon(); // it will clear the session at the end of request
            return RedirectToAction("Index", "Access");
        }
    }
}