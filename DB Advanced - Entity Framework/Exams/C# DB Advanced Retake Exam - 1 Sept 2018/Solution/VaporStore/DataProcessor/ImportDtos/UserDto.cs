using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace VaporStore.DataProcessor.ImportDtos
{
    //"FullName": "Lorrie Silbert",
    //"Username": "lsilbert",
    //"Email": "lsilbert@yahoo.com",
    //"Age": 33,

    public class UserDto
    {
        [Required]
        [RegularExpression("^([A-Z][A-Za-z]*) {1}([A-Z][A-Za-z]*)$")]
        public string FullName { get; set; }

        [Required]
        [MinLength(3)]
        [MaxLength(20)]
        public string Username { get; set; }

        [Required]
        public string Email { get; set; }

        [Required]
        [Range(3, 103)]
        public int Age { get; set; }

        public CardDto[] Cards { get; set; }
    }
}
