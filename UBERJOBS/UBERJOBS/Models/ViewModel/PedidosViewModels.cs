using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace UBERJOBS.Models.ViewModel
{
    public class UserViewModel
    {
        [Required]
        [EmailAddress]
        [StringLength(100, ErrorMessage = "El {0} debe de tener al menos {1} caracter ", MinimumLength = 1)]
        [Display(Name = "Correo Electronico")]
        public string correo { get; set; }
        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string password { get; set; }
        

        
    }

}