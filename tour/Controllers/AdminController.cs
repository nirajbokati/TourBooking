using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using tour.Models;
namespace tour.Controllers
{
    public class AdminController : Controller
    {

        TourBookingEntities2 tour = new TourBookingEntities2();
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Index(tblPackage pac, HttpPostedFileBase file)
        {
            if (file != null)
            {
                string ImageName = System.IO.Path.GetFileName(file.FileName);
                string physicalPath = Server.MapPath("~/Content/Images/" + ImageName);
                file.SaveAs(physicalPath);
                pac.Package_Image = ImageName;
            }
            tour.tblPackages.Add(pac);
            tour.SaveChanges();
            return RedirectToAction("packagelist");
        }
        public ActionResult packagelist()
        {
           
            return View(tour.tblPackages.ToList());
        }
        public ActionResult bookinglist()
        {

            return View(tour.tblBookings.ToList());
        }
        public ActionResult Delete(int id)
        {
           var a= tour.tblPackages.Find(id);
            tour.tblPackages.Remove(a);
            tour.SaveChanges();
            return RedirectToAction("packagelist");
        }
    }
}