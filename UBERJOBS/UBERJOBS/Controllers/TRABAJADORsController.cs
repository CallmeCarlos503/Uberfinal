using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using UBERJOBS.Models;

namespace UBERJOBS.Controllers
{
    public class TRABAJADORsController : Controller
    {
        private UBER_EATSEntities1 db = new UBER_EATSEntities1();

        // GET: TRABAJADORs
        public ActionResult Index()
        {
            return View(db.TRABAJADORs.ToList());
        }

        // GET: TRABAJADORs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TRABAJADOR tRABAJADOR = db.TRABAJADORs.Find(id);
            if (tRABAJADOR == null)
            {
                return HttpNotFound();
            }
            return View(tRABAJADOR);
        }

        // GET: TRABAJADORs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TRABAJADORs/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,NOMBRE,CORREO_ELECTRONICO,TELEFONO,DOMICILIO,CONTRASENA")] TRABAJADOR tRABAJADOR)
        {
            if (ModelState.IsValid)
            {
                db.TRABAJADORs.Add(tRABAJADOR);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tRABAJADOR);
        }

        // GET: TRABAJADORs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TRABAJADOR tRABAJADOR = db.TRABAJADORs.Find(id);
            if (tRABAJADOR == null)
            {
                return HttpNotFound();
            }
            return View(tRABAJADOR);
        }

        // POST: TRABAJADORs/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,NOMBRE,CORREO_ELECTRONICO,TELEFONO,DOMICILIO,CONTRASENA")] TRABAJADOR tRABAJADOR)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tRABAJADOR).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tRABAJADOR);
        }

        // GET: TRABAJADORs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TRABAJADOR tRABAJADOR = db.TRABAJADORs.Find(id);
            if (tRABAJADOR == null)
            {
                return HttpNotFound();
            }
            return View(tRABAJADOR);
        }

        // POST: TRABAJADORs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TRABAJADOR tRABAJADOR = db.TRABAJADORs.Find(id);
            db.TRABAJADORs.Remove(tRABAJADOR);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
