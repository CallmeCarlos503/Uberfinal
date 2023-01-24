using System.Web;
using System.Web.Mvc;

namespace UBERJOBS
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            filters.Add(new filters.VerifySession());
        }
    }
}
