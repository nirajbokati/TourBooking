using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using tour.Models;
namespace tour.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {

        private TourBookingEntities2 _tour = new TourBookingEntities2();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult _package()
        {
            var data = _tour.DbPackageSelect().Select(d => new tblPackage()
            {
                Tour_Name = d.Tour_Name,
                Tour_ID = d.Tour_ID,
                Package_Image=d.Package_Image
            }).ToList();
            return PartialView("_package", data);
        }
        
        [Authorize(Roles = "1")]
        public ActionResult About()
        {
            ViewBag.Message = User.Identity.Name;

            return View(ViewBag.Message);
        }
        public ActionResult ag()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }


        public ActionResult Destination()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Register()
        {
            ViewBag.Messafe = "Registration page";
            return View();
        }          

    }
}