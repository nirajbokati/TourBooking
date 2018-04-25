using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using tour.Models;
namespace tour.Controllers
{
    public class UserController : Controller
    {
        private TourBookingEntities2 _tour = new TourBookingEntities2();

        // GET: User
        public ActionResult DashBoard()
        {
            return View();
        }
        public ActionResult Booking()
        {
            BookingModel p = new BookingModel();
            p.tblBookings = _tour.DbBookingSelect(User.Identity.Name).Select(d => new tblBooking()
            {
                BookingId=d.BookingId,
                TourId=d.TourId
            }).ToList();
            p.tblPackages = _tour.DbPackageSelect().Select(d => new tblPackage()
            {
                Tour_Name = d.Tour_Name,
                Tour_ID = d.Tour_ID,
                Package_Image = d.Package_Image,
                Packagedetails = d.Packagedetails,
                StartDate = d.StartDate,
                EndDate = d.EndDate,
                Price = d.Price,
                Status = d.Status,
                OfferInclude = d.OfferInclude,
                OfferExclude = d.OfferExclude
            }).ToList();
            return View(p);
        }

        public ActionResult UserDashBoard()
        {
            return View();
        }

        public ActionResult EditProfile()
        {
            return View();
        }

        public ActionResult ChangePassword()
        {
            return View();
        }

        public ActionResult Overview()
        {
            return View();
        }
    }
}