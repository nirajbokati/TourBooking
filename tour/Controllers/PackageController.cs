using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using tour.Models;
namespace tour.Controllers
{
    [Authorize]
    public class PackageController : HomeController
    {
        private TourBookingEntities2 _tour = new TourBookingEntities2();

        // GET: Package
        public ActionResult List()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Details(int tourId)
        {
             PackageModel p = new PackageModel();
            p.tblPackages = _tour.DbPackageSelectPac(tourId).Select(d => new tblPackage()
            {
                Tour_Name = d.Tour_Name,
                Tour_ID = d.Tour_ID,
                Package_Image = d.Package_Image,
                 Packagedetails = d.Packagedetails,
                StartDate = d.StartDate,
                EndDate = d.EndDate,
                Price=d.Price,
                Status=d.Status,
                OfferInclude=d.OfferInclude,
                OfferExclude=d.OfferExclude
            }).ToList();
            p.tblDayActivity = _tour.DbDayActivitySelectPac(tourId).Select(m => new tblDayActivity()
            {
                DayID = m.DayID,
                Tour_ID = m.Tour_ID,
                DayTitle = m.DayTitle,
                Description = m.Description
            }).ToList();
            p.tblGallery = _tour.DbGallerySelectPac(tourId).Select(n => new tblGallery()
            {
                Image_ID=n.Image_ID, 
                Tour_ID=n.Tour_ID,
                Description=n.Description,
                Extra=n.Extra
            }).ToList();
            p.tblReview = _tour.DbReviewSelectPac(tourId).Select(n => new tblReview()
            {
                 Review= n.Review,
                Tour_ID = n.Tour_ID,
                UserName = n.UserName,
                Extra = n.Extra
            }).ToList();
           
            
            return View(p);
        }
        [HttpPost]
        public ActionResult Details(PackageModel booking)
        {

            booking.tblBooking.UserName = User.Identity.Name;
                _tour.tblBookings.Add(booking.tblBooking);
                _tour.SaveChanges();
            
                return RedirectToAction("List");
          

        }
    }
}