using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pharmscy_Management.Models;
using System.IO;
using System.Data.Entity;

namespace Pharmscy_Management.Controllers
{
    public class CapsulesController : Controller
    {
        pharmacyEntities1 db = new pharmacyEntities1();

        // GET: Capsules
        public ActionResult Index()
        {
            return View(db.capsules.ToList());
        }

        // GET: Capsules/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Capsules/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Capsules/Create
        [HttpPost]
        public ActionResult Create(capsule cap,HttpPostedFileBase img)
        {
            try
            {
                // TODO: Add insert logic here

                if (img != null)
                {
                    string filename = System.IO.Path.GetFileName(img.FileName);
                    img.SaveAs(Server.MapPath("~/Image/Liquid Filings/" + filename));
                    cap.Capsules_Image = filename;

                }

                db.capsules.Add(cap);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Capsules/Edit/5
        public ActionResult Edit(int id)
        {
            var record = db.capsules.FirstOrDefault(x => x.cap_id == id);

            return View(record);
        }

        // POST: Capsules/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, capsule cap)
        {
            try
            {
                // TODO: Add update logic here
                if (id != null)
                {
                    //update
                    cap.cap_id = Convert.ToInt32(id);
                    db.Entry(cap).State = System.Data.Entity.EntityState.Modified;
                }
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Capsules/Delete/5
        public ActionResult Delete()
        {
            string cap_id = Request.RequestContext.RouteData.Values["id"].ToString();
            capsule del_cap = new capsule();
            del_cap.cap_id = Convert.ToInt32(cap_id);
            db.Entry(del_cap).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
            return RedirectToAction("Index");

        }

        // POST: Capsules/Delete/5
        
    }
}
