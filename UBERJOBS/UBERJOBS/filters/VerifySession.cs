using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UBERJOBS.Controllers;
using UBERJOBS.Models;

namespace UBERJOBS.filters
{
    public class VerifySession : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            var varUser = (TRABAJADOR)HttpContext.Current.Session["TRABAJADOR"];
            var VarAdmin= (ADMINISTRADOR)HttpContext.Current.Session["ADMINISTRADOR"];
            if (varUser == null && VarAdmin== null)
            {
                if (filterContext.Controller is AccessController == false)
                {
                    filterContext.HttpContext.Response.Redirect("~/Access/Index");
                }

            }
            else
            {
                if (filterContext.Controller is AccessController == true)
                {
                    filterContext.HttpContext.Response.Redirect("~/Access/Index");
                }
            }

            base.OnActionExecuting(filterContext);

        }
    }
}