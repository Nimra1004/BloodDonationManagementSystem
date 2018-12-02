﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BloodDonationManagementSystem.Models
{
    public class DonorViewModel
    { 
        //public int R_ID { get; set; }
        //public string UserId { get; set; }
        public string R_Email { get; set; }
        public string R_Name { get; set; }
        public string R_Gender { get; set; }
        public string R_BloodGroup { get; set; }
        public int R_Contact { get; set; }
        public DateTime R_Dateofbirth { get; set; }
        public string R_City { get; set; }
        public string R_Address { get; set; }
        public System.DateTime R_AddedOn { get; set; }
        public string R_Password { get; set; }


        public static IEnumerable<SelectListItem> GetGenderList()
        {
            IList<SelectListItem> items = new List<SelectListItem>
            {
                new  SelectListItem{Text = "Male", Value = "Male" },
                new  SelectListItem{Text = "Female", Value = "Female" },
            };
            return items;
        }
        public static IEnumerable<SelectListItem> BloodGroupList()
        {
            IList<SelectListItem> items = new List<SelectListItem>
            {
                new  SelectListItem{Text = "A+", Value = "A+" },
                new  SelectListItem{Text = "A-", Value = "A-" },
                new  SelectListItem{Text = "B+", Value = "B+" },
                new  SelectListItem{Text = "B-", Value = "B-" },
                new  SelectListItem{Text = "AB+", Value = "AB+" },
                new  SelectListItem{Text = "AB-", Value = "AB-" },
                new  SelectListItem{Text = "O+", Value = "O+" },
                new  SelectListItem{Text = "O-", Value = "O-" },
            };
            return items;
        }
    }
}