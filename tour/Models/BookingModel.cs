using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace tour.Models
{
    public class BookingModel
    {
        public IEnumerable<tblPackage> tblPackages { get; set; }
        public IEnumerable<tblBooking> tblBookings { get; set; }
    }
}