using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pharmscy_Management.Models;
namespace Pharmscy_Management.Controllers
{
    public class HomeController : Controller
    {
        pharmacyEntities1 db = new pharmacyEntities1();

        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult User_Registration()
        {
            return View();
        }
        [HttpPost]

        public ActionResult User_Registration(Candidate user_cand)
        {
            
            db.Entry(user_cand).State = System.Data.Entity.EntityState.Added;
            db.SaveChanges();
            ViewBag.message = "You're Registered";
            return RedirectToAction("user_LogIn");
            
        }

        public ActionResult user_LogIn()
        {
            return View();
        }

        [HttpPost]
        public ActionResult user_LogIn(Candidate candid)
        {
            var user = db.Candidates.FirstOrDefault(x => x.User_Email == candid.User_Email && x.User_Password == candid.User_Password);
            if (user != null)
            {
                return RedirectToAction("resume");
            }
            ViewBag.Error = "Invalid Login";
            return View();
        }

        public ActionResult Quote_Us()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Quote_Us(Qoute_Us msg)
        {
            
            db.Entry(msg).State = System.Data.Entity.EntityState.Added;
            db.SaveChanges();
            ViewBag.message = "Thank You";
            return View();
        }

        public ActionResult Contact_Us()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Contact_Us(contact cn)
        {

            db.Entry(cn).State = System.Data.Entity.EntityState.Added;
            db.SaveChanges();
            ViewBag.message = "Thank You";
            return View();
        }

        public ActionResult Career()
        {
            return View();
        }

        public ActionResult resume()
        {
            return View();
        }
        [HttpPost]
        public ActionResult resume(career cv,HttpPostedFileBase uploadcv)
        {
            try
            {
                // TODO: Add insert logic here
                if (uploadcv != null)
                {
                    string filename = System.IO.Path.GetFileName(uploadcv.FileName);
                    uploadcv.SaveAs(Server.MapPath("~/Resumes/" + filename));
                    cv.resume = filename;

                }

                db.careers.Add(cv);
                db.SaveChanges();
                ViewBag.message = "Thank You";
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }

            //string filename = System.IO.Path.GetFileName(uploadcv.FileName);
            //uploadcv.SaveAs(Server.MapPath("~/Resumes/" + filename));
            //cv.resume = filename;
            //db.Entry(cv).State = System.Data.Entity.EntityState.Added;
            //db.SaveChanges();
            //ViewBag.message = "Thank You";
            //return View();
        }

        public ActionResult AboutUs()
        {
            return View();
        }

        //*************PRODUCTS*****************//

        public ActionResult capsules ()
        {
            return View();
        }

        public ActionResult Tablet()
        {

            //return View(db.Tablets.Where(x => x.TB_ID == id).FirstOrDefault());
            return View();
        }

        public ActionResult Liquid_fillings()
        {
            return View();
        }
    }
}