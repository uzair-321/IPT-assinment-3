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
    public class TabletsController : Controller
    {
        pharmacyEntities1 db = new pharmacyEntities1();

        // GET: Tablets
        public ActionResult Index()
        {
            return View(db.Tablets.ToList());
        }

        // GET: Tablets/Details/5
        
        

        // GET: Tablets/Create
        public ActionResult Create()
        {
            return View();
        }


       
        

        // POST: Tablets/Create
        [HttpPost]
        public ActionResult Create(Tablet tab,HttpPostedFileBase img)
        {
            try
            {
                // TODO: Add insert logic here

                if (img != null)
                {
                    string filename = System.IO.Path.GetFileName(img.FileName);
                    img.SaveAs(Server.MapPath("~/Image/Tablets/" + filename));
                    tab.tablet_Image = filename;

                }
                db.Entry(tab).State = EntityState.Added;
                db.SaveChanges();
                ViewBag.message = "Recored inseerted";

                return RedirectToAction("Index");
            }
            catch(Exception e)
            {
                return RedirectToAction("Index");
            }
        }

        // GET: Tablets/Edit/5
        public ActionResult Edit(int id)
        {
            var record = db.Tablets.FirstOrDefault(x => x.TB_ID == id);
            
            return View(record);
        }

        //POST: Tablets/Edit/5
        [HttpPost]
        public ActionResult Edit(Tablet tab,string id)
        {
            try
            {
                // TODO: Add update logic here
                if (id != null)
                {
                    //update
                    tab.TB_ID = Convert.ToInt32(id);
                    db.Entry(tab).State = System.Data.Entity.EntityState.Modified;
                }
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Tablets/Delete/5
        public ActionResult Delete()
        {
            string tab_id = Request.RequestContext.RouteData.Values["id"].ToString();
            Tablet del_tab = new Tablet();
            del_tab.TB_ID = Convert.ToInt32(tab_id);
            db.Entry(del_tab).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
            return RedirectToAction("Index");
           
        }

        
    }
}
