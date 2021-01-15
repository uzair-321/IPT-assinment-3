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
    public class Liquid_fillingsController : Controller
    {
        pharmacyEntities1 db = new pharmacyEntities1();

        // GET: Liquid_fillings
        public ActionResult Index()
        {
            return View(db.Liquid_fillings.ToList());
        }

        // GET: Liquid_fillings/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Liquid_fillings/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Liquid_fillings/Create
        [HttpPost]
        public ActionResult Create( Liquid_filling lqf,HttpPostedFileBase img)
        {
            try
            {
                // TODO: Add insert logic here
                if (img!=null)
                {
                    string filename = System.IO.Path.GetFileName(img.FileName);
                    img.SaveAs(Server.MapPath("~/Image/Liquid Filings/" + filename));
                    lqf.LQ_Image = filename;

                }
                
                db.Liquid_fillings.Add(lqf);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Liquid_fillings/Edit/5
        public ActionResult Edit(int id)
        {
            var record = db.Liquid_fillings.FirstOrDefault(x => x.Lq_Id == id);

            return View(record);
        }

        // POST: Liquid_fillings/Edit/5
        [HttpPost]
        public ActionResult Edit(string id,  Liquid_filling lqf)
        {
            try
            {
                // TODO: Add update logic here
                if (id != null)
                {
                    //update
                    lqf.Lq_Id = Convert.ToInt32(id);
                    db.Entry(lqf).State = System.Data.Entity.EntityState.Modified;
                }
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Liquid_fillings/Delete/5
        public ActionResult Delete(int id)
        {
            string lqf_id = Request.RequestContext.RouteData.Values["id"].ToString();
            Liquid_filling del_lqf = new Liquid_filling();
            del_lqf.Lq_Id = Convert.ToInt32(lqf_id);
            db.Entry(del_lqf).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        // POST: Liquid_fillings/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
