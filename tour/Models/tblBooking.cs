//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace tour.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblBooking
    {
        public int BookingId { get; set; }
        public int TourId { get; set; }
        public string UserName { get; set; }
        public string Contact { get; set; }
        public string Email { get; set; }
        public string Remark { get; set; }
        public string DetailInfo { get; set; }
    }
}
