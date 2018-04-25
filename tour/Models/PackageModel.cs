using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace tour.Models
{
    public class PackageModel
    {
        public IEnumerable<tblPackage> tblPackages { get; set; }
        public IEnumerable<tblGallery> tblGallery { get; set; }
        public IEnumerable<tblDayActivity> tblDayActivity { get; set; }
        public IEnumerable<tblReview> tblReview { get; set; }
        //public tblUser tblUser { get; set; }
        public tblBooking tblBooking { get; set; }
    }
}