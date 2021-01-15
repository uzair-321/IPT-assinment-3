using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pharmscy_Management.Models;
namespace Pharmscy_Management.Controllers
{
    public class AdminController : Controller
    {
        pharmacyEntities1 db = new pharmacyEntities1();
        // GET: Admin
        public ActionResult Admin_Home()
        {
            return View();
        }



        public ActionResult Admin_SignIn()
        {
            return View();
        }
        
        [HttpPost]
        public ActionResult Admin_SignIn(Admin admintbl)
        {
            var user = db.Admins.FirstOrDefault(x => x.admin_Email == admintbl.admin_Email && x.admin_Password == admintbl.admin_Password);
            if (user != null)
            {
                return RedirectToAction("Admin_Home");
            }
            ViewBag.Error = "Invalid Login";
            return View();
        }

      

        public ActionResult Admin_Signup()
        {
            return View();
        }
        [HttpPost]

        public ActionResult Admin_Signup(Admin ad)
        {
            db.Entry(ad).State = System.Data.Entity.EntityState.Added;
            db.SaveChanges();
            ViewBag.message = "You're Registered";
            return RedirectToAction("Admin_SignIn");
            
        }

        public ActionResult Qoute()
        {
            return View(db.Qoute_Us.ToList());
        }


        public ActionResult Contact()
        {
            return View(db.contacts.ToList());
        }

        public ActionResult career()
        {
            return View(db.careers.ToList());
        }

    }
            
}